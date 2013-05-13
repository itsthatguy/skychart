class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(params[:character])
    respond_to do |format|
      if @character.save
        format.html { redirect_to("#index", :notice => "Character successfully created!")}
      else
        flash[:notice] = "Error!"
        format.html { render :action => :new }
      end
    end
  end

end
