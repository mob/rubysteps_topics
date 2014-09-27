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

FactoryGirl.define do
  factory :topic do
    title 'Title'
    description 'Description'
  end
  factory :closed_topic, class: Topic do
    title 'Title'
    description 'Description'
    closed_at 1.hour.ago
  end
  factory :open_topic, class: Topic do
    title 'Title'
    description 'Description'
    closed_at 1.hour.from_now
  end
end
