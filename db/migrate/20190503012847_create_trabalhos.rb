class CreateTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :trabalhos do |t|
      t.float :nota
      t.string :descricao

      t.timestamps
    end
  end
end
