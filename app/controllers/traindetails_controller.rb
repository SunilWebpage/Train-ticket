class TraindetailsController < ApplicationController

  def new
    @train_detail = TrainDetail.new
  end

  def create
    @train_detail = TrainDetail.new(train_detail_params)
    if @train_detail.save
      redirect_to ticketbooking_path, notice: "Train Added Successfully"
    else
      render :new
    end
  end 

  

def ticketbooking
  @train_details = TrainDetail.all
end

def userticket
  @train_details = TrainDetail.all
end


  def edit
    @train_detail = TrainDetail.find(params[:id])  
  end


  def update
  @train_detail = TrainDetail.find(params[:id])
  if @train_detail.update(train_detail_params)
    redirect_to ticketbooking_path, notice: "Train Details Updated Successfully"
  else
    render :edit
  end
end


  def destroy
  @train_detail = TrainDetail.find(params[:id])
  if @train_detail.delete
    redirect_to ticketbooking_path
  else
    redirect_to new_traindetail_path, alert: "Failed to delete the book."
  end
end


  private

  def train_detail_params
    params.require(:train_detail).permit(:train_name, :train_number, :departure_time, :arrival_time, :From, :To)
  end
end
