class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :size
      t.string :label
      t.string :description
      t.integer :quantity
      t.string :date
      t.string :type
      t.string :team

      t.timestamps
    end
  end
end
