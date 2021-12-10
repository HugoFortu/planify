class Task < ApplicationRecord
  belongs_to :user
  belongs_to :type

  validates :title, presence: true
end
