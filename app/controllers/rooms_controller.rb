class RoomsController < ApplicationController
  
  def index
    
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params_room)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def params_room
    params.require(:room).permit(:name, user_ids:[])
  end

end
