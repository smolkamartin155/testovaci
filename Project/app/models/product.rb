class Product < ActiveRecord::Base
  has_many :variants, dependent: :destroy

  accepts_nested_attributes_for :variants,  allow_destroy: true , reject_if: :all_blank

  validates :name, presence: true
end
