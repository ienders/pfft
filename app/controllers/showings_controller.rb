class ShowingsController < ApplicationController

  before_filter :authenticate_user!, :except => [ :index ]

  def index
    params[:offset] ||= 0
    params[:offset] = params[:offset].to_i
    @month = Time.now.utc.beginning_of_month + params[:offset].months
    @showings = Showing.where('showtime between ? and ?', @month, @month.end_of_month).order('showtime ASC').all
  end

  def new
    @showing = Showing.new
  end

  def create
    @showing = Showing.create(params[:showing])
    redirect_to :action => 'new'
  end

  def destroy
    Showing.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

end
