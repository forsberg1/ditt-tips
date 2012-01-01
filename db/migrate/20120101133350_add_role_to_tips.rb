class AddRoleToTips < ActiveRecord::Migration
  def change
    add_column :tips, :categorie_id, :integer
  end
end
