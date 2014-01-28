
Category.create(title: "Apartments")
Category.create(title: "Vehicles")
Category.create(title: "Pets")
Category.create(title: "Electionics")
Category.create(title: "Instruments")

i = 0
5.times do
  i +=1
  10.times do
    Post.create(price: Faker::Number.number(2), email: Faker::Internet.email, name: Faker::Commerce.product_name, description: Faker::Company.bs, category_id: i, key: Faker::Lorem.word)
  end
end
