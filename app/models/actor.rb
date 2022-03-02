class Actor < ActiveRecord::Base
    # an actor has many characters, returns all characters actor has played
    has_many :characters
    # an actor has many characters and many shows through characters
    has_many :shows, through: :characters
  
    # returns first and last name of an actor
    def full_name
      "#{self.first_name} #{self.last_name}"
    end
  
    # lists all the characters that actor has alongside the show the character is in
    def list_roles
      self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
      end
    end
  
  end