module UsersHelper
  def job_icon
    if @user.profile.job_title =="Developer"
      "<i class='fa fa-laptop'></i>".html_safe
    elsif @user.profile.job_title =="Entrepreneur"
        "<i class='fa fa-briefcase'></i>".html_safe
    elsif @user.profile.job_title =="Investor"
        "<i class='fa fa-handshake'></i>".html_safe
    end
  end

  def icons_color
      if @user.profile.job_title =="Developer"
        p 'warning'
      elsif
        @user.profile.job_title =="Entrepreneur"
          p 'info'
      elsif
        @user.profile.job_title =="Investor"
          p 'success'
      end
  end
end
