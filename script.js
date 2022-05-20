function test() {
  var st = document.getElementById("station").value;
  var sa = document.getElementById("saison").value;
  if (st == 0) {
    alert("choisir station");
    return false;
  }
  if (sa == 0) {
    alert("choisir saison");
    return false;
  }
  if (annee() == false) {
    alert("choisire annee");
    return false;
  }
  var temp = document.getElementById("temp").value;
  if (parseInt(temp) < -5 || parseInt(temp) > 50 || temp.length == 0) {
    alert("verifier tempetature");
    return false;
  }
  var P = document.getElementById("P").value;
  if (parseInt(P) < 0 || P.length == 0) {
    alert("verifier pluie");
    return false;
  }
}
function test2() {
  var st = document.getElementById("station").value;
  if (st == 0) {
    alert("choisir station");
    return false;
  }
  if (clm() == false) {
    alert("choisire donne climatique");
    return false;
  }
}
function annee() {
  var btns = document.querySelectorAll("#annee");
  if (btns[0].checked || btns[1].checked) {
    return true;
  }
  return false;
}
function clm() {
  var btns = document.querySelectorAll("#dn");
  if (btns[0].checked || btns[1].checked) {
    return true;
  }
  return false;
}
