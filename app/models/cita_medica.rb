class CitaMedica < ApplicationRecord
  belongs_to :doctor
  belongs_to :persona
end
