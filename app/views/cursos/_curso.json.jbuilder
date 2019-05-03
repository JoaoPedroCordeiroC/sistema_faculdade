json.extract! curso, :id, :nome, :carga_horaria, :semestre_id, :created_at, :updated_at
json.url curso_url(curso, format: :json)
