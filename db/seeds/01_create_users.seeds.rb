if User.admin.blank?
  User.create(
    role: :admin,
    email: 'admin@example.com',
    first_name: 'admin',
    last_name: 'admin',
    password: 'Password1',
    password_confirmation: 'Password1'
  )

  puts '✅ | Admin User created:'
  puts '🔑 | email:    admin@example.com'
  puts '🔑 | password: Password1'
  puts '🔥 | -'
  puts

  User.create(
    role: :manager,
    email: 'manager@example.com',
    first_name: 'manager',
    last_name: 'manager',
    password: 'Password1',
    password_confirmation: 'Password1'
  )

  puts '✅ | Manager User created:'
  puts '🔑 | email:    manager@example.com'
  puts '🔑 | password: Password1'
  puts '🔥 | -'
  puts
end
