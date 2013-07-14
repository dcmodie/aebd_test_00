# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    #create a profile
    p = Profile.new
    p.user_id=@user.id
    p.save
  end

  def update
    super
  end
end