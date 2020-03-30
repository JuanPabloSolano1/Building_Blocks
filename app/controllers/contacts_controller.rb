class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:body]
    skip_authorization
    ContactMailer.contact_email(name, email, body).deliver
    redirect_to root_path, notice: 'Contact Form Sent'
  end
end
