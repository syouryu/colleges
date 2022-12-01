class CollegeController < ApplicationController
  def graduate_school
    @school_name = GraduateSchool.all
  end

  def laboratory
  end
end
