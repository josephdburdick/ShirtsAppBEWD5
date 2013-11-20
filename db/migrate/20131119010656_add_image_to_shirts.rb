class AddImageToShirts < ActiveRecord::Migration
  def change
    add_column :shirts, :image, :string, default: 'blank.png'
    # add_column "Table to modify", "Field to add", "type"
  end
end
