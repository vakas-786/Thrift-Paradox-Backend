Transaction.destroy_all 
Account.destroy_all 

Account.create(income: 40, expense: 20, balance: 100, investments: 300, saving: 300, totalSavings: 20, user_id: User.all.first.id)

Transaction.create(item: "cash", type_trans: "Income", category: "Auto", amount: 20.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)

# Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all.sample.id, category_name: Category.all.sample.name, amount: rand(-500..500).to_f, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), description: Faker::Commerce.product_name, trans_type: "transtype")