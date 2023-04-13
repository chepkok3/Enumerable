require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    return to_enum(:each) unless block_given?

    @list.each(&block)
  end
end
