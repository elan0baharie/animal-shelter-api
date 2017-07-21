class Animal < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true

  scope :search, -> (name_parameter) { where("upper(name) like ?", "%#{name_parameter.upcase}%")}
end
