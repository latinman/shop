 class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :select_plan, only: :new

  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        resource.save
      end
    end
  end

   private

   def select_plan
     unless params[:plan] && params[:plan] == "3"
       flash[:notice] = "Please sign up before making purchases. Thank you!"
       redirect_to root_url
     end
   end
  end