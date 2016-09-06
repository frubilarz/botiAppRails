class CreateLocals < ActiveRecord::Migration[5.0]
  def change
    create_table :locales do |t|
      t.string :rut
      t.string :nombre
      t.string :direccion
      t.integer :comuna_id
      t.integer :glosa_patente_id
      t.string :web
      t.integer :telefono
      t.float :latitud
      t.float :longuitud
      t.integer :tipo_patente_id

      t.timestamps
    end
  end
end
