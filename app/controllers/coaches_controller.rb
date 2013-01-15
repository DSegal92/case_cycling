class CoachesController < ApplicationController
  # GET /members
  # GET /members.json
  def index
    @coaches = Coach.find(:all, :order => "id ASC")
    
    respond_to do |format| 
      format.html # index.html.erb
      format.json { render json: @members }
    end
  end
 end
