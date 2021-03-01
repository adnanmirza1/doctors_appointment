class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :destroy, :edit, :update]
  def index
    @doctors = current_user.doctors.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def edit
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to doctors_path
    else
      render :edit
    end
  end

  def create

    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :age, :medicalhistory, :user_id)
    end
end
