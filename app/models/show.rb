class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    i = 0
    list = []
    while i < self.actors.length do 
      list << "#{self.actors[i].first_name} #{self.actors[i].last_name}"
      i += 1 
    end
    list
  end
end