# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Steve Jobs")
User.create(username: "Reid Hoffman")

Contact.create(name: "Steve Wozniak", company: "Apple", notes: "Code wiz", user_id: 1)
Contact.create(name: "Reed Hastings", company: "Netflix", notes: "Los Gatos tennis", user_id: 1)

Job.create(title: "CEO", company: "Apple", applied: false, user_id: 1)
Job.create(title: "Founder", company: "NeXT Computer", applied: true, user_id: 1)
Job.create(title: "Funder", company: "Pixar", applied: true, user_id: 1)


# #   create_table "contacts", force: :cascade do |t|
# t.string "name"
# t.string "company"
# t.text "notes"
# t.bigint "user_id"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.index ["user_id"], name: "index_contacts_on_user_id"
# end

# create_table "jobs", force: :cascade do |t|
# t.string "title"
# t.string "company"
# t.date "due"
# t.boolean "applied"
# t.string "url"
# t.bigint "user_id"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.index ["user_id"], name: "index_jobs_on_user_id"
# end