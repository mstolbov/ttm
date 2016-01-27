class TaskType < Task
  include BaseType

  accepts_nested_attributes_for :attachments, allow_destroy: true
end
