export function formatCurrency(price){
  return Number((price / 100).toFixed(2));
}