class RoomStepsController < ApplicationController
  
  include Wicked::Wizard
  steps :location, :contact, :photos
  # before_action :set_room

  def show
    @room = Room.find(session[:room_id] )
  	render_wizard
  end

  def update
    @room = Room.find(session[:room_id])
    # params[:room][:name] = steps
    @room.update(room_params)
    render_wizard @room
  end

  private
  
  def finish_wizard_path
    room_path(@room)
  end

  def room_params
    params.require(:room).permit(:name, :description, :cep, :address, :n, :ngb, :city, :country, :telephone, :celphone, :picture, :email, :facebook_profile, :instagram_profile, :open_at, :close_at, :status)
  end

end
