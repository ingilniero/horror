class RemoveImageFromEntry < ActiveRecord::Migration
  def change
    remove_column :entries, :image,       :string
    remove_column :entries, :description, :string
    add_column    :entries, :content,     :string
  end
end
