# Description:
#   Guru
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_GURU_EMAIL
#   HUBOT_GURU_PASS
#
# Commands:
#   hubot guru <query> - Searches for facts matching <string>
#
# Author:
#   lablayers

module.exports = (robot) ->
  robot.hear /guru me (.*)/i, (msg) ->
    query = escape(msg.match[1])
    user = process.env.HUBOT_GURU_EMAIL
    pass = process.env.HUBOT_GURU_PASS
    auth = 'Basic ' + new Buffer(user + ':' + pass).toString('base64');
    msg.http("https://api.getguru.com/api/v1/search/?terms=#{query}")
      .headers(Authorization: auth, Accept: 'application/json')
      .get() (err, res, body) ->
        switch res.statusCode
          when 200
            try
              json = JSON.parse(body)
              msg.send "#{json[0].preferredPhrase} by #{json[0].owner.firstName}\n\n#{json[0].content}\n"
            catch error
              msg.send "Sorry, #{query} could not be found."
          when 404
            msg.send "Sorry, #{query} could not be found. (404)"
          when 401
            msg.send "You need to authenticate by setting the HUBOT_GURU_EMAIL & HUBOT_GURU_PASS environment variables"
          else
            msg.send "Unable to process your request and we're not sure why :("