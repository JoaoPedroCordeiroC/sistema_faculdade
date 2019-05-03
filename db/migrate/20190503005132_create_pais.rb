class CreatePais < ActiveRecord::Migration[5.2]
  def change
    create_table :pais do |t|
      t.string :nome
      t.string :codigo

      t.timestamps
    end
  end
end
