class AddDirectorIdToDvds < ActiveRecord::Migration
  def change
    add_column :dvds, :director_id, :integer
  end
end
