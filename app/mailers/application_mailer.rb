class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  # Heroku web apps do not access worker's filesystem
  # https://github.com/fgrehm/letter_opener_web#usage-on-heroku

  # override
  # def self.method_missing(method_name, *args)
  #   if action_methods.include?(method_name.to_s)
  #    ContactPictureMailer.new(self, method_name, *args)
  #   else
  #    super
  #  end
  # end
end
