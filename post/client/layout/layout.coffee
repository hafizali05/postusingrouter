Template.layout.events 'click .logout': (event) ->
  event.preventDefault()
  Meteor.logout()
  Router.go 'login'
  return
