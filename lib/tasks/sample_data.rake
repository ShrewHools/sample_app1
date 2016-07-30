namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "vlad",
                         email: "vladyukha@yandex.ru",
                         password: "6366601",
                         password_confirmation: "6366601",
                         admin: true)
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
