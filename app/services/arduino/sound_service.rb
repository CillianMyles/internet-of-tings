module Arduino 
  class SoundService < BaseService
    def ting 
      write("ting\n")
      read
    end
  end
end
