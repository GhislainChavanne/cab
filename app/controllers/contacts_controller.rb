class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

  def create
    redirect_to contact_path
  end
end
