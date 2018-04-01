var oneSqft= 6481;
var costDisplay = document.querySelector("#costDisplay");
var submitButton =document.querySelector("#squareFtSubmit");
var input = document.querySelector("#dwarka");

submitButton.addEventListener("click",function(){
	costDisplay.textContent = 6481*Number(input.value);
})
input.addEventListener("keypress",function(event){
	if (event.which===13) {
	costDisplay.textContent = 6481*Number(this.value);

	}
})