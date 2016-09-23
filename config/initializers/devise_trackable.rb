Warden::Manager.after_set_user do |record, warden, options|
  if record.respond_to?(:update_tracked_fields!) && warden.authenticated?(options[:scope]) && ! warden.request.env['devise.skip_trackable'] &&
    (record.last_sign_in_at.nil? || (Date.today - record.last_sign_in_at.to_date).to_i >= 1)
    record.update_tracked_fields!(warden.request)
  end
end
