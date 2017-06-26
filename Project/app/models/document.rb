class Document < ActiveRecord::Base
  has_many :items, dependent: :destroy
  has_many :variants, through: :items


  accepts_nested_attributes_for :items, allow_destroy: true
  validates :name, presence: true
end
