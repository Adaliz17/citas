class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :sexo
      t.string :telefono

      t.timestamps
    end
  end
end
