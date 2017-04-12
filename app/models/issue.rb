class Issue < ApplicationRecord
  has_many :calls, dependent: :destroy
end
