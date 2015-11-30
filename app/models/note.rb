class Note < ActiveRecord::Base
  belongs_to :todo
  validates_associated :todo
end
