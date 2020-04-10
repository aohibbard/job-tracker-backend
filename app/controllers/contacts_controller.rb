class ContactsController < ApplicationController

    def index 
        contacts = Contact.all 
        render json: JobSerializer.new(contacts)
    end 

    def create 
    end 

    def show 
        contact = Contact.find_by(id: params[:id])
        render json: JobSerializer.new(contact)
    end 

    # edit
    # update
    # destroy

end
