class Student < ApplicationRecord
  belongs_to :user

  validates :name , presence: true
  validates :age , presence: true
  validates :city , presence: true
  validates :Address , presence: true
  validates :postal_code , presence: true
  validates :user_id, presence: true
end