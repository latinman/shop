class StripeCustomer

  def initialize(user)
    @user = user
  end

  def create(plan_id)
    customer = Stripe::Customer.create(description: @user.email, plan: plan)
    @user.update_attribute(:stripe_id, customer.id)
    customer
  end
end