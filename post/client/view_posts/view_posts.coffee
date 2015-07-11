# Template.view_posts.post = ->
#   Posts.find({},{sort: {created_at: -1}})

# Template.view_posts.events
# 	'click .delete': (e) ->
#     e.preventDefault()
#     if confirm('Delete this post?')
#       post_id = Router.current().params.post_id
#       Posts.remove post_id
#       Router.go 'posts'
#     return


Template.view_posts.helpers
	post: ->
		Posts.find({},{sort: {created_at: -1}})