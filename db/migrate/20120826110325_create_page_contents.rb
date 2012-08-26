class CreatePageContents < ActiveRecord::Migration
  def change
    create_table :page_contents do |t|
      t.string :title
      t.text :content
      t.string :tab_name

      t.timestamps
    end
  end
end
