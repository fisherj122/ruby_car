class CarsController < ApplicationController

  def index
    if !params.has_key?(:make) || params[:make].strip.empty?
      flash.now[:alert] = "Please enter a valid car make"
    elsif !params.has_key?(:year) || params[:year].strip.empty?
      flash.now[:alert] = "Please enter a valid car make"
    else
      model_year = params[:year]
      make = params[:make]
      color = params[:color]
      @car = Car.new(make, model_year, color)
      session[:car] = @car.to_yaml
      Rails.logger.info session[:car]

      redirect_to "/cars/status"
    end
  end

  def status
    Rails.logger.info session[:car]
    if session[:car] != nil && session[:car] != ""
      @car = YAML.load(session[:car])
    else
      redirect_to "/cars/index"
    end
  end

  def accelerate
    @car = YAML.load(session[:car])
    @car.accelerate
    session[:car] = @car.to_yaml
    redirect_to "/cars/status"
  end

  def brake
    @car = YAML.load(session[:car])
    @car.brake
    session[:car] = @car.to_yaml
    redirect_to "/cars/status"
  end

  def lights
    @car = YAML.load(session[:car])
    @car.toggle
    session[:car] = @car.to_yaml
    redirect_to "/cars/status"
  end

  def park
    @car = YAML.load(session[:car])
    @car.park
    session[:car] = @car.to_yaml
    redirect_to "/cars/status"
  end
end
