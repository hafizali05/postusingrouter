Meteor.publish null, ->
  Meteor.users.find { _id: @userId }, fields:
    emails: 1
    profile: 1

