class OrganizationsController < ApplicationController
  before_action :authenticate_user!, except: :sample
  before_action :set_year, only: [:show, :sync, :sample]
  before_action :set_organization, only: [:show, :sync]
  after_action :verify_authorized, except: :sample

  def index
    authorize Organization
    if current_user.organizations.count > 0
      redirect_to organization_path(current_user.organizations.first)
    else
      redirect_to page_path('no_org')
    end
  end

  def sample
    @organization = Organization.all.sample
    render :show
  end

  def show
    authorize @organization
  end

  def sync
    authorize @organization
    @organization.sync!(@year, current_user)
    render layout: false
  end

  private

  def set_organization
    @organization = current_user.organizations.find(params[:id])
  end

  def set_year
    @year = params[:year] || Time.now.year
  end
end
