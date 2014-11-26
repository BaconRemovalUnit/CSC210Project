class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  
  def new
    @comment = Comment.new
    render 'form'
  end
    
  def create
    ActionController::Parameters.permit_all_parameters = true
    params[:comment][:username] = User.find_by(id: current_user)._id
    @comment = Comment.create( comment_params )
    @comment_div = '#comment_'+ @comment.item.to_s
    respond_to do |format|
      if @comment.save
        format.html { redirect_to comment_path(@comment), notice: 'Thing was successfully created.' }
        format.json { render json: @comment }
        
        format.js 
      else
        format.html { render :new }
        format.json { render json: @comment.errors.full_messages, status: :unprocessable_entity }
        format.js
      end
    end
  end
  # def create
#     
    # ActionController::Parameters.permit_all_parameters = true
    # @comment = Comment.new(params[:comment])
        # if @comment.save
      # redirect_to  home_welcome_path
    # else
      # redirect_to  :action => "newComment"
    # end
  # end
  
  def modify
    @comment = Comment.find(params[:id])
  end
  
  def update
    ActionController::Parameters.permit_all_parameters = true
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])
       
    
      redirect_to comments_index_path
    
       
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def destroy
    Comment.find(params[:id]).delete
    redirect_to comment_index_path
  end
  
  def render_form
    render 'form'
  end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :item, :user)
    end
  
end