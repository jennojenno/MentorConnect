class CreateUsersHaveAndBelongToManyRoles < ActiveRecord::Migration
  def change
    create_table :users_have_and_belong_to_many_roles do |t|
      t.references :user
      t.references :role

      t.timestamps
    end
    add_index :users_have_and_belong_to_many_roles, :user_id
    add_index :users_have_and_belong_to_many_roles, :role_id
  end
end
