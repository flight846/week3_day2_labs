# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.destroy_all

customer = Customer.new
customer.name = 'Jon'
customer.email = 'jon@email.com'
customer.address = '1 KS Rd'
if customer.save
    puts "Record saved!"
end

customer = Customer.create({
    name: "Gab",
    email: "gab@email.com",
    address: '1 KS Street',
})