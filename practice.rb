# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
index = 0
benbalance = 0
brianbalance = 0
evanbalance = 0
anthonybalance = 0

loop do
  if index == blockchain.size
    break
  end

if blockchain[index]["from_user"]=="nil"
  benbalance = 0
  brianbalance = 0
  evanbalance = 0
  anthonybalance = 0
elsif blockchain[index]["from_user"]=="ben"
  benbalance = benbalance - blockchain [index]["amount"]
elsif blockchain[index]["from_user"]=="brian"
  brianbalance = brianbalance - blockchain [index]["amount"]
elsif blockchain[index]["from_user"]=="evan"
  evanbalance = evanbalance - blockchain [index]["amount"]
else blockchain[index]["from_user"]=="anthony"
  anthonybalance = anthonybalance - blockchain [index]["amount"]
end

if blockchain[index]["to_user"]=="ben"
  benbalance = blockchain [index]["amount"] + benbalance
elsif blockchain[index]["to_user"]=="brian"
  brianbalance = blockchain [index]["amount"] + brianbalance
elsif blockchain[index]["to_user"]=="evan"
  evanbalance = blockchain [index]["amount"] + evanbalance
else blockchain[index]["to_user"]=="anthony"
  anthonybalance = blockchain [index]["amount"] + anthonybalance
end
index = index +1
end

puts benbalance 
puts brianbalance 
puts evanbalance 
puts anthonybalance 
