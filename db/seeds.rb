require 'ffaker'

100.times do |i|
  i = User.create({
    name: Faker::BaconIpsum.words(num = 2).join(" "),
    handle: Faker::BaconIpsum.word,
    email: Faker::InternetSE.email,
    age: '28',
    password: 'password',
    password_confirmation: 'password',
    })
  i.tweets.build(content: Faker::BaconIpsum.words(num = 10).join(' ')).save
end 


100.times do |i|
  i = Tweet.create({
    content: Faker::BaconIpsum.words(num = 10).join(" ")
    })
end
