class Character < ActiveRecord::Base
    # returns actor instance this character belongs to
    belongs_to :actor
    # returns show instance this character belongs to
    belongs_to :show
    
    # outputs string using a given character's name and catchphrase
    def say_that_thing_you_say
      "#{self.name} always says: #{self.catchphrase}"
    end
  end