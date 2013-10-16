class RemoveImageFromEntry < ActiveRecord::Migration
  def change
    remove_column :entries, :image
    remove_column :entries, :description
    add_column    :entries, :content, :string
  end
end
