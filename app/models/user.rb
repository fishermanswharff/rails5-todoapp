class User < ActiveRecord::Base

  before_create :set_token
  validates :username, :firstname, :lastname, :email, presence: true

  enum role: [:admin,:generic]
  has_secure_password

  private
  def set_token
    return if token.present?
    self.token = generate_token
  end

  def generate_token
    SecureRandom.uuid.gsub(/\-/,'')
  end
end
