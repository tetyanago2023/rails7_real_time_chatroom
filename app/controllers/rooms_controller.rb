class RoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    # @room = Room.new
    @rooms = Room.public_rooms

    @users = User.all_except(current_user)
    render 'index'
  end
end
