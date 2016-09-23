if defined?(ActionMailer)
  class Thrive::Mailer < Devise::Mailer
    include Devise::Mailers::Helpers

    helper :application
    helper :subdomain
    include Devise::Controllers::UrlHelpers

  end
end
