class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.integer :carga_horaria
      t.belongs_to :semestre, foreign_key: true

      t.timestamps
    end
  end
end
