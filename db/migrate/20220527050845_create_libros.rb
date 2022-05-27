class CreateLibros < ActiveRecord::Migration[7.0]
  def change
    create_table :libros do |t|
      t.string :titulo
      t.string :autor
      t.integer :year

      t.timestamps
    end
  end
end
