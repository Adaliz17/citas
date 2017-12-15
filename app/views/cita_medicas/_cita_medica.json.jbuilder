json.extract! cita_medica, :id, :fecha, :doctor_id, :persona_id, :created_at, :updated_at
json.url cita_medica_url(cita_medica, format: :json)
