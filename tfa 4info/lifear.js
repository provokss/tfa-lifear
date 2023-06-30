/* debut 1er popup */
function openForm() {
  document.getElementById("popupForm").style.display = "block";
  document.getElementById("overlay").style.display = "block";
}
function closeForm() {
  document.getElementById("popupForm").style.display = "none";
  document.getElementById("overlay").style.display = "none";
}
//fin 1er popup
//debut 2em popup
function openConfirmation(userId) {
  var confirmationPopup = document.querySelector("#confirmation-" + userId);
  if (confirmationPopup) {
    confirmationPopup.style.display = "block";
  }
}
function closeConfirmation(userId) {
  var confirmationPopup = document.querySelector("#confirmation-" + userId);
  if (confirmationPopup) {
    confirmationPopup.style.display = "none";
  }
}
// fonction pour soumettre le formulaire d'ajout d'utilisateur
function addUser() {
  document.querySelector("form").submit();
}
//fin 2em popup
//debut 3em popup
function OpenConfirmation() {
  var confirmationPopup = document.getElementById("confirmation-popup");
  if (confirmationPopup) {
    confirmationPopup.style.display = "block";
  }
}
function CloseConfirmation() {
  var confirmationPopup = document.querySelector("#confirmation-popup");
  if (confirmationPopup) {
    confirmationPopup.style.display = "none";
}
// fin 3em popup
// Pour le span cacher
}
function cacher() {
  alert("Vous avez trouvé le bouton ? Comment ? Quoi ? Impossible ! Je suis trop bête !");
  window.location.href = "index.php";
}
