const itemPrice = () => {
  const priceInput = document.getElementById("item-price")

  if (!priceInput) return

  priceInput.addEventListener("input", function() {
    const price = priceInput.value

    const fee = Math.floor(price * 0.1)
    const profit = price - fee

    document.getElementById("add-tax-price").innerHTML = fee
    document.getElementById("profit").innerHTML = profit
  })
}

document.addEventListener("turbo:load", itemPrice)
document.addEventListener("turbo:render", itemPrice)