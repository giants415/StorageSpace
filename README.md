#Storage Space



![StorageSpace] (http://i.imgur.com/dsLi6AT.png)

##Collaborators
Zach Fong, Scott Whitman, Alicia Brown, Andrew Vinocur

##Concept
Storage Space was developed to connect people with excess space in their homes to people that need a place to store their excess belongings.

###Initial Wireframes

**Homepage**

<img width="250" alt="screen shot 2016-10-19 at 8 37 51 pm" src="https://cloud.githubusercontent.com/assets/18539089/19567518/ceb8efee-96a2-11e6-9e3b-eefbbf2f0ff0.png">

**Sign Up**

<img width="250" alt="screen shot 2016-10-19 at 8 38 07 pm" src="https://cloud.githubusercontent.com/assets/18539089/19567590/1e73691a-96a3-11e6-9966-7fcc0dcd23ba.png">

**Log In**

<img width="250" alt="screen shot 2016-10-20 at 8 57 12 am" src="https://cloud.githubusercontent.com/assets/18539089/19567618/3f6ed5a0-96a3-11e6-9fa8-c232dd7ca509.png">

**Listing Page**

<img width="250" alt="screen shot 2016-10-20 at 8 58 55 am" src="https://cloud.githubusercontent.com/assets/18539089/19567679/7a5d5cf4-96a3-11e6-923a-7a1f0cec3bce.png">

**Profile Page**

<img width="250" alt="screen shot 2016-10-20 at 9 01 18 am" src="https://cloud.githubusercontent.com/assets/18539089/19567748/cbc67abc-96a3-11e6-8a5e-cc51b8f571ab.png">

**Transaction Page**

<img width="250" alt="screen shot 2016-10-20 at 9 02 27 am" src="https://cloud.githubusercontent.com/assets/18539089/19568633/2da6d56c-96a7-11e6-8555-864a1418c300.png">


###Future Development Ideas


##Technologies Used
1. Rails 5
	* ActionMailer
2. Ruby, jQuery, Javascript
3. Gems: Figaro, Bcrypt, Mapbox, Geocoder, Mail, Paperclip
4. Stripe
5. Materialize, SASS
6. Heroku

##Code Examples
###Zach
```
<!DOCTYPE html>
<html>
  <head>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
    <title></title>
  </head>
  <body>
    <h1>Welcome To Storage Space!</h1>
    <br>
    <span><%= @user.name %> welcome to storage space. Thank You for joining.</span>
    <p>Authorization Link: <%= confirm_email_user_url(@user.AuthCode)%></p>

  </body>
</html></span>

```

```
  def confirm_email
    user = User.find_by_AuthCode(params[:id])
    if user
      user.email_activate
      login(user)
      flash[:notice] = "Successfully verified email!"
      redirect_to user
    else
      redirect_to root_url
    end
  end
```

```
<span><%= hidden_field_tag(:amount, '%.2f' % (@space.price*((@transaction.end_date-@transaction.start_date)/30))) %></span>

```


###Scott
```
<div class="card">
	<div class="card-image waves-effect waves-block waves-light">
		<%= image_tag (space.photo ? space.photo : space.photo1.url(:medium)), class: "activator photoArea" %>
	</div>
</div>
```
###Alicia
```
def create

    @amount = params[:amount]

    @amount = @amount.gsub('$', '').gsub(',', '')

    begin
      @amount = Float(@amount).round(2)
    rescue
      flash[:error] = 'Charge not completed. Please enter a valid amount in USD ($).'
      redirect_to new_charge_path
      return
    end

    @amount = (@amount * 100).to_i # Must be an integer!

    if @amount < 500
      flash[:error] = 'Charge not completed. Donation amount must be at least $5.'
      redirect_to new_charge_path
      return
    end

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount.to_i,
      :description => 'StorageSpace Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
```
###Andrew
```
ActionMailer::Base.smtp_settings = {
  :address      => "smtp.gmail.com",
  :port         => 587,
  :domain       => "gmail.com",
  :user_name    => ENV["GMAIL_USERNAME"],
  :password     => ENV["GMAIL_PASSWORD"],
  :authentication => "plain",
  :enable_starttls_auto => true
}

```
