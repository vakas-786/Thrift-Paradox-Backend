Transaction.destroy_all 
Account.destroy_all 
Prize.destroy_all
User.destroy_all

User.create(username: 'testing', password: 'password', firstname: 'Cyrus', lastname: 'Khan', token: 0)

Account.create(saving: 0, user_id: User.all.first.id)

Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)
Transaction.create(item: "Cash", category: "Salary", amount: 200.00, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), account_id: Account.all.first.id)


Prize.create(image_url: 'https://i.imgur.com/JyHrUVb.png' , value: 300.00, user_id: User.all.first.id, name: "Zombie")
Prize.create(image_url: 'https://i.imgur.com/j1URdpA.png' , value: 450.00, user_id: User.all.first.id,  name: "Jelly")
Prize.create(image_url: 'https://i.imgur.com/OHythEC.png' , value: 800.00, user_id: User.all.first.id, name: "Robot")
Prize.create(image_url: 'https://i.imgur.com/ibOpny9.png' , value: 375.00, user_id: User.all.first.id, name: "Cat")
Prize.create(image_url: 'https://i.imgur.com/Dsfbaej.png' , value: 375.00, user_id: User.all.first.id, name: "Dog")
Prize.create(image_url: 'https://i.imgur.com/lnGEpMY.png' , value: 625.00, user_id: User.all.first.id, name: "Plane")
Prize.create(image_url: 'https://i.imgur.com/p2ULS7A.png' , value: 740.00, user_id: User.all.first.id, name: "Dinosaur")


