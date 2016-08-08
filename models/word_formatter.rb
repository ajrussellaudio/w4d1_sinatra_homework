class WordFormatter

  def initialize(string)
    @string = string
  end

  def my_upcase()
    return @string.upcase
  end

  def camelcase()
    output = @string.split(' ').map do |word|
      word.capitalize
    end
    return output.join('')
  end

end