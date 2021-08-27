class Micropost < ApplicationRecord
    #継承させる
    belongs_to :user
    #バリデーション
    validates :content, length: { maximum:140 },presence: true
end
