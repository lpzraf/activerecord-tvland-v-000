class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  
  def say_that_thing_you_say
    "#{self.name} always says: " + self.catchphrase
  end
  
  # def build_network
    c = self.new(:name => "?")
    c.show.build_network(:name => "?")
    c.save
  # end
  
end