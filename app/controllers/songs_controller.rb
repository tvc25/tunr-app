class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    binding.pry
    @song = Song.find(params[:id])
  end

  def new
    #instantiate an empty footballer object
    @song = Song.new
  end

  def create
    Song.create(song_params)
    redirect_to(songs_path)
  end

  def edit
  @song = Song.find(params[:id])
  end

  def update
  #   #binding.pry
  #   #look up the planet in the planets database
    @song = Song.find(params[:id])
    #update the attributes
    @song.update(song_params)
    redirect_to(songs_path)
  end

  def destroy
    #binding.pry
    #Look up the planet in the database using the id from params
    song = Song.find(params[:id]).destroy
    song.destroy
    #Delete planet from the database
    redirect_to(songs_path)
  end

   private
  #this is a security method that allows you to update the following columns in the database
  def song_params
    params.require(:song).permit(:name, :artist)
  end

end