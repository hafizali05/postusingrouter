
# Router.route '/post/:view_posts'
Router.route 'posts',
	path: '/posts'
	layoutTemplate: 'layout'
	template: 'view_posts'

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


	
