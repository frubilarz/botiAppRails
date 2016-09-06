class CreateHorarios < ActiveRecord::Migration[5.0]
  def change
    create_table :horarios do |t|
      t.time :apertura
      t.time :cierre
      t.integer :local_id
      t.integer :dia

      t.timestamps
    end
  end
end
