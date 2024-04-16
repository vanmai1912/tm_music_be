class UserMailer < ApplicationMailer
  default from: 'admin@music.com'
 
  def music_shared invitation
    @invitation = invitation

    mail(to: @invitation.email, subject: 'Bạn vừa nhận được bài nhạc hay')
  end
end
