json.extract! livro, :id, :titulo, :sinopse, :autor, :pagina, :created_at, :updated_at
json.url livro_url(livro, format: :json)
