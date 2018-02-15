# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

  validates :name, :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, allow_nil: true

  before_validation :ensure_session_token

  has_many :posts, dependent: :destroy
  has_many :subs, dependent: :destroy
  attr_reader :password

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  def password=(psw)
    @password = psw
    self.password_digest = BCrypt::Password.create(psw)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
  end

  def self.find_by_creditials(name, password)
    @user = User.find_by(name: name)
    return nil if @user.nil?
    @user.password_digest.is_password?(password) ? @user : nil
  end

  def password_digest
    BCrypt::Password.new(super)
  end

end
