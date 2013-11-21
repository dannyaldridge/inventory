class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :name
      t.string :type
      t.interger :quantity
      t.string :description
      t.interger :squad

      t.timestamps
    end
  end
end
