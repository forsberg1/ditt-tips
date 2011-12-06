class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :title
      t.string :text
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
