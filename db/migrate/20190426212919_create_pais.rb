class CreatePais < ActiveRecord::Migration[5.2]
  def change
    create_table :pais do |t|
      t.stringuf :nome

      t.timestamps
    end
  end
end
