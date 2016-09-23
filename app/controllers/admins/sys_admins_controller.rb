class Admins::SysAdminsController < AdminController


  def model_type
    'Admin'
  end

  # GET /admins/sys_admins
  # GET /admins/sys_admins.json
  def index
    respond_to do |format|
      format.json {render json: process_search(Admin)}
      format.html # index.html.erb
    end
  end # def index


  # GET /admins/sys_admins/1 (will redirect to edit)
  # GET /admins/sys_admins/1.json
  def show
    respond_to do |format|
      format.html { redirect_to action: 'edit', id: @admin.id }
      format.json { render json: { rows: (@admin.nil? ? [] : [@admin.marshall]), status: (@admin.nil? ? 404 : 200), total: (@admin.nil? ? 0 : 1) } }
    end
  end # def show


  # GET /admins/sys_admins/new
  # GET /admins/sys_admins/new.json
  def new
    @admin = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: { rows: (@admin.nil? ? [] : [@admin.marshall]), status: (@admin.nil? ? 404 : 200), total: (@admin.nil? ? 0 : 1) } }
    end
  end # def new


  # POST /admins/sys_admins
  # POST /admins/sys_admins.json
  def create
    @admin = User.new(sys_admin_params)
    base = 'Failed to save the system administrator. '
    respond_to do |format|
      if @admin.save
        flash[:success] = 'The system administrator was successfully created.'
        format.html { redirect_to admins_system administrator_url(@admin)  }
        format.json { render json: { rows: [@admin.marshall], status: 200, total: 1 } }
      else
        flash[:error] = 'An error occured while creating the system administrator.'
        format.html { render action: "new", alert: base + @admin.errors.full_messages.to_sentence + "." }
        format.json { render json: { errors: @admin.errors, status: :unprocessable_entity } }
      end
    end
  end # def create


  # GET /admins/sys_admins/1/edit
  def edit
  end # def edit


  # PATCH /admins/sys_admins/1
  # PATCH /admins/sys_admins/1.json
  def update
    base = 'Failed to save the system administrator. '
    respond_to do |format|
      if @admin.update_attributes(sys_admin_params)
        flash[:success] = 'The system administrator was successfully updated.'
        format.html { redirect_to edit_admins_system administrator_url(@admin) }
        format.json { render json: { rows: [@admin.marshall], status: 200, total: 1 } }
      else
        flash[:error] = 'An error occured while updating the system administrator.'
        format.html { render action: "edit", alert: base + @admin.errors.full_messages.to_sentence + "." }
        format.json { render json: { errors: @admin.errors, status: :unprocessable_entity } }
      end
    end
  end # def update


  # DELETE /admins/sys_admins/1
  # DELETE /admins/sys_admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_sys_admins_url }
      format.json { render json: { status: 200 } }
    end
  end

  private

  # Returns the strong parameters from the request
  def sys_admin_params
    params.require(:sys_admin).permit(Admin.column_names)
  end # def sys_admin_params

end # class Admins::SysAdminsController
