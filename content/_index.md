---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing

sections:
  - block: markdown
    content:
      title:
      text:   |
        <p align=center>
          <img src="uploads/resa-logo-inverted.svg" width="80%">
        </p>

          Our vision: Research software and those who develop and maintain it are recognised and valued as fundamental and vital to research worldwide
          {style="color: white; font-size: 1.5rem; "} 
        
        {{< cta cta_text="Learn more" cta_link="about-resa" cta_new_tab="false" >}}


    design:
      background:
        image:
          filename: main-hero.png
          filters:
            brightness: 1
          parallax: false
          position: center
          size: cover
          text_color_light: true      

  - block: markdown
    content:
      title: "Our Mission"
      subtitle: "To advance the research software ecosystem by collaborating with decision makers and key influencers."
    design:
      background:
        color: "#ffffff"
        text_color_light: false

  - block: markdown
    content: 
      title: Join ReSA
      subtitle:
      text: |
        You can become involved by:
        
        - Joining [task forces](taskforces) focused on specific activities
        - Receiving updates through our regular [newsletter](newsletter)
        - Encouraging your organisation to become an [Organisational Member](membership), support a [task force](tf-support), or make a [donation](donate)
        - Helping to raise awareness of the importance of software in research through use of [ReSA resources](resa-resources)
        - Connecting with other community members through our [Linked In](https://www.linkedin.com/company/research-software-alliance/) or at our [events](events/) 
        - Joining the ReSA [Slack](https://researchsoft.slack.com/join/shared_invite/zt-1flmrglww-SoWjAK_5TJyqLU_~Jx697w#/shared-invite/email) for decision-makers and key influencers to share what's happening in the community
        - Attending our [Research Software Community Leaders Forum](community-forum)
        - Providing information on [new funding calls](https://forms.gle/r4Jw4swUd1SXigZc9) to the [Research Software Funding Opportunities](funding-opportunities/)
        - [Contributing](contact) [resources](resa-resources) and [guidelines](guidelines); ideas for [task forces](taskforces), [events](events) and [news](news); or if you have other ideas for ReSA then [let us know](contact). 

        We look forward to welcoming you! 
  
  - block: markdown
    content:
      title: ReSA Themes
      subtitle: ''
      text: |
          <div class="row">
            <div class="col-md-4">
              <img src="uploads/theme-people.png">
              <h2 align="center">People</h2>
              <p align="center">Enhance social infrastructure for individuals and communities to improve software practices.</p>
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
    design:
      background:
        color: "#ffffff"
        text_color_light: false

  - block: markdown
    content:
      title: Software Matters
      text: |
        Research software is recognised as critical to research outcomes. As early as 2014, a [UK survey](https://zenodo.org/records/14809) of 1,000 randomly chosen researchers showed that more than 90% of researchers acknowledged software as being important for their own research, and about 70% of researchers said that their research would not be possible without software. A study of [Nature papers from Jan-March 2016](https://ieeexplore.ieee.org/document/8109183) reveals that “32 of the 40 papers examined mention software, and the 32 papers contain 211 mentions of distinct pieces of software, for an average of 6.5 mentions per paper.” [2].

        Research software is also critical in artificial intelligence (AI)-driven research, and the technological infrastructure to support AI acceleration must include research software and its personnel. Read our [position paper](https://doi.org/10.5281/zenodo.13350747) on this vital part of AI infrastructure, which includes recommendations for stakeholders on how to consider research software in their AI goals.

        <br>

        <div class="row">
          <div class="col-md-4">
            <p align="center"><img src="uploads/software.svg" width="50%"></p>
            <p align="center">software important for own research	</p>
          </div>

          <div class="col-md-4">
            <p align="center"><img src="uploads/research.svg" width="50%"></p>
            <p align="center">own research not possible without software	</p>
          </div>

          <div class="col-md-4">
            <p align="center"><img src="uploads/mentions.svg" width="50%"></p>
            <p align="center">distinct software mentions per paper</p>
          </div>
        </div>


  - block: markdown
    content:
      title: "Without data it’s difficult to validate results. But without code, we waste the opportunity to advance science."
      subtitle: 
      text: <p align="center"><a href="https://twitter.com/npch/status/1258388356431478784">Neil Chue Hong, Director, Software Sustainability Institute, University of Edinburgh, UK</a></p>
    design:
      background:
        color: "#f98c01"
        text_color_light: false
---