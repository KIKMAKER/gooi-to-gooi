class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all
  end

  def show
    @subscription = Subscription.find(params[:id])
    @collections = @subscription.collections
  end

  def tuesday
    @subscriptions = Subscription.where(collection_day: 'Tuesday')
  end

  def wednesday
    @subscriptions = Subscription.where(collection_day: 'Wednesday')
  end
end
