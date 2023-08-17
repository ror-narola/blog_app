# frozen_string_literal: true

class Authors::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  def create
    build_resource(sign_up_params)
    resource.save
    sign_in(resource_name, resource)
    render json: resource
  end

  private
  def sign_up_params
    params.required(:author).permit(:email, :password, :first_name, :last_name, :description)
  end
end
