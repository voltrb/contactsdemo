class Contact < Volt::Model
  validate :_name, length: 5
  validate :_email, length: 5
  validate :_address, length: 10
end