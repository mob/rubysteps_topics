class AddClosedAtToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :closed_at, :datetime
  end
end
