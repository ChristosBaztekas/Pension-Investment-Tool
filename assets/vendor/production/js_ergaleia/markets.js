const amount = 600;
const amount_selected = document.getElementById('amount');
amount_selected.value = amount;
amount_selected.addEventListener(
    'keyup', (e) => {
        if (e.key === 'Enter') {
            cards_of_markets
                .forEach(cal);
        }
    }
);


addEventListener('keydown', (e) => {
    if (e.key === 'Enter') {
        if (e.target.id === 'amount') {
            cards_of_markets
                .forEach(cal);
            $("#amount").blur();
        } else {
            $("#amount").focus();
        }
    }
});

const cards_of_markets = document.querySelectorAll(".card-title");
cards_of_markets
    .forEach(cal);

function cal(el) {
    const belongs = el.textContent;
    const parent = el.parentElement.children[1];
    for (const market in markets) {
        if (markets[market].name === belongs) {
            let index;
            markets[market].yearsLabels.forEach(
                (element, index1) => {
                    const year1 = element.slice(4);
                    if (year1 === '00') {
                        index = index1;
                    }
                }
            );

            const final = markets[market].performances
                .filter((element, index1) => {
                    return index1 >= index - 1; //years that from 99 (in reduce 99 is not taken valid)
                })
                .reduce((total, element, index) => {
                    if (index === 1) { //2000 year
                        return amount_selected.value;
                    }
                    return ((total * (1 + (element / 100))) + amount_selected.value);
                });
            const num_nic_format = numberWithCommas(Math.trunc(final));
            const string = `<p class="card-text">Σύνολο Επένδυσης <b>${num_nic_format}€</b></p>`;
            $(parent).empty();
            $(parent).append(string);
            break;
        }
    }
};
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

