class AddForeignToComunaToProvincias < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :comunas, :provincias, column: :provincia_id, primary_key: "id"
    add_foreign_key :provincias, :regiones, column: :region_id, primary_key: "id"
  end
end
