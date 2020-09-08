class SubscribeToNewsletterService
  def initialize(user)
    @user = user
    @gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    @audience_id = ENV['MAILCHIMP_AUDIENCE_ID']
  end

  def call
    begin
      @gibbon.lists(@audience_id).members.create(
        body: {
          email_address: @user.email,
          status: "subscribed",
          merge_fields: {
          FNAME: @user.name,
          #   LNAME: @user.last_name
          }
        }
      )
      @gibbon.lists(@audience_id).members(Digest::MD5.hexdigest(@user.email)).tags.create(
        body: {
          tags: [{name:"VOTE COLLAB", status:"active"}]
          }
      )
    rescue Gibbon::MailChimpError => e
     puts "Houston, we have a problem: #{e.message} - #{e.raw_body}"
    end
  end

end
