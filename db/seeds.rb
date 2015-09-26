# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
accounts = Account.create([
  { name: 'General Savings' },
  { name: 'Financial Aid' },
  { name: 'Travel' },
  { name: 'Emergency Fund' },
])

Transaction.create([
  { name: 'Applebees', account: accounts.first },
  { name: 'Transfer to Vanguard', account: accounts[1] },
  { name: 'Rent', account: accounts[2] },
  { name: 'House Payment',account: accounts[3] },
])