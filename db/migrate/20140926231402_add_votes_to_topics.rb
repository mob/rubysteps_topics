class AddVotesToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :votes, :integer, default: 0
  end
end
