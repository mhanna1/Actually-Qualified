class ApplicationMailer < ActionMailer::Base
  default from: Figaro.env.gmail_from
  layout 'mailer'
end
