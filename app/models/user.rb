class User < ApplicationRecord
    has_many :notes
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :username, format: {with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
end
