
ActiveAdmin.register Article do
  permit_params :title, :content, :date, :description

  menu label: "1. ACTUS"

  index do
    selectable_column
    column :title
    column :date
    actions
  end

  form do |f|
    inputs 'Details' do
      input :title, placeholder: "Titre"
      input :description, placeholder: "Intro"
      input :content, placeholder: "Contenu"
      input :date, :as => :datepicker, :html_option => { value: Time.now }
      f.actions
    end
  end

end

