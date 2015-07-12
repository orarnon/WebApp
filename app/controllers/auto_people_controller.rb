class AutoPeopleController < ApplicationController
  def index
    @people = Person.order(:FirstName).where('FirstName like ?', "%#{params[:term]}%")
    render json: @people.map(&:FirstName)
  end
end
