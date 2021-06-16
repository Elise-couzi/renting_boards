class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @boards = Board.all

    # geoloc
    @markers = @boards.geocoded.map do |board|
      {
        lat: board.latitude,
        lng: board.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { board: board })
      }
    end
  end
end
