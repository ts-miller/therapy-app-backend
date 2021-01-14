class AppointmentsController < ApplicationController
    before_action :set_appointment, only: [:update, :destroy]

    def index
        @appointments = Appointment.all

        render json: @appointments
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            render json: @appointment, status: :created, location: @appointment
        else
            render json: @appointment.errors, status: :unprocessable_entity
        end
    end

    def update
    end

    def destroy
    end

    private

        def set_appointment
            @client = Appointment.find(params[:id])
        end

        def appointment_params
            params.require(:appointment).permit(:date, :time)
        end

end