ActiveAdmin.register Article do
  permit_params :title, :editor, :link, :coeditor, :coeditor_2, :coeditor_3, :coeditor_4, :category, :content, :date, :description

  menu label: "1. ACTUS"

  index do
    selectable_column
    column "Titre", :title
    column "Rédacteur", :editor
    column "Co-rédacteur", :coeditor
    column "Catégorie", :category
    column :date
    actions
  end

  form do |f|
    inputs 'Details' do
      input :title, placeholder: "Titre"
      input :editor, as: :select, collection: Article.editor, prompt: "Rédacteur de l'article", label: "Rédacteur"
      input :coeditor, as: :select, collection: Article.coeditor, prompt: "Co-rédacteur de l'article", label: "Co-rédacteur"
      input :coeditor_2, as: :select, collection: Article.coeditor, prompt: "Co-rédacteur de l'article", label: "Co-rédacteur"
      input :coeditor_3, as: :select, collection: Article.coeditor, prompt: "Co-rédacteur de l'article", label: "Co-rédacteur"
      input :coeditor_4, as: :select, collection: Article.coeditor, prompt: "Co-rédacteur de l'article", label: "Co-rédacteur"
      input :category, as: :select, collection: Article.category, prompt: "Catégorie de l'article"
      input :description, placeholder: "Intro"
      input :content, placeholder: "Contenu"
      input :link, placeholder: "Lien externe"
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

