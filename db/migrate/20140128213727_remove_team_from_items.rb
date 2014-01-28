class RemoveTeamFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :team
  end
end
