class Website < ActiveRecord::Base
  belongs_to :member
  has_many :users
  has_many :issues, through: :users

  validates :title, :presence => true
  validates :domain, :presence => true
  validates :member, :presence => true
end
