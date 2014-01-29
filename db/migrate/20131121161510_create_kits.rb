class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :name
      t.string :type
      t.integer :quantity
      t.string :description
      t.integer :squad

      t.timestamps
    end
  end
end
