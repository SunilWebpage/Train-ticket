class TrainsController < ApplicationController
  def new
    @train = Train.new
  end

  def create
    p params[:train_detail_id]
    p params[:user_id]

    @train = Train.new(ticket_params)
    if @train.save
     redirect_to ticketdetails_path, notice: "Ticket added successfully"

    else
      flash.now[:alert] = "Error: #{@train.errors.full_messages.join(', ')}"
      render :new
    end
  end
  

  def ticketdetails
    @trains = Train.joins(:train_detail).where(user_id: current_user.id)
  end

  def edit
    @train = Train.find(params[:id])
  end

  def destroy
    @train = Train.find(params[:id])
    @train.destroy
    redirect_to ticketdetails_path, notice: "Ticket was successfully deleted"
  end

  private

  def ticket_params
    params.require(:train).permit(:user_id, :train_detail_id, :name, :gender, :age, :date)
  end
end

