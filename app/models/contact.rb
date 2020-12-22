class Contact < MailForm::Base
	attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers 
    {
	  	:subject => "Contact Form from: #{name}; #{email}",
	  	:to => "rsuazo2@gmail.com",
	  	:from => 'r69er87@gmail.com'
	  }
	end
end