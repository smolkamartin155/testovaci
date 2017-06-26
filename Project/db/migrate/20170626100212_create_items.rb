class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :variant, index: true
      t.belongs_to :document, index: true
      t.timestamps
    end
  end
end
