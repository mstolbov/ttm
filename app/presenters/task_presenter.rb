class TaskPresenter < BasePresenter
  def state_label_class
    case @model.state
    when "new"
      "label-info"
    when "started"
      "label-warning"
    when "finished"
      "label-success"
    end
  end
end
