user = Meteor.user()
email = user and user.emails and user.emails[0].address
console.log email