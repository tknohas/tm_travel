class RegistrationsController < Devise::RegistrationsController
    def edit
        @user = current_user
    end

    def update
        @user = current_user
        if @registration.update
        redirect_to users_path
        else
        render "edit"
        end
    end
    protected
    def update_resource(resource, params)
      resource.update_without_password(params)
    end
  end