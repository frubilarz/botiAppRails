class MediosPagoLocal < ApplicationRecord
    self.table_name = "medios_pago_locales"
    belongs_to :local,  class_name: "Local"
    belongs_to :pago, class_name: "MediosPago" 
end
