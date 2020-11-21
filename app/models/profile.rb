class Profile < ApplicationRecord
  belongs_to :user

  delegate :username, :email, to: :user, allow_nil: true, prefix: :user

end
