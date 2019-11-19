class ChangeDefaultChapterInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column_default :books, :chapter, 0
  end
end
