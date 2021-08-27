# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


language=['python','ruby','javascript','HTML','Css']


for lung in language do
    Language.create(
    name:lung
    )
end

#サンプルユーザー作成
users=[
    {'name' => "テストユーザー1", "email" => "test.user1@gmail.com" },
    {'name' => "テストユーザー2", "email" => "test.user2@gmail.com" },
    {'name' => "テストユーザー3", "email" => "test.user3@gmail.com" }
]




for user in users do
    User.create(
        name: user['name'],
        email: user["email"]
    )

    micropost = {
        'content' =>"こんにちは" + user['name'] + "です。よろしくお願いします",
        'postuser' => user['name']
    }
    
    Micropost.create(
        content: micropost['content'],
        user_id: User.find_by(name: micropost['postuser']).id
    )


end