class AddPopularityToTip < ActiveRecord::Migration
  def change
    add_column :tips, :popularity, :integer
  end
end
