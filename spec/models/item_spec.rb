require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:example) }
  it 'is not valid' do
    item = FactoryBot.build(:item)
    item.name=nil
    expect(item). to_not be_valid
  end


  it { should have_and_belong_to_many(:tags) }
  
  it do
    should have_and_belong_to_many(:tags).
    validate(false)
 end
  it do
    should have_db_column(:example).of_type(:text)
    end   
end
