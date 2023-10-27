# db/seeds.rb

# Ensure the User model is defined
class Users < ActiveRecord::Base
end

# Create and save user records manually
User.create!(
  first_name: "John",
  last_name: "Doe",
  phone: "123-456-7890",
  id_or_passport: "JD12345",
  email: "john@example.com"
)

User.create!(
  first_name: "Jane",
  last_name: "Smith",
  phone: "987-654-3210",
  id_or_passport: "JS54321",
  email: "jane@example.com"
)

User.create!(
  first_name: "Alice",
  last_name: "Johnson",
  phone: "555-555-5555",
  id_or_passport: "AJ55555",
  email: "alice@example.com"
)

User.create!(
  first_name: "Bob",
  last_name: "Brown",
  phone: "444-444-4444",
  id_or_passport: "BB44444",
  email: "bob@example.com"
)

User.create!(
  first_name: "Eve",
  last_name: "Williams",
  phone: "777-777-7777",
  id_or_passport: "EW77777",
  email: "eve@example.com"
)
