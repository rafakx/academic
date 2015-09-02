class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end

  def edit
  end

  def create
    @test = Test.new(test_params)

      if @test.save
        redirect_to @test
      else
        render :new
      end
  end

  def update
      if @test.update(test_params)
        redirect_to @test
      else
        render :edit
      end
  end

  def destroy
    @test.destroy
    
    redirect_to tests_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:teacher_id, :course_id, :user_id, :year, :number, :content)
    end
end
