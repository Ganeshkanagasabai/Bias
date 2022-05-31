Tag.destroy_all
10.times do
    binding.pry
    # @items=Item.all
    # @items.each do |item| 
Tag.create!([{
   
    name:Faker::Name.name,
    color_code:Faker::Color.color_name,
    # blog_id:rand(Blog.first.id..Blog.last.id)
    item_id: rand(Item.first.id..Item.last.id),
    
    # # name:"Vijay",
    # # color_code:"peach",
    # # item_id: item.id,
         blog_id:1

}])
end
p "created #{Tag.count} tags"


# Item.first.tags >> Item.second.tags