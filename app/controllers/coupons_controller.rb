class CouponsController < ApplicationController

  def index

  end

  def create
    puts params
    coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(coupon.id)
  end

  def show
    puts params
    @coupon = Coupon.find(params[:id])
    render :show
  end
  def new

  end
end
