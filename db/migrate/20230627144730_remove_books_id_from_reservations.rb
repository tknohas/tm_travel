class RemoveBooksIdFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :books_id, :integer
  end
end
