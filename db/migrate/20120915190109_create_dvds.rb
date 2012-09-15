class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :name
      t.date :date
      t.string :summary
      t.string :asin

      t.timestamps
    end
  end
end
