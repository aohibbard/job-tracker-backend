class JobsController < ApplicationController

    def index 
        jobs = Job.all 
        render json: JobSerializer.new(jobs)
    end 

    def create 
    end 

    def show 
        job = Job.find_by(id: params[:id])
        render json: JobSerializer.new(job)
    end 

    # edit
    # update
    # destroy

end
