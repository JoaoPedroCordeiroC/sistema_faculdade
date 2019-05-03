json.extract! avaliacao, :id, :nota, :prova_id, :trabalho_id, :created_at, :updated_at
json.url avaliacao_url(avaliacao, format: :json)
