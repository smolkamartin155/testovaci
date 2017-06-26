class Item < ActiveRecord::Base
  belongs_to :variant
  belongs_to :document

  accepts_nested_attributes_for :variant

  validates :variant, presence: true


  def variant_attributes=(variant_attrs)
      self.variant = Variant.find_by_id(variant_attrs.delete(:id))
  end

  def variant_name
    self.try(:variant).try(:name)
  end

  def variant_product_id
    self.try(:variant).try(:id)
  end
end
