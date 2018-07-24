class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :details, presence: true
end
