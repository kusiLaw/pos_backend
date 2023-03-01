require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before :each do
   @user = User.new(name: 'Peter', email: 'peter@gmail.com', password: '12345678')
  end

  context 'User Validation' do
    it 'Must save user successfully' do 
     @user.save
     expect(@user).to be_valid
    end
  end

  context 'User Validation' do
   it 'Must not save user successfully' do 
    @user.password = 'new'
    expect(@user).to_not be_valid
   end
 end


end
