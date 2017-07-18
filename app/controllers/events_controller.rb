class EventsController < ApplicationController
  
  def index

    @events = Event.all

  end

  def show
  end

  def new

    @event = Event.new
    @clubs = Club.all

  end

  def create

    @event = Event.create(event_params)
    @event.image_url = params[:event][:image_url].original_filename
    @event.club_id = params[:club][:club_id]
    # byebug

    @event.save
    # byebug
    puts  @event.errors

    redirect_to

  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :description, :line_up, :price, :time_start, :time_end, :club_id, :image_url)
    end



end
