class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"
  layout 'awesome' # use awesome.(html|text).erb as the layout
  def welcome_email(user_1)
    @user = user_1
    email_with_name = "#{@user.name} <#{@user.email}>"
    @url  = user_url(@user)
    #headers["X-Spam"] = value
    headers("X-Spam" => value, "X-Special" => another_value)
    attachments['terms.pdf'] = File.read('/path/terms.pdf')
    mail("X-Spam" => value, :to => email_with_name, :subject => "Please see the Terms and Conditions attached", :template_path => 'notifications', :template_name => 'another' ) do |format|
      format.html{ render :layout => 'my_layout' }
      format.text{ render :text => 'Render text' }
    end
  end

  def receive(email)
    page = Page.find_by_address(email.to.first)
    page.emails.create(
      :subject => email.subject,
      :body => email.body
    )

    if email.has_attachments?
      email.attachments.each do |attachment|
        page.attachments.create({
          :file => attachment,
          :description => email.subject
        })
      end
    end
  end
end
