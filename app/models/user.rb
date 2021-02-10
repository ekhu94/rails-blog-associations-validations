class User < ApplicationRecord
    has_many :posts
    validate_uniqueness_of :name
    # validates :name, uniqueness: true
end
