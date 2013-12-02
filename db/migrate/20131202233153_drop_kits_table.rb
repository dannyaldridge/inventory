class DropKitsTable < ActiveRecord::Migration
  def change
    drop_table :kits
  end
end
