class AddCoeditorsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :coeditor_2, :string
    add_column :articles, :coeditor_3, :string
    add_column :articles, :coeditor_4, :string
  end
end
