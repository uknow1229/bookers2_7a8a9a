class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :message, presence: true, length: { maximum: 140 }

  def get_profile_image
    (profile_image.attached?) ? profile_image : 'no_image.jpg'
  end
end
