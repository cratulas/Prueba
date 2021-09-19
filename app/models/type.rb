class Type < ApplicationRecord
    has_many :relations
    has_many :booksmarks, through: :relations, dependent: :destroy
end
