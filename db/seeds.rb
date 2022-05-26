@items=Item.all
if @items!=nil
    Tag.destroy_all
    @items.each do |item|
        t=rand(1..4)
        c=0
        t.times do
           
            dummy=rand(1..5)  
             k=dummy 
            if c==k  
               break
            else        
            item.tags.create!([{
            name:Faker::Name.name,
            color_code:k

        }])
            end
        # item.tags.color_code.uniq
        end
    end
    p "created #{Tag.count} tags"

    @items = Item.all

    if Item.count%2==0 
        @total_items=@items
    else
        @total_items=[]
        index=0
    
        for i in @items do
            finder=index+1
            #binding.pry
            if finder < @items.count
                @items_odd=Item.find(finder)   
                @total_items << @items_odd  
                index=index+1
            end
        end
    end
    iteration=0
    for i in @total_items  do
    # binding.pry
        if ((@total_items.count)/2) > iteration
            item=2*iteration
            @items1=Item.find(item+1)
            @items2=Item.find(item+2)
    # binding.pry
            @items2.tags.destroy_all
            @items2.tags << @items1.tags   
        else 
            p "concaded succesully"
        end
        iteration=iteration+1    
    end
else
    p "create Item first"
end

