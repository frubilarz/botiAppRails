class Local < ApplicationRecord
  self.table_name = "locales"
  has_many :comentarios, class_name: "Comentario"
  has_many :medios_pago_local, class_name: "MediosPagoLocal"
  has_many :medios_pago, class_name: "MediosPago", :through => :medios_pago_local
end
