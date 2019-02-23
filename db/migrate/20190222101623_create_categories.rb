class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    Category.create :name => "romantic"

    Category.create :name => " action"

    Category.create :name => "comedy"


  
  end
end
