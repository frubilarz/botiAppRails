class Provincia < ApplicationRecord
  self.table_name = "provincias"
 belongs_to :region
 has_many :comunas
end
