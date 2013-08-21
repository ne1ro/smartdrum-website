class EmployersController < ApplicationController
  def show
    @employers = Employer.all
  end
end
