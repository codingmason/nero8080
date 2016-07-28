class Tag < ActiveRecord::Base
  has_many :songs

  validates :name, presence: true, uniqueness: true
end
