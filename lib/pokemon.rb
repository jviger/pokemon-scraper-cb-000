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
     db.execute("Select * from pokemon where id = ?",id_number) 
  end
  
end
