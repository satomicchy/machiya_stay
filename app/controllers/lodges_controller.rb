class LodgesController < ApplicationController
  before_action :set_lodge, only: [:show, :edit, :update, :destroy]

  def reserve
    @lodge = Lodge.find(params[:lodge_id])
  end

  def reserve_create
    @lodge = Lodge.find(lodge_params[:id])
    LodgeMailer.reserve_email.deliver
    LodgeMailer.thanks_email(lodge_params[:person_email]).deliver

    redirect_to root_path
  end

  def index
    @lodges = Lodge.all
  end

  def show
  end

  def new
    @lodge = Lodge.new
  end

  def edit
  end

  def create
    @lodge = Lodge.new(lodge_params)

    respond_to do |format|
      if @lodge.save
        format.html { redirect_to @lodge, notice: 'Lodge was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @lodge.update(lodge_params)
        format.html { redirect_to @lodge, notice: 'Lodge was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @lodge.destroy
    respond_to do |format|
      format.html { redirect_to lodges_url, notice: 'Lodge was successfully destroyed.' }
    end
  end

  private
    def set_lodge
      @lodge = Lodge.find(params[:id])
    end

    def lodge_params
      params.require(:lodge).permit(:name, :address, :tel, :url, :description, :available, :picture, :id, :person_name, :person_email, :message)
    end
end
