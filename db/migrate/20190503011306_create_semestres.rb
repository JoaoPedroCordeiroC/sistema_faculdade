class CreateSemestres < ActiveRecord::Migration[5.2]
  def change
    create_table :semestres do |t|
      t.string :nome
      t.belongs_to :ano, foreign_key: true

      t.timestamps
    end
  end
end
