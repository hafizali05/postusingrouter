Template.signup.events
	'click #signup': (event, template) ->
		event.preventDefault()
		email = template.find('[name=email]').value
		console.log 'email:',name.email
		password = template.find('[name=password]').value
		console.log("email, password: ", email, password);
		Accounts.createUser
		    email: email
		    password: password
		Router.go('home')
		return