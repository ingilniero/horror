class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :user_handle

      t.timestamps
    end
  end
end
