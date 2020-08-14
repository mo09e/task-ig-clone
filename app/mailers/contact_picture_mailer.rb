class ContactPictureMailer < ApplicationMailer
  def contact_picture_mail(picture)
    @picture = picture
    mail to: "moe_akahane@diveintocode.jp", subject: "投稿確認メール"
  end
end
