class AddForeign < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :locales, :comunas, column: :comuna_id, primary_key: "id"
    add_foreign_key :locales, :glosa_patentes, column: :glosa_patente_id, primary_key: "id"
    add_foreign_key :locales, :tipo_patentes, column: :tipo_patente_id, primary_key: "id"
    add_foreign_key :horarios, :locales , column: :local_id, primary_key: "id"
    add_foreign_key :comentarios, :locales, column: :local_id, primary_key: "id"
    add_foreign_key :medios_pago_locales , :locales, column: :local_id, primary_key: "id"
    add_foreign_key :medios_pago_locales, :medios_pagos , column: :medios_pago_id, primary_key: "id"
  end
end
