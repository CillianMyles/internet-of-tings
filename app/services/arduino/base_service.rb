module Arduino
  class BaseService 

    # Need to be added to config file, not hard coded.
    BUAD_RATE = 9600
    PORT = '/dev/cu.usbmodem1411' 

    attr_accessor :arduino

    def initialize 
      @arduino = connect_arduino
      write("init\n")
      read
    end

    protected
    def connect_arduino
      Serial.new(PORT, BUAD_RATE)
    end

    def write(input)
      # arduino.flush_output
      arduino.write(input)
    end

    def read
      response = arduino.read(4)
      # arduino.flush_input
      response
   end
  end
end
