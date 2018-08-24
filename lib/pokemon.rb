class Pokemon
  
  attr_accessor :id, :name, :type, :hp, :db
 
  def initialize(name:, type:, db:, id:, hp: nil)
    
     @id = id
     @name = name 
     @type = type
     @hp = hp
     @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type) 
  end
  
  def self.find(id_number, db)
     pokemon_record = db.execute("SELECT * FROM pokemon WHERE id = ?",id_number) 
     pokemon_record
  end
  
end
