class Api::V1::CampaignsController < Api::V1::BaseController
  before_action :set_restaurant, only: [ :show ]

  def show
  end

  def index
    @campaigns = policy_scope(Campaign)
    @campaigns = Campaign.all
  end

  private

  def set_restaurant
    @Campaign = Campaign.find(params[:id])
    authorize @Campaign  # For Pundit
  end

end
