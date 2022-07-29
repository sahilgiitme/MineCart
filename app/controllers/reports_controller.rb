class ReportsController < ApplicationController
  before_action :authenticate_user!

  def index
    # binding.pry
    @report = Report.all
  end

  def show
    @vendor = Vendor.all
  end

  def get_by_vendor
    @report = Report.where vendor_name: params[:report]
    render json: { data: @report } if @report
  end

  def get_by_type
    @report = Report.where prod_type: params[:report]
    render json: { data: @report } if @report
  end

  def edit
    @type = ProductType.all
  end
end
