class Annoucement < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :adress, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :typeHome, presence: true

end
