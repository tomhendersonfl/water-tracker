ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address:        'smtp.sendgrid.net',
    port:           '587',
    authentication: :plain,
    # user_name: 'iTHRIVEplan',
    # password: 'ithriveplan2016',
    # domain: 'ithriveplan.com',
    user_name:      'jihaia',
    password:       '1ro@SendGrid1803',
    domain:         'alerts.buildit.io',
    enable_starttls_auto: true
}
