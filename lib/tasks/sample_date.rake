namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "danik",
                 email: "danchik86@inbox.ru",
                 password: "123qaz",
                 password_confirmation: "123qaz")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end