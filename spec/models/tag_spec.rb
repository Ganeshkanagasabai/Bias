require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:color_code) }
  it { should have_and_belong_to_many(:items) }
  it 'is not valid' do
    tag = FactoryBot.build(:tag)
    tag.name =nil
    expect(tag).to_not be_valid
  end
  it do
    should have_db_column(:color_code).of_type(:string)
  end 
end
