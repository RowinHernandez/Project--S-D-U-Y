class EmployeesController < ApplicationController
  before_filter :load_underline_user, :only => [:set_enabled, :set_employee, :delete_employee]
  def user_authorize

  end

  def set_enabled
    @underline_user.is_enabled = !@underline_user.is_enabled
    @underline_user.save

    redirect_to user_authorize_employees_path
  end

  def set_employee
    @underline_user.is_employee = !@underline_user.is_employee
    @underline_user.save

    redirect_to user_authorize_employees_path
  end

  def delete_employee
    @underline_user.destroy

    redirect_to user_authorize_employees_path
  end

  def load_underline_user
    @underline_user = User.find(params[:id])
  end
end
