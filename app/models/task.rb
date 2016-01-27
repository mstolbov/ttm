class Task < ActiveRecord::Base
  belongs_to :user
  has_many :attachments

  validates :name, presence: true
  validates :description, presence: true

  state_machine :initial => :new do
    state :new
    state :started
    state :finished

    event :start do
      transition new: :started
    end

    event :finish do
      transition [:new, :started] => :finished
    end
  end

  def to_s
    name
  end
end
