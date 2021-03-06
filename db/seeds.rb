# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

User.create(username: "Jane Doe")
# User.create(username: "Reid Hoffman")

Contact.create(name: "Richard Hendricks", company: "Pied Piper", notes: "Tabs not spaces", user_id: 1)
Contact.create(name: "Gavin Belson", company: "Hooli", notes: "Is he in Tibet?", user_id: 1)
Contact.create(name: "Lori Bream", company: "Raviga", notes: "Managing Partner", user_id: 1)

# Job.create(title: "CEO", company: "Apple", applied: false, user_id: 1)
# Job.create(title: "Founder", company: "NeXT Computer", applied: true, user_id: 1)
# Job.create(title: "Funder", company: "Pixar", applied: true, user_id: 1)

20.times do 
    Contact.create(name: Faker::Name.name, company: Faker::Company.name, notes: Faker::Company.catch_phrase, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number, user_id: 1)
    Job.create(title: Faker::Company.profession, company: Faker::Company.name, applied: false, user_id: 1)
end 