class EmailsController < ApplicationController
  before_action :all_emails, only: [:index, :destroy]
	before_action :set_emails, only: [:destroy, :show]
	respond_to? :html, :js

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
    @email.read = true
    @email.save
  end

  def destroy
    @email = Email.destroy(params[:id])
    redirect_to root_path
  end

private
  def all_emails
    @email = Email.all
  end

  def set_emails
    @email = Email.find(params[:id])
  end
end
