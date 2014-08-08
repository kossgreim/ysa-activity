class Admin::MainController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def report
  end

  def search
  end
end
