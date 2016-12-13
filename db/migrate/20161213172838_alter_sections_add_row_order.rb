class AlterSectionsAddRowOrder < ActiveRecord::Migration
  def change
    add_column :sections, :row_order_sections, :integer
    add_index :sections, :row_order_sections
  end
end
