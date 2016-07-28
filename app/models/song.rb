class Song < ActiveRecord::Base
  has_many :samples
  has_many :tags
  belongs_to :creator, class_name: "User"

  validates :title, presence: true
  validates :creator_id, presence: true
  validates :sequence, presence: true
end
