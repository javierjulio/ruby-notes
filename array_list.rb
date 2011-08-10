class ArrayList
  
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
  
  def addItem(item)
    @source.push(item)
  end
  
  def contains(item)
    getItemIndex(item) != nil
  end
  
  def getItemAt(index)
    @source.slice(index)
    # @source[index]
  end
  
  def getItemIndex(item)
    @source.index(item)
  end
  
  def removeAll
    @source.clear
    true
  end
  
  def removeItemAt(index)
    @source.delete_at(index)
  end
  
end