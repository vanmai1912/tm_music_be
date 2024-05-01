class UserMailer < ApplicationMailer
  default from: 'admin@music.com'
 
  def music_shared invitation
    @invitation = invitation

    mail(to: @invitation.email, subject: 'Thông báo: Bạn vừa nhận được bài nhạc hay')
  end

  def send_email_after_create_song(user, song, copyright)
    @user = user
    @song = song
    @copyright = copyright
    if @copyright
      mail(to: user.email, subject: "Thông báo: #{@song.title} đã cập nhật, mua để trải nghiệm.")
    else
      mail(to: user.email, subject: 'Thông báo: Nghệ sĩ yêu thích của bạn vừa thêm bài nhạc mới.')
    end 
  end
  
end
