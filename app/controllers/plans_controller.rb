class PlansController < ApplicationController
  def index
    @plans = Plan.all

    render("plans/index.html.erb")
  end

  def show
    @plan = Plan.find(params[:id])

    render("plans/show.html.erb")
  end

  def new
    @plan = Plan.new

    render("plans/new.html.erb")
  end

  def create
    @plan = Plan.new

    @plan.meal_id = params[:meal_id]
    @plan.meal_time = params[:meal_time]
    @plan.meal_day = params[:meal_day]
    @plan.week_id = params[:week_id]
    @plan.user_id = params[:user_id]

    save_status = @plan.save

    if save_status == true
      redirect_to("/plans/#{@plan.id}", :notice => "Plan created successfully.")
    else
      render("plans/new.html.erb")
    end
  end

  def edit
    @plan = Plan.find(params[:id])

    render("plans/edit.html.erb")
  end

  def update
    @plan = Plan.find(params[:id])

    @plan.meal_id = params[:meal_id]
    @plan.meal_time = params[:meal_time]
    @plan.meal_day = params[:meal_day]
    @plan.week_id = params[:week_id]
    @plan.user_id = params[:user_id]

    save_status = @plan.save

    if save_status == true
      redirect_to("/plans/#{@plan.id}", :notice => "Plan updated successfully.")
    else
      render("plans/edit.html.erb")
    end
  end

  def destroy
    @plan = Plan.find(params[:id])

    @plan.destroy

    if URI(request.referer).path == "/plans/#{@plan.id}"
      redirect_to("/", :notice => "Plan deleted.")
    else
      redirect_to(:back, :notice => "Plan deleted.")
    end
  end
end
