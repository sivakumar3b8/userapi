require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation test" do 
    it 'ensure first_name presence ' do 
      user = User.new(last_name: "last", email: "sample@gmail.com").save
      expect(user).to  eq(false)
    end

    it 'ensure last_name presence ' do 
      user = User.new(first_name: "first", email: "sample@gmail.com").save
      expect(user).to eq(false)
    end
    
    it 'ensure email presence ' do 
      user = User.new(last_name: "last", first_name: "first").save
      expect(user).to eq(false)
    end

    it 'should save successfully ' do 
      user = User.new(first_name: "first", last_name: "last", email: "sivakumar3b8@gmail.com").save
      expect(user).to eq(true)
    end
  end

end