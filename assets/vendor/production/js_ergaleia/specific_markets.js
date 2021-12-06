let open = false;
let oneTimeArrow = false;
addEventListener('keydown', function(e) {
    console.log(e.target, e);
    if (e.target.id === 'number' && e.key === 'Enter') {
        $("#amount").focus();
    }
    if (e.target.id === 'amount' && e.key === 'Enter') {
        $("#markets").focus();
    }
    if (e.target.id === 'markets') {
        if ((e.key === 'ArrowUp' || e.key === 'ArrowDown') && !open) {
            oneTimeArrow = true;
            console.log("HGVG");
            return;
        }
        if (oneTimeArrow && e.key === "Enter") {
            console.log("H!!!!");
            oneTimeArrow = false;
            calculate();
            $("#markets").blur();
            return;
        }
        if (open) {

            console.log("HERE1");
            if (e.key === "Enter") {
                open = false;
                oneTimeArrow = false;
                $("#markets").attr('size', 1);
                calculate();
                $("#markets").blur();
            }

        } else {
            console.log("HERE2");
            if (e.key === "Enter") {
                open = true;
                $("#markets").attr('size', 9);
            }
        }
        return;
    }
    if(e.target.nodeName == "INPUT" || e.target.nodeName == "TEXTAREA" ) return;
    if( e.target.isContentEditable ) return;
    $("#number").focus();
});

const market_selected = document.getElementById('markets');
const year_selected = document.getElementById("number");
const amount_selected = document.getElementById("amount");
//pre default options
$("#number").focus();
market_selected.value = "Nasdaq";
year_selected.value = "1992";
amount_selected.value = "600";

// when market is changed
market_selected.addEventListener(
    'click', () => {
        const market = markets[market_selected.value];
        year_selected.value = market.min;
        year_selected.min = market.min;
    }
);

// when button is clicked to calculate
document.querySelector(".calc")
    .addEventListener("click", () => {
        calculate();
    }
);
function calculate() {
    // all data of the market
    const market = markets[market_selected.value];

    // check values, if wrong replace with initial
    const yearGiven = Number(year_selected.value);
    let initialMoney = Number(amount_selected.value);
    if (!yearGiven || (!(yearGiven >= market.min && yearGiven <= 2000))) {
        year_selected.value = market.min;
    }
    if (!initialMoney || initialMoney < 0) {
        amount_selected.value = "600";
        initialMoney = 600;
    }
    // data of market
    const performances = market.performances;
    const yearsLabels = market.yearsLabels;
    const years_back = Number(year_selected.value) - market.min;

    // string of table(the head part)
    const startStringOfTable =
        '<h2 class="text-center">Αγορά: ' + market.name + '</h2>' +
        '<table class="table table-striped table-sm table-responsive">' +
            '<thead>' +
                '<tr>' +
                    '<th>Ημερομηνία</th>' +
                    '<th>Έτος</th>' +
                    '<th>Μια φορά επένδυση</th>' +
                    '<th>Απόδοση %</th>' +
                    '<th>Συνολικό ποσό</th>' +
                '</tr>' +
            '</thead>' +
            '<tbody>';

    let total_money = initialMoney;
    // first row of table
    let html =
        startStringOfTable +
                '<tr>' +
                    '<td>' + yearsLabels[years_back] + '</td>' +
                    '<td>0</td>' +
                    '<td>' + initialMoney + '</td>' +
                    '<td> - </td>' +
                    '<td>' + total_money + '</td>' +
                '</tr>';

    let no_invest_again = total_money;
    let average = 0;
    const data = [];
    data.push(total_money);
    for (let i = years_back + 1; i < performances.length; i++) {
        average = performances[i] + average;
        total_money = ((total_money * (1 + (performances[i] / 100))) + initialMoney);
        no_invest_again = no_invest_again * (1 + (performances[i] / 100));
        html = html +
            '<tr>' +
                '<td>' + yearsLabels[i] + '</td>' +
                '<td>' + (i - years_back) + '</td>' +
                '<td>' + addCommasToFloat(numberWithCommas(no_invest_again.toFixed(2))) + '</td>' +
                '<td>' + performances[i].toString() + '%</td>' +
                '<td>€'+ addCommasToFloat(numberWithCommas(total_money.toFixed(2))) + '</td>' +
            '</tr>';
        data.push(Number(total_money.toFixed(2)));
    }
    average = average / performances.length;
    html = html + '</tbody></table>';
    const averagePerformance = '<h2 class=""> Μέσος όρος ετήσιας απόδοσης: ' + average.toFixed(2) + '%</h2>';
    const totalAmount = '<h2 class=""> Συνολικό ποσό αποταμίευσης: '
        + addCommasToFloat(numberWithCommas(total_money.toFixed(2))) + '€</h2><br>';
    html =averagePerformance + totalAmount + html;
    // empty table
    $(".numbers").empty();
    $(".numbers").append(html);
    chart('.canvas', yearsLabels.slice(years_back), data, market.name);
}


const chart = (location_of_canvas, labels, numbers, market_name) => {

    //empty canvas
    const idChart = 'myChart';
    $(location_of_canvas).empty();
    $(location_of_canvas).append(`<canvas class="my-4 w-100" id="${idChart}"></canvas>`);
    var ctx = document.getElementById(idChart).getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: market_name,
                data: numbers,
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'black',
                borderWidth: 2
            }]
        },
        options: {
            legend: {
                display: false
            },
            plugins: {
                title: {
                    display: true,
                }
            },
            responsive: false,
            layout: {
                padding: 10
            },
            scales: {
                yAxes: [{
                    display: true,
                    ticks: {
                        max: Math.max(...numbers),    // minimum will be 0, unless there is a lower value.
                        // OR //
                        beginAtZero: true   // minimum value will be 0.
                    }
                }]
            }
        }
    });
};

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

function addCommasToFloat(x) {
    return x.slice(0, -3) + ',' + x.slice(-2);
}