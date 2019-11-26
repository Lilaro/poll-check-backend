class PollSitesController < ApplicationController
  before_action :set_poll_site, only: [:show, :update, :destroy]

  # GET /poll_sites
  def index
    @poll_sites = PollSite.all

    render json: @poll_sites
  end

  # GET /poll_sites/1
  def show
    render json: @poll_site
  end

  # POST /poll_sites
  def create
    @poll_site = PollSite.new(poll_site_params)

    if @poll_site.save
      render json: @poll_site, status: :created, location: @poll_site
    else
      render json: @poll_site.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poll_sites/1
  def update
    if @poll_site.find(poll_site_params)
      render json: @poll_site
    else
      render json: @poll_site.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poll_sites/1
  def destroy
    @poll_site.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_site
      @poll_site = PollSite.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poll_site_params
      params.require(:poll_site).permit(:name, :latitude, :longitude, :borough, :community_board, :council_district, :site_number, :zip_code, :city, :voter_entrance)
    end
end
