---
# Leave the homepage title empty to use the site title

title: Contact
date: 2022-10-24

type: landing

sections:
  - block: markdown
    content:
      title: 
      text:   |
        Contact
        {style="color: white; font-size: 2rem; text-align: center; "}
    design:
      background:
        image:
          filename: main-hero.png
          filters:
            brightness: 1
          parallax: false
          position: bottom
          size: cover
          text_color_light: false  
      spacing:
        padding: ["4rem", "2rem"]

  - block: contact
    content:
      title: 
      text: |-
        <div class="d-flex justify-content-center">
         <div class="col-md-8 text-start">

       



      email: info@researchsoft.org 


# Automatically link email and phone or display as text?
      autolink: true
    
      # Email form provider
      form:
        provider: netlify
        formspree:
          id:
        netlify:
          # Enable CAPTCHA challenge to reduce spam?
          captcha: true
          
    design:
      columns: '1'
      background:
        color: "#ffffff"
      spacing:
        padding: ["4rem", "2rem"]             

  - block: markdown
    content:
      title: Community
      text:  

        <div class="d-flex justify-content-center">
         <div class="col-md-8 text-start">
         
        If you want to be part of our community join our current [task forces](https://www.researchsoft.org/taskforces/) and subscribe to our newsletter.
       
         </div>
        </div>         

    design:
      background:
        color: "#ffffff"
        text_color_light: false  
      spacing:
        padding: ["4rem", "2rem"]

  - block: markdown
    content:
      title:
      text:   | 
        <div class="d-flex justify-content-center">
         <div class="col-md-8 text-start">

        <div style="text-align: center; margin-top: 20px;">
          <a href="https://dashboard.mailerlite.com/forms/778129/110635094443558050/share" target="_blank" 
            style="background-color: rgb(0, 143, 84); color: white; padding: 10px 20px; border-radius: 6px; text-decoration: none; display: inline-block; border: 1px solid #ccc;">
            Subscribe to the ReSA newsletter
          </a>
        </div>
        </div>
        </div>  

    design:
      background:
        color: "#ffffff"
        text_color_light: false
      spacing:
        padding: ["4rem", "2rem"]

  - block: markdown
    content:
      title: "Connect with us"
      subtitle: ""
      text: |
        <div class="d-flex justify-content-center">
         <div class="col-md-8 text-start">      
        <p align="center">
          <a href="https://github.com/researchsoft/website" target="_blank" title="GitHub">
            <i class="fab fa-github fa-2x" style="margin: 0 15px;"></i>
          </a>
          <a href="mailto:contact@researchsoft.org" target="_blank" title="Email">
            <i class="fas fa-envelope fa-2x" style="margin: 0 15px;"></i>
          </a>
          <a href="https://researchsoft.slack.com/" target="_blank" title="Slack">
            <i class="fab fa-slack fa-2x" style="margin: 0 15px;"></i>
          </a>
          <a href="https://www.linkedin.com/company/research-software-alliance/" target="_blank" title="LinkedIn">
            <i class="fab fa-linkedin fa-2x" style="margin: 0 15px;"></i>
          </a>
          <a href="https://fosstodon.org/@researchsoft" target="_blank" title="Mastodon">
            <i class="fab fa-mastodon fa-2x" style="margin: 0 15px;"></i>
          </a>
          <a href="/index.xml" target="_blank" title="RSS Feed">
            <i class="fas fa-rss fa-2x" style="margin: 0 15px;"></i>
          </a>
        </p>
         </div>
        </div>  

    design:
      background:
        color: "#ffffff"
        text_color_light: false
      spacing:
        padding: ["4rem", "2rem"]        
---
