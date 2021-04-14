# メインのサンプルユーザーを1人作成する
User.create!(name:  "Asasho",
             email: "cy.asano4@gmail.com",
             password:              "TeamLink",
             password_confirmation: "TeamLink",
             admin: true)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end