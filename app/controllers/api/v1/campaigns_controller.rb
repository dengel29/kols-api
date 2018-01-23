class Api::V1::CampaignsController < Api::V1::BaseController
  def index
    @campaigns = policy_scope(Campaign)
  end
end
