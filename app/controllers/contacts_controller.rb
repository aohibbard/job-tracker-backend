class ContactsController < ApplicationController

    def index 
        contacts = Contact.where(:user_id => params[:user_id])
        render json: ContactSerializer.new(contacts)
    end 

    def create 
        contact = Contact.create(name: params[:name], company: params[:company], notes: params[:notes], user_id: 1)
        if contact.save 
            render json: ContactSerializer.new(contact)
        end 
    end 

    def show 
        contact = Contact.find_by(id: params[:id], user_id: params[:user_id])
        # contact = Contact.find_by(id: params[:id])
        render json: ContactSerializer.new(contact)
    end 

    private 

    def contact_params
        params.require(:contact).permit(:name, :company, :notes, :user_id)
    end 

end
