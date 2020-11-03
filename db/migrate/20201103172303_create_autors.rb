class CreateAutors < ActiveRecord::Migration[6.0]
  def change
    create_table :autors do |t|
      t.string :nombre
      t.references :libro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
