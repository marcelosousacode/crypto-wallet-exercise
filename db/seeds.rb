# Use o rails dev:setup (lib/tasks/dev.rake) 

puts "Cadastrando moedas..."

Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://play.coingoback.com/wp-content/uploads/2021/07/bitcoin.png"
)

Coin.create!(
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhBXawiuNbAOevtBIBji4nn7VbqHk0PYGMxNLp_Lo5kd6LjOwOfxNSaH45dvxwUg5JrpQ&usqp=CAU"
)

Coin.create!(
    description: "Dash",
    acronym: "DASH",
    url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png"
)

puts "Moedas cadastradas com sucesso!"