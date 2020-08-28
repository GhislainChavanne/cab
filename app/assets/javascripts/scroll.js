const chevron = document.getElementById("chevron");
const presentation = document.getElementById("presentation");

if(chevron) {
  chevron.addEventListener("click", (event) => {
    presentation.scrollIntoView( {behavior: "smooth"} );
  });
};
