class JobsController < ApplicationController

    def index 
        jobs = Job.where(:user_id => params[:user_id])
        render json: JobSerializer.new(jobs)
    end 

    def create 
        # change back to params after user ID sorted
        # do some logic with date
        job = Job.create(title: params[:title], company: params[:company], due: params[:due], applied: params[:applied], user_id: 1)
        if job.save 
            render json: JobSerializer.new(job)
        end 
    end 

    def show 
        job = Job.find_by(id: params[:id])
        render json: JobSerializer.new(job)
    end 

    def update
        job = Job.find_by(id: params[:id])
        job.update(job_params)
        render json: JobSerializer.new(job)
    end 

    def destroy 
        job = Job.find_by(id: params[:id])
        job.destroy
    end 

    private 

    def job_params 
        params.require(:job).permit(:title, :company, :due, :applied, :url, :user_id)
    end 

end
