class EmailsController < ApplicationController
  def index
    @email = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def destroy
    @email = Email.destroy(params[:id])
  end
end
