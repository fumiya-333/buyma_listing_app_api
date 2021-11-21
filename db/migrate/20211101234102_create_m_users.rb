class CreateMUsers < ActiveRecord::Migration[6.1]
    def change
        create_table :m_users do |t|
            t.string :name
            t.string :email
            t.string :password_digest
            t.string :kb_be_in_change
            t.integer :del_flg
            t.datetime :created_at
            t.datetime :updated_at
        end
    end
end
