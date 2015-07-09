# Template.signin.events 
# 	'click #signin': (event) ->
# 		event.preventDefault()
#   		email = $('[name=email]').val()
#   		password = $('[name=password]').val()
# 		Meteor.loginWithPassword email, password
#   		console.log 'form submitted',user

Template.signin.events
	'click #signin': (event,template)->
		event.preventDefault()
		email = template.find('[name=email]').value
		password = template.find('[name=password]').value
		console.log 'form submitted'
		Meteor.loginWithPassword email, password, (err, res) ->
			console.log res
			if(err)
				console.log err
			else
				Router.go('create')



# Template.signup.events
# 	'click #signup': (event, template) ->
# 		event.preventDefault()
# 		email = template.find('[name=email]').value
# 		password = template.find('[name=password]').value
# 		console.log("email, password: ", email, password);
# 		Accounts.createUser
# 		    email: email
# 		    password: password
# 		return