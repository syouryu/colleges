class GraduateSchoolsController < ApplicationController
  def index
    @graduate_schools = GraduateSchool.all
  end

  def laboratories
    @laboratories = Laboratory.where(graduate_school_id: params[:id])
  end
end
