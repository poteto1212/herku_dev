require 'rails_helper'

users=[
    {'name' => "テストユーザー1", "email" => "test.user1@gmail.com" },
    {'name' => "テストユーザー2", "email" => "test.user2@gmail.com" },
    {'name' => "テストユーザー3", "email" => "test.user3@gmail.com" }
]

    

     
#describeでテストをグループ化
describe "登録したデータが表示される" do
    #contextで条件別
    context 'seedデータが登録されているとき' do
        it 'seedデータ1が正常に表示される' do
            visit '/users/index'
            expect(page).to have_selector 'td',text:"テストユーザー"
        end
    end
    
    
end
