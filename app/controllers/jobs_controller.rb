class JobsController < ApplicationController

    def index 
        jobs = Job.all 
        render json: JobSerializer.new(jobs)
    end 

    def create 
        job = Job.create(job_params)
        if job.save 
            render json: JobSerializer.new(job)
        end 
    end 

    def show 
        job = Job.find_by(id: params[:id])
        render json: JobSerializer.new(job)
    end 

    # edit
    # update
    # destroy

    private 

    def job_params 
        params.require(:job).permit(:title, :company, :due, :applie, :url, :user_id)
    end 

end
