class ArrayList
  
  attr_reader :length
  attr_reader :source
  
  def initialize(source=[])
    unless source.kind_of?(Array)
      source = []
    end
    
    @source = source
  end
  
  def length
    @source.length
  end
  
  def index(i)
    @source.slice(i)
  end
  
end