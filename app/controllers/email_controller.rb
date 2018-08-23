class EmailController < ApplicationController
  def index
    @email = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def destroy
    @email = Email.find(params[:id])
  end
end
