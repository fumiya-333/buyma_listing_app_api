FactoryBot.define do
    factory :m_user do
        sequence(:user_id) { |n| "#{n}" }
        sequence(:name) { |n| "test#{n}" }
        sequence(:email) { |n| "test#{n}@example.com" }
        password { 'test' }
        kb_be_in_change { 0 }
        del_flg { 0 }
    end
end
