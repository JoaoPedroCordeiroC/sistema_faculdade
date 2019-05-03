class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :documento
      t.string :telefone
      t.string :email
      t.belongs_to :endereco, foreign_key: true

      t.timestamps
    end
  end
end
