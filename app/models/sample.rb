class Sample < ActiveRecord::Base
  has_many :songs

  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
end
