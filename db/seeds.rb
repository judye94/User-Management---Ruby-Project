User.create!(first_name:  "Judith",
             last_name: "Ehiguese,
             email: "judye94@outlook.com",
             password:              "julieto94",
             password_confirmation: "julieto94",
             admin: true )


99.times do |n|
  first_name  = Faker::Name.first_name
  last_name  = Faker::Name.last_name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(first_name:  first_name,
               last_name:  last_name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
              activated_at: Time.zone.now)
end