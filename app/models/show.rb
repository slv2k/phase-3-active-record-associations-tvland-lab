
class Show < ActiveRecord::Base
    # returns list of all character instances associated with show
    has_many :characters
    has_many :actors, through: :characters
    # returns network instance this show belongs to
    belongs_to :network
  
    # returns an array of the full names of each actor associated with a show
    def actors_list
      self.actors.map do |actor|
        actor.full_name
      end
    end
  end