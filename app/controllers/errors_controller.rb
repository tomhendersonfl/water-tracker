class ErrorsController < ApplicationController
  layout 'error'
  def error_404
    @not_found_path = params[:not_found]
    respond_to do |format|
      format.json
      format.html # index.html.erb
      format.png
    end
  end
end
