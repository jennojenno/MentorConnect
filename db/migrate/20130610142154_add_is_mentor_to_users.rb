class AddIsMentorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_mentor, :boolean, :default => false
    add_column :users, :is_student, :boolean, :default => true
  end
end
