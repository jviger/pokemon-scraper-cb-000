class Pokemon
  
  attr_accessor :id, :name, :type, :hp, :db
 
  def initialize(name:, type:, db:, id:, hp:)
    
     @id = id
     @name = name 
     @type = type
     @hp = hp
     @db = db
  end
  
end
