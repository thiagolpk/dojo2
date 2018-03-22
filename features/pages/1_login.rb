class Login < SitePrism::Page
	set_url "https://demo.suiteondemand.com"

	element :usuario, 'input#user_name'
	element :senha, 'input#username_password'
	element :log_in, 'input#bigbutton'

	def logar (user, password)
		usuario.set(user)
		senha.set(password)
		log_in.click
	end

	def teste(msg)
		assert_text(msg)
	end
end