class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.float :price
      t.string :year
      t.string :category_id

      t.timestamps
    end
  end
end
