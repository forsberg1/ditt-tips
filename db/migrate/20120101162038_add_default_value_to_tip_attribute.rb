class AddDefaultValueToTipAttribute < ActiveRecord::Migration
  def up
    change_column :tips, :popularity, :integer, :default => 1
end

end
