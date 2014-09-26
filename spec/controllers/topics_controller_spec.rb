require "rails_helper"

describe API::TopicsController do
  describe "#create" do

    let(:topic_params){ 
      { 
        topic: 
        {
          title: "title", 
          description: "description" 
        }
      } 
    }

    it "creates a topic" do
      post :create, topic_params

      expect(response.status).to eq(200)
      expect(Topic.last.title).to eq("title")
      expect(Topic.last.description).to eq("description")
    end
  end
  
  describe "#index" do
    before do
      2.times do |i|
        FactoryGirl.create(:topic, title: "foo#{i}")
      end 
    end
    
    def json_response
      JSON.parse(response.body)
    end

    it "returns a list of all the topics" do
      get :index
      
      expect(json_response.size).to eq(2)
      expect(json_response.map { |topic| topic['title'] }).to eq(["foo0", "foo1"]) 
    end
  end
end
      
      
