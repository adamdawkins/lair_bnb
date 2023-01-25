class FacilitiesController < ApplicationController
  def new
    @property = Property.find(params[:property_id])
  end

  def create
    @property = Property.find(params[:property_id])
    @facility = @property.facilities.create(facility_params)
    redirect_to @property
  end

  private
    def facility_params
      params.require(:facility).permit(:title, :capacity, :icon, :is_room)
    end
end
