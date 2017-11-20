class PlanetsController < ApplicationController

  # get all the planets, store them in an instance variable
  def index
    @planets = Planet.all
  end

  # get a spesific planet and store it in an instance variable
  def show
    @planet = Planet.find(params[:id])
  end

  # render the new planet form with an create an emply planet instance 
  def new
    @planet = Planet.new
  end


  # using the form date (planet_params) create a new planet, save it and redirect to the show page for that planet
  def create

    @planet = Planet.create(planet_params)
    if @planet.save
      redirect_to @planet
    else
      render :new
    end

  end

  # render the edit page, create an instance variable containing the editable record. 
  def edit
    @planet = Planet.find(params[:id])
  end

  # using the form date (planet_params) edit the existing planet record, save it and redirect to the show page for that planet
  def update
   
    @planet = Planet.find(params[:id])
    if @planet.update(planet_params)
      redirect_to @planet
    else
      render :edit
    end

  end


  # delete a record given a spesific ID, redirect to the planets index page
  def destroy

    Planet.destroy(params[:id])
    redirect_to planets_url

  end
   # all methods after protected are only accessable to methods inside this class
  protected
  def planet_params
    params.require(:planet).permit(:name, :population, :lang, :flag_url, :president)
  end
end







