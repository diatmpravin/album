class LoginsController < ApplicationController
  # GET /logins
  # GET /logins.xml
  def index
    @logins = Login.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @logins }
    end
  end

  # GET /logins/1
  # GET /logins/1.xml
  def show
    @login = Login.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @login }
    end
  end

  # GET /logins/new
  # GET /logins/new.xml
  def new
    @login = Login.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @login }
    end
  end

  # GET /logins/1/edit
  def edit
    @login = Login.find(params[:id])
  end
  
  # POST /logins
  # POST /logins.xml
  def create
		@signup = Signup.new(params[:userform])
		valid_user = Signup.find(:first,:conditions => ["email = ? and password = ?",@signup.email, @signup.password])
		if valid_user
			session[:user_id]=valid_user.email
			redirect_to :controller=>'albums', :action => 'index'
		else
			flash[:notice] = "Invalid Email Id and Password"
			redirect_to :action=> 'again'
		end
  end
  
  
def again
    if !session[:user_id]
      redirect_to :action=> 'new'
    end
  end

  def logout
    if session[:user_id]
      reset_session
      session.delete :user_id
      redirect_to :action=> 'new'
    end
end

  # PUT /logins/1
  # PUT /logins/1.xml
  def update
    @login = Login.find(params[:id])

    respond_to do |format|
      if @login.update_attributes(params[:login])
        format.html { redirect_to(@login, :notice => 'Login was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @login.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /logins/1
  # DELETE /logins/1.xml
  def destroy
    @login = Login.find(params[:id])
    @login.destroy

    respond_to do |format|
      format.html { redirect_to(logins_url) }
      format.xml  { head :ok }
    end
  end
end