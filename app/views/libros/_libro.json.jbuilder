json.extract! libro, :id, :nombre, :idioma_id, :created_at, :updated_at
json.url libro_url(libro, format: :json)
