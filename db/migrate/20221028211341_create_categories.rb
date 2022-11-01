class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories, {:id => false} do |t|
      t.integer :cat_id
      t.string :cat_title
      t.integer :cat_pages
      t.integer :cat_subcats
      t.integer :cat_files
      t.datetime :created_at
      t.datetime :updated_at
      # t.timestamps
    end
    # execute "ALTER TABLE categories ADD PRIMARY KEY (cat_id);"
  end

  def down
    drop_table :categories
  end
end
