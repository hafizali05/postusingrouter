Template.create_post.events
	'click .submit': (event,template) ->
		title = template.find('[name=title]').value
		console.log 'name value:',title
		description = template.find('[name=description]').value
		console.log 'description value',description
		data =
			title : title
			description : description
			user_id : Meteor.userId()
			created_at: new Date()
			# updated_at: created_at
		console.log 'data',data
		Posts.insert(data)
		Router.go 'posts'


