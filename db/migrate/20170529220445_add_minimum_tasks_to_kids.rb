class AddMinimumTasksToKids < ActiveRecord::Migration
  def self.up
    add_column :kids, :minimum_tasks, :integer, :null => false, :default => 0
  end

  def self.down
    remove_column :kids, :minimum_tasks
  end
end
