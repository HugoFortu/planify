class List < ApplicationRecord
  belongs_to :user
  has_many :elements, dependent: :destroy
end
