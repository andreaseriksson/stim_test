class HomeController < ApplicationController
  def index
  end

  def increment
    ActionCable.server.broadcast "notifications_channel", content: nil

    head :ok
  end
end
