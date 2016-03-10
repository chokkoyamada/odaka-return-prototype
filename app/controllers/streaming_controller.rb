class StreamingController < ApplicationController
  def index
  end

  def create
    WebsocketRails[:streaming].trigger "create", "hoge"
    head :ok
  end
end
