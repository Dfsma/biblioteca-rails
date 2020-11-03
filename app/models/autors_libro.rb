class AutorsLibro < ApplicationRecord
  belongs_to :libro
  belongs_to :autor
end
