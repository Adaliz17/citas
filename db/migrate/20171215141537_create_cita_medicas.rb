class CreateCitaMedicas < ActiveRecord::Migration[5.1]
  def change
    create_table :cita_medicas do |t|
      t.datetime :fecha
      t.belongs_to :doctor, foreign_key: true
      t.belongs_to :persona, foreign_key: true

      t.timestamps
    end
  end
end
