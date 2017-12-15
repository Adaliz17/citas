json.extract! persona, :id, :nombre, :apellido, :edad, :sexo, :telefono, :created_at, :updated_at
json.url persona_url(persona, format: :json)
