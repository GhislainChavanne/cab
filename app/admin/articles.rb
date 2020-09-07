ActiveAdmin.register Article do
  permit_params :title, :editor, :coeditor, :content, :date, :description

  menu label: "1. ACTUS"

  index do
    selectable_column
    column :title
    column :editor
    column :coeditor
    column :date
    actions
  end

  form do |f|
    inputs 'Details' do
      input :title, placeholder: "Titre"
      input :editor, as: :select, collection: Article.editor, prompt: "Rédacteur de l'article"
      input :coeditor, as: :select, collection: Article.coeditor, prompt: "Co-rédacteur de l'article"
      input :description, placeholder: "Intro"
      input :content, placeholder: "Contenu"
      input :date, :as => :datepicker, :html_option => { value: Time.now }
      f.actions
    end
  end

action_item :view_site do
  link_to "SITE", "/"
end

action_item :view_site do
  link_to "BLOG", "/articles"
end

end

