50.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  birthday = Faker::Date.birthday
  image = Faker::Avatar.image
  nickname = Faker::Artist.name
  password = "password"
  User.create!(name: name,
               nickname: nickname,
               email: email,
               birthday: birthday,
               image: image,
               password: password,
               password_confirmation: password
               )
end
