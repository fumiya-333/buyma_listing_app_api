FactoryBot.define do
    factory :m_user do
        sequence(:name) { |n| "hoge#{n}" }
        sequence(:email) { |n| "hoge#{n}@example.com" }
        password { 'password' }
        kb_be_in_change { 0 }
        del_flg { "0" }
        created_at { Date.today }
        updated_at { Date.today }
    end
end
