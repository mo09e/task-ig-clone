class ContactPictureMailer < ApplicationMailer
  def contact_picture_mail(picture)
    @picture = picture
    mail to: "moe_akahane@diveintocode.jp", subject: "投稿確認メール"
  end

  # override
  def deliver_later!
    if Rails.env.heroku_review_app?
      deliver_now!
    else
      super
    end
  end

    # override
  def deliver_later
    if Rails.env.heroku_review_app?
      deliver_now
    else
      super
    end
  end
end
