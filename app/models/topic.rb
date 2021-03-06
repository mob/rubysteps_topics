# == Schema Information
#
# Table name: topics
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  votes       :integer          default(0)
#  closed_at   :datetime
#

class Topic < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true

  def add_vote
    self.increment!(:votes) unless closed
  end

  private
  def closed
    self.closed_at < Time.now
  end
end
