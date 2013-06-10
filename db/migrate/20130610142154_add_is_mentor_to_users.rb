class AddIsMentorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_mentor, :boolean
    add_column :users, :is_student, :boolean
  end
end
