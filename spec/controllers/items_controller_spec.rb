require 'rails_helper'



RSpec.describe "Item-Request", :type => :request do
  describe "GET index" do
    it "has a 200 status code" do
      get '/items'
      expect(response.status).to eq(200)
    end
  end



  describe "POST /create" do
      
    it "creates a new item" do
        expect {
        post '/items', params: {item: { name:"ganz",description:'kmu',image:"https://via.placeholder.com/150/0000FF/FFFFFF/?text=Digital.com",example:'chennai'} }
        }.to change{
        Item.count
      }.by(1)
    end
  end

    

  describe "GET show" do
    it 'show the current item' do
      item = Item.create!(name:"ganz",description:'kmu',image:"https://via.placeholder.com/150/0000FF/FFFFFF/?text=Digital.com",example:'chennai')
      item.save
      get"/items/#{item.id}"
          # expect(JSON.parse(response.body)['name']).to eq('ganz')
          # binding.pry
          # expect(response.body[name]).to eq('ganz')
      expect(response).to have_http_status(:ok)
    end
  end


  describe 'PATCH/item:id' do
    it 'updates the item' do
      # binding.pry
      item = Item.create!(name:"ganz",description:'kmu',image:"https://via.placeholder.com/150/0000FF/FFFFFF/?text=Digital.com",example:'chennai')
      patch "/items/#{item.id}", params: { item: { name: 'ganesh',description:'kmu',image:"https://via.placeholder.com/150/0000FF/FFFFFF/?text=Digital.com",example:'chennai' } }
      item.reload
      
      expect(response).to redirect_to("/items")
      
    end
  end
  
  describe 'DELETE/item:id' do
    it ' deletes the post'do
      item =  Item.create(name:"ganz",description:'kmu',image:"https://via.placeholder.com/150/0000FF/FFFFFF/?text=Digital.com",example:'chennai')
      expect {
        delete "/items/#{item.id}"}.to change{
      Item.count
      }.by(-1)
    end
  end




end  
RSpec.describe ItemsController, type: :controller do
  describe 'GET #index' do
    before { get :index }

  it { should render_template('index') }
  end
  context "valid routes" do 
    it { should route(:get, '/items').to(action: :index) }
    it { should route(:get, '/items/1').to(action: :show, id: 1) }
    it { should route(:post, '/items').to(action: :create) }
    it { should route(:patch, '/items/1').to(action: :update,id: 1) }
  end
  context "invalid routes" do
    it { should_not  route(:get, '/items').to(action: :create) }
    it { should_not  route(:patch, '/items/1').to(action: :update,id: 2) }
    
  end

end