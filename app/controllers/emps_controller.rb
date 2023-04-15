class EmpsController < ApplicationController
  def index
  	@emps =Emp.all
  end

  def show
  	@emps =Emp.find(params[:id])
  end

  def new
  	@emp =Emp.new
  end

  def create
  	@emp = Emp.new(emp_params)
  	if @emp.save
  	 redirect_to emps_path
  	else
  	 render :new
  	end  	
  end
  def edit
  	@emp = Emp.find(params[:id])
  end
  def update
  	@emp = Emp.find(params[:id])
  	if @emp.update(emp_params)
        redirect_to emps_path
    else
      render :edit
    end      
  end	
  
  def destroy
  	@emp =Emp.find(params[:id])
  	@emp.destroy

  	redirect_to emps_path
  end	
  private

  def emp_params
    params.require(:emp).permit(:name, :age, :gender, :designation)
  end
end
