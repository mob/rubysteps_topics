class RemoveClosedFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :closed_, :integer
  end
end
