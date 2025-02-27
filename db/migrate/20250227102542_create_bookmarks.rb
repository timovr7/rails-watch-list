class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :movie, null: false, foreign_key: {to_table: :movies}
      t.references :list, null: false, foreign_key: {to_table: :lists}
      t.timestamps
    end
  end
end
