class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    if @contact.save
      name = params[:contact][:name]
      email= params[:contact][:email]
      body = params[:contact][:comment]
      ContactMailer.contact_email(name , email, body).deliver
      flash[:success] = "Message Sent..."
      redirect_to contact_us_path
    else
      flash[:danger] = @contact.errors.full_messages.join(" , ")
      redirect_to contact_us_path
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :comment)
  end
end