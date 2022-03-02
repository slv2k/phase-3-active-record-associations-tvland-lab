class Network < ActiveRecord::Base
    # returns a list of all the show instances associated with the network
    has_many :shows
  
    # returns a string
    def sorry
      "We're sorry about passing on John Mulaney's pilot"
    end
  end