class CreateLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :sinopse
      t.string :autor
      t.integer :pagina

      t.timestamps
    end
  end
end
