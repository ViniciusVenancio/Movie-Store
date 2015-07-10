class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
    @actor.movie = Movie.new
  end

  def create
    @actor = Actor.new(permitted_params)

    if @actor.save
      redirect_to  actors_path, notice: 'Dados salvos com sucesso!'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def permitted_params
    params.require(:actor).permit(
                          :name, :age, :movie_id,
                          movie_attributes: [:name, :price, :description, :year])    
  end
end