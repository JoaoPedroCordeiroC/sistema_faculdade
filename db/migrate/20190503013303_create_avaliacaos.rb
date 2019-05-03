class CreateAvaliacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :avaliacaos do |t|
      t.float :nota
      t.belongs_to :prova, foreign_key: true
      t.belongs_to :trabalho, foreign_key: true

      t.timestamps
    end
  end
end
