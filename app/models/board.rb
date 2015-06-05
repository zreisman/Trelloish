class Board < ActiveRecord::Base

  validates :title, :user_id, presence: true

  belongs_to :user
  has_many :lists
  has_many(
    :cards,
    through: :lists,
    class_name: 'Card',
    source: :cards
  )
end
