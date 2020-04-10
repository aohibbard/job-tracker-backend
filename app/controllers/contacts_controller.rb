class ContactsController < ApplicationController

    def index 
        contacts = Contact.find_by(user_id: params[:user_id])
        binding.pry
        render json: JobSerializer.new(contacts)
    end 

    def create 
    end 

    def show 
        binding.pry
        contact = Contact.find_by(id: params[:id], user_id: params[:user_id])
        # contact = Contact.find_by(id: params[:id])
        render json: JobSerializer.new(contact)
    end 

    # edit
    # update
    # destroy

end
