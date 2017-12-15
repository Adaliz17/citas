class CitaMedica < ApplicationRecord
  belongs_to :doctor, :foreign_key =>'doctor_id'
  belongs_to :persona, :foreign_key =>'persona_id'
end
