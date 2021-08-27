class User < ApplicationRecord
    #外部キー
    has_many :microposts
    #バリデーション
    validates :name, presence: true
    validates :email, presence: true
end
