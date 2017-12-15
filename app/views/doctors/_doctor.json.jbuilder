json.extract! doctor, :id, :nombre, :apellido, :edad, :sexo, :telefono, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
