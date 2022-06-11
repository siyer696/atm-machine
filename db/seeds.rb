# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do |i|
    puts "Creating Account #{1}"
    Account.create(
        name: "Account #{i}",
        account_type: "CURRENT",
        balance: i
    )
end

Account.all.each do |account|
    account.transacs.create(transaction_type: "CREDIT", amount: 10)
    account.transacs.create(transaction_type: "DEBIT", amount: 10)
end
