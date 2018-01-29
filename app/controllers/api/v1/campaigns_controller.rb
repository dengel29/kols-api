class Api::V1::CampaignsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ], fallback_to_devise: false
  before_action :set_campaign, only: [ :show, :update ]

  def update
    if @campaign.update(campaign_params)
      render :show
    else
      render_error
    end
  end

  def show
    # @campaign = set_campaign

  end

  def index
    @campaigns = policy_scope(Campaign)
    @campaigns = Campaign.all
  end

  private

  def campaign_params
    params.require(:campaign).permit(:title, :content)
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
    authorize @campaign  # For Pundit
  end

  def render_error
    render json: { errors: @campaign.errors.full_messages },
      status: :unprocessable_entity
  end

end
