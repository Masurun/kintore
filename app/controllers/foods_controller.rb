class FoodsController < ApplicationController
  
    before_action :authenticate_user!,except:[:index,:show]
      before_action :set_food,  only:[:show,:edit,:destroy,:update]
      
  
    def index
      @foods=Food.all.includes(:user).order('created_at DESC')
    end
  
    def new
      @food = Food.new
    end
  
    def create
      @food = Food.new(food_params)
      if @food.save
        return redirect_to foods_path
      else
        render :new
      end
    end
    def show
      
    end
  
    def edit
      
    end
  
    def update
      if @food.update(food_params)
        redirect_to foods_path
      else
        render :edit
      end
    end
  
    def destroy
        if @food.destroy
          redirect_to foods_path
        end
    end
  
    
   
    private
    def food_params
      params.require(:food).permit(
        :other,
        :morning,
        :lunch,
        :dinner,
        :weight,
        :fat_per,
        :image4,
        :image5,
        :image6,
        :image7,
        :image8,
        :image9,
        ).merge(user_id: current_user.id)
    end
    def set_food
      @food=Food.find(params[:id])
    end
end
