class CreateLibros < ActiveRecord::Migration[6.0]
  def change
    create_table :libros do |t|
      t.string :nombre
      t.references :idioma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
