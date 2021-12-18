<%
if ( session.getAttribute("consultantObj2021") == null ) {
	request.setAttribute("message", "You are not authorized to access this resource. Please login.");
%>
	<jsp:forward page="login.jsp"/>  
<%}%>


<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Επενδυτικό Προφίλ</title>
  <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/css/popup.css" rel="stylesheet">
  <link rel="icon" href="assets/img/logos/favicon.jpg" sizes="16x16" type="image/png">
  <meta name="theme-color" content="#7952b3">


  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }
    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>



  <link href="assets/css/platform.css" rel="stylesheet">
</head>
<body>
<div class="product">
  <span class="helper"></span>
  <div>
    <div style="display: none" class="popupCloseButton">&times;</div>
    <h4 class="removeLater">Υπολογισμός επενδυτικού προφίλ</h4>
    <p class="removeLater">
      Παρακαλώ περιμένετε!
    </p>
    <div id="mySpinner">
      <div class="d-flex justify-content-center">
        <div class="spinner-border" role="status">
          <span class="sr-only"></span>
        </div>
      </div>
    </div>
    <h4 style="display: none" id="synt">Προφίλ σου είναι <span style="color: red">Συντηρητικό</span>. Επικοινώνησε μαζί μου
      για να βρούμε πως να καλύψουμε τις ανάγκες σου</h4>
    <h4 style="display: none" id="isor">Προφίλ σου είναι <span style="color: red">Ισορροπημένο</span>. Επικοινώνησε μαζί μου
      για να βρούμε πως να καλύψουμε τις ανάγκες σου</h4>
    <h4 style="display: none" id="epi">Προφίλ σου είναι <span style="color: red">Επιθετικό</span>. Επικοινώνησε μαζί μου
      για να βρούμε πως να καλύψουμε τις ανάγκες σου</h4>
  </div>

</div>

