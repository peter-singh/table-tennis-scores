class User < ApplicationRecord
  attr_accessor :skip_password_validation

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def password_required?
    return false if skip_password_validation
    super
  end
end
