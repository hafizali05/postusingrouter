
Router.route 'posts',
	path: '/posts'
	layoutTemplate: 'layout'
	template: 'view_posts'

Meteor.subscribe 'posts'

Router.route 'edit',
	path: '/posts/:post_id/edit'
	layoutTemplate: 'layout'
	template: 'edit'
	data: ->
		# Posts.findOne(@params._id)
		# _id=Posts.findOne(@params._id)
		# console.log "edit function",_id
		id = @params.post_id
		console.log 'id:',id
	onAfterAction : ->
			post= Posts.findOne({_id:@params.post_id})
			console.log 'post_id:',post
			post

Router.route 'create',
	path: '/posts/create'
	layoutTemplate: 'layout'
	template: 'create_post'
	onBeforeAction:->
		if !Meteor.userId()
			Router.go('/login')
		else
			@next()
		return

Router.route 'login',
	path: '/login'
	layout: 'layout'
	template: 'login'

Router.route '/',(->
       @render 'home'
       ), name: 'home'


Router.configure
	layoutTemplate: 'layout'
	notFoundTemplate: 'notFound'
	loadingTemplate: 'loading',


	
