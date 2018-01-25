class Authority < ApplicationRecord
  validates :route_name, presence: true,uniqueness: true
  validates :route_name, presence: true
end
