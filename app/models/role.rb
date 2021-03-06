# The Role class is responsible for ...

class Role < ApplicationRecord
  has_many :accounts, dependent: :destroy

  validates :unique_name, presence: true
  validates :unique_name, uniqueness: true
  validates :display_name, presence: true

  scope :employee, -> { find_by(unique_name: :employee) }
end
