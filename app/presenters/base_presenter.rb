class BasePresenter < SimpleDelegator
  def initialize(model, view)
    @model = model
    super(@model)
  end

  def view
    @view
  end
end
