class AddAddressToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :address, :string
  end
end
