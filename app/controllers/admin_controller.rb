class AdminController < ApplicationController

  before_action :authenticate_admin!

  include AdminFeatures
  include ResourceFeatures

  layout 'administration'
end
