class User < ApplicationRecord
  has_person_name
  has_one :profile
  delegate :username, to: :profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def username
    "#{first_name}_#{last_name}"
  end
end
