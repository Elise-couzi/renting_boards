class AddImagesToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :images, :string
  end
end
