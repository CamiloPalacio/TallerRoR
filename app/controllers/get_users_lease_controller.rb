class GetUsersLeaseController < ApplicationController

    def index
        @prestamos = Prestamo.all
    end

    def getLease
        @result = Prestamo.where(:usuario_id => params[:id])
        render json: @result
    end
end
