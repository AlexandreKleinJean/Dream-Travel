const destinationInput = document.getElementById("destination")
const budgetInput = document.getElementById("budget")
const submitBtn = document.getElementById("btn")

console.log("Hello")

function checkFields() {
    if (destinationInput.value === '' || budgetInput.value === '') {
        submitBtn.disabled = true;
    } else {
        submitBtn.disabled = false;
    }
  }

destinationInput.addEventListener('change', checkFields);
budgetInput.addEventListener('change', checkFields);

checkFields();