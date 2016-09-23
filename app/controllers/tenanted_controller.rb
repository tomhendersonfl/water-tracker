class TenantedController < ApplicationController

  before_action :authenticate_user!

  include TenantFeatures
  include ResourceFeatures

end # class TenantedController
