class AddRestrictedToRewards < ActiveRecord::Migration
  def self.up
    add_column :rewards, :restricted, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :rewards, :restricted
  end
end
