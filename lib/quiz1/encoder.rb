module Quiz1
  class Encoder
    def initialize(output = nil)
    end

    def encode(message)
    end

    def step1(message)
      message.upcase.gsub(/[^A-Z]/, '')
    end
  end
end
