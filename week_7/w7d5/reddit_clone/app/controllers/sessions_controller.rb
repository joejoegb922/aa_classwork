class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    debugger
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    #in postman
    #key user[age]
    #value 10

    # we see in debugger "user"=>{"username"=>"joe", "password"=>"joejoe"}
    # so to access the username "joe" we would have to use the key username
    # params[:user][:username] <-- nested hash

    # @user = User.find_by(id: params[:id]) --> id => 1
    # "user"=>{"username"=>"joe", "password"=>"joejoe"}
    #     --> params[:user][:username]


    if @user
      login(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ["Invalid username and/or password"]
      render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end
end
