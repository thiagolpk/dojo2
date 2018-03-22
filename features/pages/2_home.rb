class Home < SitePrism::Page

	element :create, :xpath, '//*[@id="quickcreatetop"]/a'
	element :create_task, :xpath, '//*[@id="quickcreatetop"]/ul/li[7]/a'
	element :activities, 'a#grouptab_3'
	element :tasks, 'a#moduleTab_6_Tasks'

	def teste(msg)
		assert_text(msg)
	end
end