+++

fragment = "contact"
#disabled = true
date = "2017-09-10"
weight = 100
background = "white"
form_name = "defaultContact"

title = "Contact"
#title_align = "left" # Default is center, can be left, right or center

# PostURL can be used with backends such as mailout from caddy
email = "info@researchsoft.org"
button_text = "Send" # defaults to theme default
netlify = true

[message]
  success = "Thank you for contacting us." # defaults to theme default
  error = "Message could not be send. Please contact us at info@researchsoft.org instead." # defaults to theme default

# Only defined fields are shown in contact form
[fields.name]
  text = "Your Name *"
  error = "Please enter your name" # defaults to theme default

[fields.email]
  text = "Your Email *"
  error = "Please enter your email address" # defaults to theme default

[fields.message]
  text = "Your Message *"
  error = "Please enter a message" # defaults to theme default

+++