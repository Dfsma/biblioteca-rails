class Libro < ApplicationRecord
  has_and_belongs_to_many :idiomas
  has_and_belongs_to_many :autors
end
