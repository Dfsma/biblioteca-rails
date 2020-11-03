class CreateAutorsLibros < ActiveRecord::Migration[6.0]
  def change
    create_table :autors_libros do |t|
      t.references :libro, null: false, foreign_key: true
      t.references :autor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
