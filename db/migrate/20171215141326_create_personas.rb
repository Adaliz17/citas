class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.string :sexo
      t.string :telefono

      t.timestamps
    end
  end
end
