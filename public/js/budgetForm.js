const budgetSlider = document.getElementById('budget');
const budgetValue = document.getElementById('budget-value')

budgetSlider.addEventListener('input', () => {
  budgetValue.textContent = `$${budgetSlider.value}`;
});
