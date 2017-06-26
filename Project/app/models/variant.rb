class Variant < ActiveRecord::Base
  belongs_to :product

  validates :name, presence: true
  before_destroy :confirm_exist_items

  def confirm_exist_items
    unless Item.find_by_variant_id(self.id).blank?
     errors.add(:base, "You must delete items from all documents")
     return false
    end
  end
end
