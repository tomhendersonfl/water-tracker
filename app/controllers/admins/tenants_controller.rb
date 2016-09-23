class Admins::TenantsController < AdminController

  # GET /admins/tenants
  # GET /admins/tenants.json
  def index
    respond_to do |format|
      format.json {render json: process_search(Tenant)}
      format.html # index.html.erb
    end
  end # def index


  # GET /admins/tenants/1 (will redirect to edit)
  # GET /admins/tenants/1.json
  def show
    respond_to do |format|
      format.html { redirect_to action: 'edit', id: @tenant.id }
      format.json { render json: { rows: (@tenant.nil? ? [] : [@tenant.marshall]), status: (@tenant.nil? ? 404 : 200), total: (@tenant.nil? ? 0 : 1) } }
    end
  end # def show


  # GET /admins/tenants/new
  # GET /admins/tenants/new.json
  def new
    @tenant = Tenant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: { rows: (@tenant.nil? ? [] : [@tenant.marshall]), status: (@tenant.nil? ? 404 : 200), total: (@tenant.nil? ? 0 : 1) } }
    end
  end # def new


  # POST /admins/tenants
  # POST /admins/tenants.json
  def create
    @tenant = Tenant.new(tenant_params)
    base = 'Failed to save the tenant. '
    respond_to do |format|
      if @tenant.save
        flash[:success] = 'The tenant was successfully created.'
        format.html { redirect_to [:admins, @tenant]  }
        format.json { render json: { rows: [@tenant.marshall], status: 200, total: 1 } }
      else
        flash[:error] = 'An error occured while creating the tenant.'
        format.html { render action: "new", alert: base + @tenant.errors.full_messages.to_sentence + "." }
        format.json { render json: { errors: @tenant.errors, status: :unprocessable_entity } }
      end
    end
  end # def create


  # GET /admins/tenants/1/edit
  def edit
  end # def edit


  # PATCH /admins/tenants/1
  # PATCH /admins/tenants/1.json
  def update
    base = 'Failed to save the tenant. '
    respond_to do |format|
      if @tenant.update_attributes(tenant_params)
        flash[:success] = 'The tenant was successfully updated.'
        format.html { redirect_to [:admins, @tenant] }
        format.json { render json: { rows: [@tenant.marshall], status: 200, total: 1 } }
      else
        flash[:error] = 'An error occured while updating the tenant.'
        format.html { render action: "edit", alert: base + @tenant.errors.full_messages.to_sentence + "." }
        format.json { render json: { errors: @tenant.errors, status: :unprocessable_entity } }
      end
    end
  end # def update


  # DELETE /admins/tenants/1
  # DELETE /admins/tenants/1.json
  def destroy
    @tenant.destroy
    respond_to do |format|
      format.html { redirect_to admins_tenants_url }
      format.json { render json: { status: 200 } }
    end
  end

  private

  # Returns the strong parameters from the request
  def tenant_params
    params.require(:tenant).permit(Tenant.column_names)
  end # def tenant_params

end # class Admins::TenantsController
