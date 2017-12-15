class LRUCache

attr_accessor :cache, :count

    def initialize(count)
      @cache = []
      @max = count
    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache.include?(el) == false
        @cache << el
        @cache = @cache.drop(@max) unless count <= @max
      else
        @cache.delete(el)
        @cache << el
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache
    end

    private
    # helper methods go here!

  end
