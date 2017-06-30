module Arduino
  class SoundController < ApplicationController
    def ting
      response = SoundService.new.ting
      render json: {status: :ok, response: response}
    end
  end
end
