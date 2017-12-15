class LRUCache



    def initialize(count)
      @cache = Array.new { Array.new }
    end

    def cache(cache)
      @cache = cache
    end

    def count
      # returns number of elements currently in cache
      count = 0
      @cache.each do |el|
        count += 1 if !el.empty?
      end
      count
    end

    def add(el)
      # adds element to cache according to LRU principle
      @cache.unshift(el)
      @cache.pop
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache.last
    end

    private
    # helper methods go here!

  end
