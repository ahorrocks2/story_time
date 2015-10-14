class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
    @image = Image.order("RANDOM()").first
  end

  def create
    @image = Image.order("RANDOM()").first
    @story = Story.create(story_params)
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

private
  def story_params
    params.require(:story).permit(:title, :author, :first_sentence)
  end

end
