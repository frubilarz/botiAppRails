class Region < ApplicationRecord
  self.table_name = "regiones"
  has_many :provincias
end
