class PageController < ApplicationController
  def index
    render json: { error: "Please use the /page/:format endpoints, thanks!" }
  end

  def index_slim
    @parts = (1..100).map {|i| new_part }
    render 'index_slim', layout: 'application_slim'
  end

  def index_erb
    @parts = (1..100).map {|i| new_part }
    render 'index_erb', layout: 'application_erb'
  end

  def index_haml
    @parts = (1..100).map {|i| new_part }
    render 'index_haml', layout: 'application_haml'
  end

  private
  def new_part
    { title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph }
  end
end
