class API::TopicsController < ApplicationController 

  def index
    @topics = Topic.all
    render json: @topics
  end

  def create
    @topic = Topic.create(topic_params)
    if @topic
      render :text => @topic.save
    end
  end


  private
  
  def topic_params
    params.require(:topic).permit(:title, :description)
  end
end
