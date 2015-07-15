# class Users::RegistrationsController < Devise::RegistrationsController
#
#   def create
#     super do |resource|
#       if params[:plan]
#         resource.plan_id = params[:plan]
#         resource.save
#       end
#     end
#   end
# end