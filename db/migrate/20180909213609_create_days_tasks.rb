class CreateDaysTasks < ActiveRecord::Migration
  def self.up
    create_table :days_tasks, :id => false do |t|
      t.integer :day_id
      t.integer :task_id
      t.timestamps
    end
  end

  def self.down
    drop_table :days_tasks
  end
end
