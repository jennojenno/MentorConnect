class AddZipToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zipcode, :integer
  end
end
