class HealthController < ApplicationController
  rescue_from(StandardError) { render head: :service_unavailable }

  def show
    head :ok
  end
end
