class Api::V1::CampaignsController < Api::V1::BaseController
  before_action :set_campaign, only: [ :show ]

  def show
    # @campaign = set_campaign

  end

  def index
    @campaigns = policy_scope(Campaign)
    @campaigns = Campaign.all
  end

  private

  def set_campaign
    @campaign = Campaign.find(params[:id])
    authorize @campaign  # For Pundit
  end

end
