class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    # byebug
    @events = Event.all
    @current_user = current_user

  end

  def show

    @event = Event.find(params[:id])
    user_attending = @event.users.exists? current_user.id

    if user_attending
      @attending_text = "Not Attending"
    else
      @attending_text = "Attending"
    end
  end

  def new

    @event = Event.new
    @clubs = Club.all

  end

  def create

    @event = Event.create(event_params)
    @event.image_url = params[:event][:image_url].original_filename
    @event.club_id = params[:club][:club_id]

    @event.save
    redirect_to

  end

  def edit

    byebug
    @event = Event.find(params[:id])
    @clubs = Club.all


  end

  def user_attending

    @event = Event.find(params[:id])
    # byebug

    if @event.users.exists? current_user.id

      @event.users.delete(current_user.id)

    else

      @event.users.push(current_user)

    end

    redirect_to "/events/#{params[:id]}"

  end

  def user_not_attending

    @event = Event.find(params[:id])
    # byebug
    @event.users.find(current_user.id)
    
  end

  def update

    @event = Event.find(params[:id])
    @event.update(event_params)
    @event.image_url = params[:event][:image_url].original_filename
    @event.club_id = params[:club][:club_id]

    @event.save
    redirect_to events_path

  end

  def delete
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :description, :line_up, :price, :time_start, :time_end, :club_id, :image_url)
    end

    



end
