class AddUserToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :user, foreign_key: true
  end
end
