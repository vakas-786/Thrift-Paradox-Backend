Transaction.destroy_all 
Account.destroy_all 
Prize.destroy_all
User.destroy_all

User.create(username: 'testing', password: 'password', firstname: 'Cyrus', lastname: 'Khan', token: 0)

Account.create(saving: 0, user_id: User.all.first.id)

Transaction.create(item: "Cash", type_trans: "Income", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Water Bill", type_trans: "Expense", category: "Bills/Utilities", amount: 90.46, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Phone Bill", type_trans: "Expense", category: "Bills/Utilities", amount: 80.47, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cable Bill", type_trans: "Expense", category: "Bills/Utilities", amount: 70.25, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Healthcare", type_trans: "Expense", category: "Bills/Utilities", amount: 91.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Car Repair", type_trans: "Expense", category: "Bills/Utilities", amount: 122.34, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "PayCheck", type_trans: "Income", category: "Salary", amount: 800.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "PayCheck", type_trans: "Income", category: "Salary", amount: 800.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "PayCheck", type_trans: "Income", category: "Salary", amount: 800.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "PayCheck", type_trans: "Income", category: "Salary", amount: 800.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "PayCheck", type_trans: "Income", category: "Salary", amount: 800.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Tomatoes", type_trans: "Expense", category: "Groceries", amount: 14.56, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Watermelons", type_trans: "Expense", category: "Groceries", amount: 24.75, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Farmers Market", type_trans: "Expense", category: "Groceries", amount: 50.34, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Trader Joes", type_trans: "Expense", category: "Groceries", amount: 14.75, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Macys", type_trans: "Expense", category: "Shopping", amount: 46.98, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "JCPenny", type_trans: "Expense", category: "Shopping", amount: 120.45, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Marshalls", type_trans: "Expense", category: "Shopping", amount: 55.67, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Bowling", type_trans: "Expense", category: "Recreation", amount: 12.35, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Mini Golf", type_trans: "Expense", category: "Recreation", amount: 30.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Donation", type_trans: "Expense", category: "Misc", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)


Prize.create(image_url: 'https://i.imgur.com/JyHrUVb.png' , value: 300.00, user_id: User.all.first.id, name: "Zombie", status: false)
Prize.create(image_url: 'https://i.imgur.com/j1URdpA.png' , value: 450.00, user_id: User.all.first.id,  name: "Jelly", status: false)
Prize.create(image_url: 'https://i.imgur.com/OHythEC.png' , value: 800.00, user_id: User.all.first.id, name: "Robot", status: false)
Prize.create(image_url: 'https://i.imgur.com/ibOpny9.png' , value: 375.00, user_id: User.all.first.id, name: "Cat", status: false)
Prize.create(image_url: 'https://i.imgur.com/Dsfbaej.png' , value: 375.00, user_id: User.all.first.id, name: "Dog", status: false)
Prize.create(image_url: 'https://i.imgur.com/lnGEpMY.png' , value: 625.00, user_id: User.all.first.id, name: "Plane", status: false)
Prize.create(image_url: 'https://i.imgur.com/p2ULS7A.png' , value: 740.00, user_id: User.all.first.id, name: "Dinosaur", status: false)


