require 'faker'
10.times do
 like = Like.create!(
   type: Faker::Boolean.boolean
)  
end
puts"add ok!!"
