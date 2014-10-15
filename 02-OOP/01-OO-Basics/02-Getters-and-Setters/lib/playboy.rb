# class Playboy
#   # TODO: implement necessary getters or setters to run meeting_casanova.rb

#   INITIAL_HAIR_LENGTH = 20  # beautiful long playboy hair

#   def initialize(name, nationality)
#     @conquests = []
#     @name, @nationality = name, nationality
#     @hair_length = INITIAL_HAIR_LENGTH
#   end

#   def meets(lady)
#     @conquests << lady unless @married
#   end
# end


class Playboy
  # TODO: implement necessary getters or setters to run meeting_casanova.rb

  attr_reader :nationality, :conquests
  attr_accessor :hair_length

  def initialize(name, nationality, hair_length = 20)
    @conquests = []
    @name = name
    @nationality = nationality
    @hair_length = hair_length
    @married = false
  end

  def meets(lady)
    @conquests << lady unless @married
  end
end