class Admin::MainController < ApplicationController
  before_action :authenticate_user!
  layout :admin
  def index
  end

  def report
  end

  def search
  end
end
