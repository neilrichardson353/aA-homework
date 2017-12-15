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
      @cache << el unless @cache.include?(el)
      @cache = @cache.drop(@max) unless count <= @max
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache
    end

    private
    # helper methods go here!

  end
