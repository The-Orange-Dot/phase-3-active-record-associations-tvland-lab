class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    i = 0
    list = []
    while i < self.characters.length do 
      list << "#{self.characters[i].name} - #{self.shows[i].name}"
      i += 1 
    end
    list
  end

  
end