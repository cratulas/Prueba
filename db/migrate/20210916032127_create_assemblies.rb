class CreateAssemblies < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblies do |t|
      t.references :booksmark, foreign_key: true
      t.references :category, foreign_key: true
      
      t.timestamps
    end
  end
end
