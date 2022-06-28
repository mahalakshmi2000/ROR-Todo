class TodosController < ApplicationController
  def index
    puts "Index method"
    @todo = Todo.new
    @showlist = Todo.all.map do |list|
      list
    end
    @showlist
  end

  # def home
  #   render 'todos/home'
  # end

 def create
  new_todo = Todo.new(user_params)

  if new_todo.save
    render plain: "Successfull"
  else
    render plain: "Failed"
  end
  
 end
  def user_params
    params.require(:todo).permit(:Task,:Date)
  end
  def destroy
    @todolist = Todo.find(params[:id])
    @todolist.destroy

    redirect_to root_path
  end

end
