class AddEditorToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :editor, :string
  end
end
