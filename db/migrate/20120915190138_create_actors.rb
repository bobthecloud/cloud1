class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.date :dob
      t.string :gender

      t.timestamps
    end
  end
end
