class CreateGlosaPatentes < ActiveRecord::Migration[5.0]
  def change
    create_table :glosa_patentes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
