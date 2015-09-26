class Transaction < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :account
end
