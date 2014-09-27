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

require 'rails_helper'

describe Topic do

  describe 'Adding a vote' do
    it 'disallows adding a vote' do
      @topic = FactoryGirl.create(:closed_topic)
      @topic.add_vote
      expect(@topic.votes).to_not eq(1)
      expect(Topic.last.votes).to_not eq(1)
    end
    
    it "allows votes when the topic is active" do
      @topic = FactoryGirl.create(:open_topic)
      @topic.add_vote
      expect(@topic.votes).to eq(1)
      expect(Topic.last.votes).to eq(1)
    end
  end
end
