class Admins::LoginsController < AdminController

  # GET /logins
  # GET /logins.json
  def index
    respond_to do |format|
      format.json {render json: process_search(Login, :json, where: {user_id: params[:user_id]})}
      format.html # index.html.erb
    end
  end


end # class Admins::LoginsController
