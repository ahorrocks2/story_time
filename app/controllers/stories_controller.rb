class StoriesController < ApplicationController
  def index
    @stories = Story.all.order(title: :asc)
  end

  def show
    @story = Story.find(params[:id])
    @sentences = @story.sentences
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

  def update
    @story = Story.find(params[:id])

    if params[:favorite] == 'like'
      @story.favorites += 1
      @story.save
      redirect_to stories_path
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.sentences.each do |sentence|
      sentence.destroy
    end
    @story.destroy
    redirect_to stories_path
  end

private
  def story_params
    params.require(:story).permit(:title, :author, :first_sentence)
  end

end
