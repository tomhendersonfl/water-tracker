class SupportController < TenantedController

  def get_started
    @hide_footer = true
  end

  def get_help
    @hide_footer = true
  end

  def survey_complete
    @hide_footer = true
  end

end # class SupportController
