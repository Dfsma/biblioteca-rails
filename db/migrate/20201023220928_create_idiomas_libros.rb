class CreateIdiomasLibros < ActiveRecord::Migration[6.0]
  def change
    create_table :idiomas_libros do |t|
      t.references :idioma, null: false, foreign_key: true
      t.references :libro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
