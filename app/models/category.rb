class Category < ApplicationRecord
    has_ancestry
    has_many :assemblies
    has_many :booksmarks, through: :assemblies, dependent: :destroy
end
