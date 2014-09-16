class PagesController < ApplicationController
  layout 'application'
  def index
  end

  def program
    send_file(
        "#{Rails.root}/public/sc.pdf",
        filename: "ysa_weekend_prague_program.pdf",
        type: "application/pdf"
    )
  end
end
