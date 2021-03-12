class RecordsController < ApplicationController
  before_action :authenticate_user!,except:[:index,:show]
    before_action :set_record,  only:[:show,:edit,:destroy,:update]
    

  def index
    @records=Record.all.includes(:user).order('created_at DESC')
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      return redirect_to records_path
    else
      render :new
    end
  end
  def show
    
  end

  def edit
    
  end

  def update
    binding.pry
    if @record.update(record_params)
      redirect_to records_path
    else
      render :edit
    end
  end

  def destroy
   
      if @record.destroy
        redirect_to records_path
      end
  end

  
 
  private
  def record_params
    params.require(:record).permit(
      :shoulder_id,
      :arm_id,
      :breast_id,
      :abs_id,
      :spine_id,
      :leg_id,
      :weight,
      :fat_per ,  
      :free_info,
      :shoulder_info,
      :arm_info,
      :breast_info,    
      :abs_info,     
      :spine_info,    
      :leg_info,
      :content,
      images: []
      ).merge(user_id: current_user.id)
  end
  def set_record
    @record=Record.find(params[:id])
  end
end
