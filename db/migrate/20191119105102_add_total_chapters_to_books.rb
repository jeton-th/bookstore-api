class AddTotalChaptersToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :total_chapters, :integer
  end
end
