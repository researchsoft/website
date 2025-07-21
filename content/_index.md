---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing
layout: "default"
classes: "max-w-screen-lg px-4 mx-auto"

sections:
  - block: markdown
    content: 
      title:
      text:   |
        <p align=center>
          <img src="uploads/resa-logo-inverted.svg" width="35%">
        </p>

          Our vision: Research software and those who develop and maintain it are recognised and valued as fundamental and vital to research worldwide
          {style="color: white; font-size: 2rem; "} 
        
        <div style="text-align: center; margin-top: 20px;">
          <a href="/about" target="_self" 
            style="background-color: white; color: black; padding: 10px 20px; border-radius: 6px; text-decoration: none; display: inline-block; border: 1px solid #ccc;">
            Learn more
          </a>
        </div>



    design:
      background:
        image:
          filename: main-hero_bottom_half.png
          size: cover
          position:  bottom
          parallax: false
          text_color_light: true
      spacing:
        height: "30vh"
        padding: ["2rem", "2rem"]
       

  - block: markdown
    content:
      title: "Our Mission"
      subtitle: "To advance the research software ecosystem by collaborating with decision makers and key influencers."
    design:
      spacing:
        padding: ["5rem", "1rem"]
      width: "narrrow"
      background:
        color: "#ffffff"
        text_color_light: false

  - block: markdown
    content: 
      title: Join ReSA
      subtitle:
      text: |
        <div class="d-flex justify-content-center">
         <div class="col-md-8 text-start">
          You can become involved by:
          
          - Joining [task forces](taskforces) focused on specific activities
          - Receiving updates through our regular [newsletter](news)
          - Encouraging your organisation to become an [Organisational Member](about/membership), support a [task force](taskforces/tf-support), or make a [donation](about/donate)
          - Helping to raise awareness of the importance of software in research through use of [ReSA resources](resources/resa-resources)
          - Connecting with other community members through our [Linked In](https://www.linkedin.com/company/research-software-alliance/) or at our [events](events/) 
          - Joining the ReSA [Slack](https://researchsoft.slack.com/join/shared_invite/zt-1flmrglww-SoWjAK_5TJyqLU_~Jx697w#/shared-invite/email) for decision-makers and key influencers to share what's happening in the community
          - Attending our [Research Software Community Leaders Forum](community-forum)
          - Providing information on [new funding calls](https://forms.gle/r4Jw4swUd1SXigZc9) to the [Research Software Funding Opportunities](funding-opportunities/)
          - [Contributing](contact) [resources](resources/resa-resources) and [guidelines](resources/guidelines); ideas for [task forces](taskforces), [events](events) and [news](news); or if you have other ideas for ReSA then [let us know](contact). 

          We look forward to welcoming you! 
         </div>
        </div>
    design:
      spacing:
        padding: ["3rem", "1rem"]

  - block: markdown
    content:
      title: ReSA Themes
      subtitle: ''
      text: |
        <div class="d-flex justify-content-center">
         <div class="col-md-8 text-start">
          <div class="row">
            <div class="col-md-4">
              <img src="uploads/theme-people.png">
              <h2 align="center">People</h2>
              <p align="center">Enhance social infrastructure for individuals and communities to improve software practices</p>
            </div>  
            <div class="col-md-4">
              <img src="uploads/theme-infrastructure.png">
              <h2 align="center">Infrastructure</h2>
              <p align="center">Identify and promote needed infrastructure</p>
            </div>
            <div class="col-md-4">
              <img src="uploads/theme-policies.jpg">
              <h2 align="center">Policy</h2>
              <p align="center">Encourage and support software recognition</p>
            </div>
          </div>
         </div>
        </div>          
    design:     
      background:
        color: "#ffffff"
        text_color_light: false
      spacing:
        padding: ["3rem", "1rem"]  


  - block: markdown
    content:
      title: Software Matters
      text: |
        <div class="d-flex justify-content-center">
         <div class="col-md-8 text-start">   
            
        Research software is recognised as critical to research outcomes. As early as 2014, a [UK survey](https://zenodo.org/records/14809) of 1,000 randomly chosen researchers showed that more than 90% of researchers acknowledged software as being important for their own research, and about 70% of researchers said that their research would not be possible without software. A study of [Nature papers from Jan-March 2016](https://ieeexplore.ieee.org/document/8109183) reveals that “32 of the 40 papers examined mention software, and the 32 papers contain 211 mentions of distinct pieces of software, for an average of 6.5 mentions per paper.” [2].

        Research software is also critical in artificial intelligence (AI)-driven research, and the technological infrastructure to support AI acceleration must include research software and its personnel. Read our [position paper](https://doi.org/10.5281/zenodo.13350747) on this vital part of AI infrastructure, which includes recommendations for stakeholders on how to consider research software in their AI goals.


        | 90% | 70% | 6.5 avg|
        |:---:|:---:|:---:|
        |software important for own research|own research not possible without software| distinct software mentions per paper|
         </div>
        </div>  
    design:
      spacing:
        padding: ["3rem", "1rem"]

  - block: markdown
    content:
      title: 
        <div class="d-flex justify-content-center">
         <div class="col-md-8 text-start"> 
            "Without data it’s difficult to validate results. But without code, we waste the opportunity to advance science."
         </div>
        </div>              
      subtitle: 
      text:  
          <p align="center"><a href="https://twitter.com/npch/status/1258388356431478784">Neil Chue Hong, Director, Software Sustainability Institute, University of Edinburgh, UK</a></p>

    design:
      background:
        color: "#f98c01"
        text_color_light: false
      spacing:
        padding: ["3rem", "1rem"]  

  - block: markdown
    content:
      title: "Connect with us"
      subtitle: ""
      text: |
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
          <a href="https://bsky.app/profile/researchsoftware.bsky.social" target="_blank" title="Bluesky">
            <i class="fas fa-globe fa-2x" style="margin: 0 15px;"></i>
          </a>         
          <a href="/index.xml" target="_blank" title="RSS Feed">
            <i class="fas fa-rss fa-2x" style="margin: 0 15px;"></i>
          </a>
        </p>
    design:
      background:
        color: "#ffffff"
        text_color_light: false
      spacing:
        padding: ["3rem", "1rem"]  
---
