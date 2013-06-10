class AddCategoriesToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :category, :string
    add_column :courses, :title, :string
    add_column :courses, :dates, :string
    add_column :courses, :online, :boolean
    add_column :courses, :in_person, :boolean
  end
end
