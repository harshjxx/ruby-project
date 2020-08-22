class StudentsController < ApplicationController

  before_action :set_student,  only: [:edit, :update, :show, :destroy]

  before_action :require_user, except: [:index, :show]

  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index 
    @students= Student.paginate(page: params[:page])
  end 


  def new 
    @student =Student.new

    # render json: { html: render_to_string(partial: 'form') }
  end



  def edit
    
  end 

  def update
    
      if @student.update(student_params)
        flash[:success] = "Student was successfully updated"
        redirect_to student_path(@student)
      else 
        render 'edit'
      end
  end
  
  
  def create 
    #   byebug
    # render html: params[:student].inspect
    @student =Student.new(student_params)
    @student.user = current_user
      if @student.save
        flash[:success]="student is created"
        redirect_to student_path(@student)
      else
        render 'new'
      end
  
  end

  def destroy
    
    @student.destroy
    flash[:danger] = "student is successfully deleted"

    redirect_to students_path
  end 
  def show
    #byebug
    
    puts "#{@student}"
  end
 
   

  private
    def set_student
      @student = Student.find(params[:id])
    end
    
    def student_params
      params.require(:student).permit(:name,:age,:city,:Address,:postal_code)
    end
    
    def require_same_user
      if current_user !=@student.user and !current_user.admin?
        flash[:danger] ="you can edit or delete your own students"
        redirect_to root_path
      end
    end
  
  end