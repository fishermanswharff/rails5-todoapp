class Todo < ActiveRecord::Base
  belongs_to :list
  has_one :note
  validates_associated :list
  validates :name, presence: true
end
