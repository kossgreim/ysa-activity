class Admin::MainController < ApplicationController
  before_action :authenticate_user!

  def index
    @all = Registration.all.count
    @need_place = Registration.where(need_place: true).count
    @man = Registration.where(gender: 'male').count
    @woman = Registration.where(gender: 'female').count
    @friday = Registration.where(arriving: 'Friday').count
    @saterday = Registration.where(arriving: 'Saturday').count

  end

  def report
  end

  def search
  end
end
