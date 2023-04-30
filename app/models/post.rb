class Post < ApplicationRecord
    validates :title, presense: true, length: {minimum: 5, maximum: 50}
    validates :body, presence: true, length: {minimum: 5, maximum: 100}
end
