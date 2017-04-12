class Call < ApplicationRecord
  belongs_to :issue
  has_many :users, dependent: :destroy
end
