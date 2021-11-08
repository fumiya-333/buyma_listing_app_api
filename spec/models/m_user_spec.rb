require 'rails_helper'

RSpec.describe MUser, type: :model do
    it "is valid with a name, email and password" do
        mUser = build(:m_user)
        expect(mUser).to clear
    end

end
