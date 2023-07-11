const departureInput = document.getElementById("departure")
const destinationInput = document.getElementById("destination")
const budgetInput = document.getElementById("budget")
const submitBtn = document.getElementById("btn")

function checkFields() {
    if (departureInput.value === '' || destinationInput.value === '' || budgetInput.value === '') {
        submitBtn.disabled = true;
    } else {
        submitBtn.disabled = false;
    }
  }

departureInput.addEventListener('change', checkFields);
destinationInput.addEventListener('change', checkFields);
budgetInput.addEventListener('change', checkFields);

checkFields();