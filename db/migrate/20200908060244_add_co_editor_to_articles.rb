class AddCoEditorToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :coeditor, :string
  end
end
