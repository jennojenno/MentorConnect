class CreateLearners < ActiveRecord::Migration
  def change
    create_table :learners do |t|
      t.text :bio

      t.timestamps
    end
  end
end
