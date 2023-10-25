const h1 = document.querySelector("h1");
h1.addEventListener("click", async () => {
  alert("ca marche");
  const response = await fetch("/Yearbook_H2/public/index.php/quote/new");
  const content = await response.text();
  alert(content);
});
// //implémenter le fetch créer une alerte en disant
// const h1 = document.querySelector("h1");

// h1.addEventListener("click", async () => {
//   // une requête pour récupérer le contenu du bloc
//   const response = await fetch("/Yearbook_H2/public/index.php/quote/new");
//   const htmlContent = await response.text();

//   //  élément temporaire pour analyser le HTML
//   const tempElement = document.createElement("div");
//   tempElement.innerHTML = htmlContent;

//   // prendre le contenu HTML et le CSS
//   const blockHTML = tempElement.querySelector(".block-class").innerHTML;
//   const blockStyles = tempElement.querySelector("style").innerText;

//   // mettre le contenu HTML et les styles CSS dans la page d'édition
//   const editor = document.querySelector("#editor");
//   editor.innerHTML = blockHTML;

//   // mettre les styles dans le head de la page
//   const styleElement = document.createElement("style");
//   styleElement.innerHTML = blockStyles;
//   document.head.appendChild(styleElement);
// });
