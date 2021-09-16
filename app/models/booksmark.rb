class Booksmark < ApplicationRecord
    has_many :assemblies
    has_many :categories, through: :assemblies, dependent: :destroy
    accepts_nested_attributes_for :assemblies, reject_if: :all_blank, allow_destroy: true

    has_many :relations
    has_many :types, through: :relations, dependent: :destroy
    accepts_nested_attributes_for :relations, reject_if: :all_blank, allow_destroy: true
end
