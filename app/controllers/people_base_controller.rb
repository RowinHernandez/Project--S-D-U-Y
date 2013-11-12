class PeopleBaseController < ApplicationController
  before_filter :load_person
 
  def load_person
    @person = Person.find(params[:person_id])
  end
end
