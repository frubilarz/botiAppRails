class CreateMediosPagoLocals < ActiveRecord::Migration[5.0]
  def change
    create_table :medios_pago_locales , :id => false do |t|
      t.integer :local_id
      t.integer :medios_pago_id

      t.timestamps
    end
  end
end
