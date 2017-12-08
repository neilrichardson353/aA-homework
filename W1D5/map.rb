class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    if @map.none?{|x| x[0] == key}
      @map << [key, value]
    else
      @map.map!{|x| x[1] = [key,value] if key == x[0]}
    end
  end

  def lookup(key)
    @map.each {|x| return x[1] if x[0] == key }
  end

  def remove(key)
    @map.delete_if{|x| x[0] == key}
  end

  def show
    return @map
  end

end
