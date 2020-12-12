class ReportsController < ApplicationController
  def index
    @reports = Dir["public/reports/*"]
  end

  def create
    ReporteJob.perform_later
    flash[:notice] = "Precessing..."
    redirect_to '/reports'
  end
end
