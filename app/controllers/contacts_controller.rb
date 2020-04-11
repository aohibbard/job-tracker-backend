class ContactsController < ApplicationController

    def index 
        contacts = Contact.find_by(user_id: params[:user_id])
        binding.pry
        render json: ContactSerializer.new(contacts)
    end 

    def create 
        contact = Contact.create(contact_params)
        if contact.save 
            render json: ContactSerializer.new(contact)
        end 
    end 

    def show 
        binding.pry
        contact = Contact.find_by(id: params[:id], user_id: params[:user_id])
        # contact = Contact.find_by(id: params[:id])
        render json: ContactSerializer.new(contact)
    end 

    private 

    def contact_params
        params.require(:contact).permit(:name, :company, :notes, :user_id)
    end 

end