<%@include file="header.jsp"%>
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2">Επενδυτικό Προφίλ</h1>
                  <div class="btn-toolbar mb-2 mb-md-0">
                  </div>
        </div>
        <div class="form-check">
          <h3 class="descriptionLabel">Σε ό,τι αφορά στο επενδυτικό μου προφίλ, πιστεύω ότι είμαι:</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="0" name="ans1">Α. Συντηρητικός</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="0" name="ans1">Β. Ισορροπημένος</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="0" name="ans1">Γ. Επιθετικός</label>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">Ο σκοπός για τον οποίο σκέφτομαι να δημιουργήσω/αξιοποιήσω κεφάλαιο είναι:</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="0" name="ans2">Α. Εισόδημα μετά τη συνταξιοδότηση</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="0" name="ans2">Β. Σπουδές παιδιών</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="0" name="ans2">Γ. Άλλη μελλοντική ανάγκη</label>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">1. Η υπό εξέταση συσσώρευση/επένδυση θα πραγματοποιηθεί:</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="2" name="ans3">Α. Εφάπαξ</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="20" name="ans3">Β. Σε τακτικές καταβολές</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans3">Γ. Και οι δύο επιλογές</label>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">2. Ποιός είναι ο χρονικός ορίζοντας της επένδυσής σας;</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans4">Α. Μικρότερος από 10 έτη*</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="5" name="ans4">Β. 10 έως 20 έτη</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans4">Γ. 20 έτη και άνω</label>
          <p>(*) (παρακαλούμε συμβουλευτείτε το Έντυπο Βασικών Πληροφοριών για τη συνιστώμενη διάρκεια διακράτησης)</p>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">3. Τι μέρος της περιουσίας* σας πιστεύετε ότι θα αποτελεί η συγκεκριμένη επένδυση στο χρονικό σημείο που σκοπεύετε να την αξιοποιήσετε; (βάσει της επιλογής σας στην ερώτηση 2)</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans5">Α. Έως 20%</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="5" name="ans5">Β. 20%–40%</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans5">Γ. Πάνω από 40%</label>
          <p>(*) Περιουσία: Τα ρευστοποιήσιμα περιουσιακά στοιχεία (μετρητά, μετοχές, ομόλογα, εκμεταλλεύσιμα ακίνητα) που μπορούν να χρησιμοποιηθούν για την
            εξασφάλιση εισοδήματος.</p>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">4. Ποιά είναι η εξοικείωσή σας με τις αγορές κεφαλαίων;</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans6">A. Έχω ελάχιστη/μηδενική εμπειρία στη διαχείριση επενδύσεων που αφορούν αγορές κεφαλαίων</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans6">Β. Έχω μερική γνώση/εμπειρία σε επενδύσεις που αφορούν αγορές κεφαλαίων
          </label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="20" name="ans6">Γ. Έχω πλήρη εξοικείωση με τέτοιου είδους επενδύσεις</label>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">5. Ο βαθμός του επενδυτικού κινδύνου που έχετε λάβει στο παρελθόν, κατά τη λήψη αντίστοιχων οικονομικών αποφάσεων είναι:</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans7">Α. Υψηλός</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="5" name="ans7">Β. Μέτριος</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans7">Γ. Χαμηλός / Δεν έχω προβεί σε αντίστοιχη οικονομική απόφαση – αποταμίευση ή επένδυση στο παρελθόν</label>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">6. Η συνήθης προσέγγισή σας στη λήψη επενδυτικών αποφάσεων είναι:</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans8">Α. Τολμηρή / Επιθετική</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="5" name="ans8">Β. Μέτρια / Ισορροπημένη</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans8">Γ. Προσεκτική / Συντηρητική</label>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">7. Προτιμάτε μία επένδυση η οποία είναι ασφαλής και μεγαλώνει αργά αλλά σταθερά, έστω και αν αυτό
            σημαίνει χαμηλότερη συνολική απόδοση;</h3>
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans9">Α. Ναι</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans9">Β. Δεν είμαι σίγουρος /η</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans9">Γ. Όχι</label>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">8. Ο παρακάτω πίνακας περιγράφει την τελική αξία της επένδυσης ύψους €100 στο τέλος του χρονικού ορίζοντα της επένδυσης που επιλέξατε. Λαμβάνοντας υπόψη τα παρακάτω τρία σενάρια, σε ποιό Επενδυτικό Χαρτοφυλάκιο πιθανότατα να επενδύατε;</h3>
          <img src="assets/img/ependitiko/epend-1.jpg" style="width:100%;">
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans10">Α. Χαρτοφυλάκιο Α </label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="5" name="ans10">Β. Χαρτοφυλάκιο Β</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans10">Γ. Χαρτοφυλάκιο Γ</label>
        </div>

        <div class="form-check">
          <h3 class="descriptionLabel">9. Ποιό από τα παρακάτω 3 επενδυτικά χαρτοφυλάκια θα επιλέγατε για την επένδυσή σας ύψους €100 λαμβάνοντας υπόψη σας τον τρόπο με τον οποίο θα αντιδρούσατε κατά τη διάρκεια των οποιωνδήποτε διακυμάνσεων στην αξία του χαρτοφυλακίου σας (όπως επισημαίνεται με χρώμα στον παρακάτω πίνακα) αντί να εστιάζετε μόνο στην αξία του χαρτοφυλακίου σας κατά το 10o έτος;;</h3>
          <img src="assets/img/ependitiko/epend-2.jpg" style="width:100%;">
          <label>
            <input type="checkbox" class="form-check-input" value="1" name="ans11">Α. Χαρτοφυλάκιο Α </label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="5" name="ans11">Β. Χαρτοφυλάκιο Β</label><br>
          <label>
            <input type="checkbox" class="form-check-input" value="10" name="ans11">Γ. Χαρτοφυλάκιο Γ</label>
        </div>
      </div>
    </main>
</div>
</div>

</body>
<script src="assets/vendor/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/vendor/feather/feather.min.js"></script>
<script src="assets/js/calculation.js"></script>
</html>