class CreateBooksmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :booksmarks do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
