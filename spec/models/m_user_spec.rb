require 'rails_helper'

RSpec.describe MUser, type: :model do

    before do 
        @m_user = build(:m_user)
    end

    describe "バリデーション" do
        it "ユーザーID、ユーザー名、メールアドレス、パスワード、担当区分、削除フラグがある場合、有効であること" do
            expect(@m_user.valid?).to eq(true)
        end

        it "ユーザーIDが入っていない場合、無効であること" do
            @m_user.user_id = ''
            expect(@m_user.valid?).to eq(false)
        end

        it "ユーザー名が入っていない場合、無効であること" do
            @m_user.name = ''
            expect(@m_user.valid?).to eq(false)
        end

        it "メールアドレスが入っていない場合、無効であること" do
            @m_user.email = ''
            expect(@m_user.valid?).to eq(false)
        end

        it "パスワードが入っていない場合、無効であること" do
            @m_user.password_digest = ''
            expect(@m_user.valid?).to eq(false)
        end

        it "担当区分が入っていない場合、無効であること" do
            @m_user.kb_be_in_change = ''
            expect(@m_user.valid?).to eq(false)
        end

        it "削除フラグが入っていない場合、無効であること" do
            @m_user.del_flg = ''
            expect(@m_user.valid?).to eq(false)
        end

        it "ユーザー名の桁数が255桁を超える場合、無効であること" do
            @m_user.name = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
            expect(@m_user.valid?).to eq(false)
        end

        it "メールアドレスの桁数が255桁を超える場合、無効であること" do
            @m_user.email = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com'
            expect(@m_user.valid?).to eq(false)
        end

        it "担当区分の桁数が2桁を超える場合、無効であること" do
            @m_user.kb_be_in_change = 111
            expect(@m_user.valid?).to eq(false)
        end

        it "メールアドレスに@が含まれない場合、無効であること" do
            @m_user.email = 'aaaaaadas'
            expect(@m_user.valid?).to eq(false)
        end

        it "メールアドレスが重複する場合、無効であること" do
            @m_user.email = 'test@gmail.com'
            expect(@m_user.valid?).to eq(false)
        end
    end

end
