class Exceptions
    def initialize(input)
      @input = input
    end

    def result
        begin
            Integer(@input)
        rescue
            'Bad String'
        end
    end
end