class RemoveBookIdFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :book_id, :integer
  end
end
