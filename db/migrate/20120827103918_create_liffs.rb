class CreateLiffs < ActiveRecord::Migration
  def change
    create_table :liffs do |t|
      t.string :word
      t.text :definition
      t.string :user

      t.timestamps
    end
  end
end
