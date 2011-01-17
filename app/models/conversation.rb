class Conversation < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  belongs_to :board
  validates_presence_of :title
  validates_length_of :title, :maximum=>50
end
