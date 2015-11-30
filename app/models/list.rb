class List < ActiveRecord::Base
  has_many :todos, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true

  before_validation :generate_slug, on: [:create, :update]

  protected

  def generate_slug
    self.url_slug = self.name.downcase.gsub(/\s/,'-')
  end
end
