class AddDispoToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :dispo, :boolean, default: true
  end
end
