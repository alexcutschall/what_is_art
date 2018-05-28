class Quote
  attr_reader :text, :author

  def initialize(information)
    @text = information[:quote]
    @author = information[:author]
  end
end
