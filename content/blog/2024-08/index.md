 +++
fragment = "content"
weight = 100
categories = ["Blog"]

title = "Research software is critical to the future of AI-driven research"
#subtitle = ""
title_align = "left"

disabled = false
display_date = true
date = "2024-08-22"
authors = ["Michelle Barker, Kim Hartley, Daniel S. Katz, Richard Littauer, Qian Zhang, Shurui Zhou, Jyoti Bhogal"]

[sidebar]
  title = "Important Links"
  align = "right"
  sticky = false
  content = """
  * [DOI: https://doi.org/10.5281/zenodo.13350747](https://doi.org/10.5281/zenodo.13350747)
  * [Digital Research Alliance of Canada](https://alliancecan.ca/en)
  * [ReSA newsletter](https://www.researchsoft.org/news/)
  * [Sign up for the ReSA mailing list](https://dashboard.mailerlite.com/forms/778129/110635094443558050/share)
  * [ReSA resources](https://www.researchsoft.org/resa-resources/)
  * [Contact us](https://www.researchsoft.org/contact/)
  """

+++

![My Image](AI-research-software.jpg) 
_Image was created with the assistance of AI._ 


By Michelle Barker, Kim Hartley, Daniel S. Katz, Richard Littauer, Qian Zhang, Shurui Zhou, Jyoti Bhogal

August 2024

[This blog post has been cross-posted by the [Netherlands eScience Center](https://blog.esciencecenter.nl/research-software-is-critical-to-the-future-of-ai-driven-research-8a408eea6879) and the [Software Sustainability Institute](https://www.software.ac.uk/blog/research-software-critical-future-ai-driven-research).]

### Abstract

This [position paper](https://doi.org/10.5281/zenodo.13350748) provides a statement on the criticality of research software in artificial intelligence (AI)-driven research and makes recommendations for stakeholders on how to consider research software in their AI goals. This is needed to ensure that the focus on technological infrastructure to support AI acceleration includes research software and its personnel as a vital part of that infrastructure. This paper discusses both research software that supports generative AI, which is now being explored today as a tool to enable new research, as well as more traditional machine learning, which has demonstrated impact in research in most disciplines (particularly in the last decade).

This paper begins by providing definitions for key terms and demonstrating the importance of research software in AI-driven research. The paper then explores the need for AI strategies to recognise research software as key building blocks of AI-driven research, and to include this element alongside a focus on computing systems, data, and models. The fact that AI is dependent on software (i.e., data preparation and model training are performed by software, models are implemented in software) is not always adequately considered. Alongside this high level need for incorporation of research software in AI strategies, the challenges inherent in software dependencies also need consideration, as research software requires continual maintenance, updating, bug fixes, etc. Consequently, the broader challenges in enabling ongoing support for research software used for any type of research are equally relevant to AI-driven research and presented here.

There is also a need to better support the people who develop and maintain the research software that enables AI-driven research. Because human skills, training, and career paths often feature in AI strategies, it is imperative that stakeholders facilitate practices that support and recognise research software personnel. And while the research community is exploring how to leverage AI to improve how research software is developed and maintained, this is also affecting how research software practices should be taught. The paper also illustrates how some countries are operationalising AI strategies that could support the critical element of research software, and have the potential to do so by building on existing investments in research software.

This paper was written as a collaboration between the Research Software Alliance (ReSA) and the Digital Research Alliance of Canada, one of ReSA’s Founding Members. ReSA is a global organisation that unites decision-makers and influencers across the international research software community.

The Digital Research Alliance of Canada is funded by the Government of Canada to serve Canadian researchers, including the infrastructure and activities required for research software. Other community leaders also provided inputs from institutional and open source perspectives.

### 1. Introduction
This position paper provides a statement on the criticality of research software in artificial intelligence (AI)-driven research. This is needed to ensure that the focus on technological infrastructure to support AI acceleration includes research software - a vital part of that infrastructure. This paper begins by providing definitions for key terms, demonstrating the importance of research software in AI-driven research, and explaining why this paper was developed. The paper then explores the need for AI strategies to recognise research software as a key building block of the AI-driven research, and to include this element alongside a focus on computing systems, data, and models. To do this, evidence on the issues in supporting research software, including open-source scientific software, are presented.

The paper then explores how to better support the people who develop and maintain the research software in AI-driven research. AI strategies often consider people elements such as skills and career paths, which also reflect broader issues for personnel. The paper then illustrates how some countries are operationalising AI strategies that could support the critical element of research software, and have the potential to do so by building on existing investments in research software. Finally, the paper makes recommendations for stakeholders to consider research software in their AI strategies.

### 2. What is research software and why is it critical to AI?
Research software is defined in accordance with the FAIR for Research Software Principles (Barker et al. 2022) as “source code files, algorithms, scripts, computational workflows and executables that were created during the research process or for a research purpose. Software components (e.g., operating systems, libraries, dependencies, packages, scripts, etc.) that are used for research but were not created during or with a clear research intent should be considered software in research and not research software. This differentiation may vary between disciplines” (Gruenpeter et al. 2021).

Research software supports AI, both 1) in more traditional machine learning (ML), where models are trained on data and then used to infer knowledge about new data, and 2) in generative AI, which can be defined as “deep-learning models that can generate high quality text, images, and other content based on the data they were trained on” (Martineau 2021).

Research software is already recognised as critical to research outcomes (Barker, Katz, and Gonzalez-Beltran 2020; Hocquet et al. 2024; Strasser et al. 2022). Research software can be a research output in itself, and its many functions range from being a component of research instruments, being the research instrument (where research software generates research data, validates research data, or tests hypotheses, such as models and simulations), analysing and presenting research data, and providing infrastructure or underlying tools (Nieuwpoort and Katz 2024). All machine learning (ML) and AI began as research software. In many cases AI research software has transitioned outside of research and is widely used outside research today.

Consequently, research software is essential in AI-based research, where newly developed methods **are** research software. Some AI reports and strategies recognise this; for example, OECD’s [Artificial Intelligence in Science](https://www.oecd-ilibrary.org/science-and-technology/artificial-intelligence-in-science_a8d820bd-en) report (OECD 2023) highlights the need to better support research software as part of utilising AI to accelerate scientific productivity, in a number of ways, including:

- Increase access to software
- Share best practices and applications of research software
- Facilitate more regular funding and more secure positions
- Improve ways to measure research impact and productivity
- Consider academic training changes needed
- Utilise disciplinary consortiums to accelerate discovery and improve reproducibility        through sharing of software
- Understand how AI can speed up research software development

The research community personnel who develop and maintain research software are just as important as the research software itself, if not more important, as the software will stop working without ongoing maintenance. This maintenance is needed 1) to respond to bugs so that the software continues to be correct, 2) to add new features so that the software continues to be useful as research progresses, 3) to adapt to change in underlying software and hardware or in related software ecosystems, such as changed libraries and computing systems, so that the software continues to work.

The people who do this work can have many titles, including researchers, research software engineers (RSEs), data scientists, computer scientists, data engineers, bioinformaticians, students, community scientists, and many more (Hettrick et al. 2022; Barker and Buchhorn 2022). The inclusion of improved support for the staff who develop and maintain research software is also emphasised in the UK-focused [Review of Digital Research Infrastructure Requirements for AI](https://www.turing.ac.uk/sites/default/files/2022-09/ukri-requirements-report_final_edits.pdf) (Lazauskas et al. 2022). This report’s findings included emphasis that “any investment in any infrastructure for AI would need to be matched by investments in training and support”, with the second highest priority areas identified as funding for RSEs (Lazauskas et al. 2022). The UK’s [ExCALIBUR RSE Knowledge Integration Landscape Review](https://doi.org/10.5281/zenodo.4986062) also highlights the need for RSEs to acquire new skills relevant to AI, and notes that “These skill sets also begin to deviate from what is demanded by industries, requiring novel AI software and capabilities'' (Parsons et al. 2021).

ReSA’s initial research on recognition of research software in the AI landscape was presented in March 2024 at its [Research Software Funders Forum](https://www.researchsoft.org/funders-forum/) meetings. This forum engages representatives from over 60 funding organisations in online meetings and hybrid venues (ReSA 2024a). Attendees of these March meetings were immediately able to utilise these early findings from the presentation to strengthen their own cases for investment in research software within AI-dominated programs, where the criticality of this building block is not yet understood by many in their organisations. It became clear that further research on best practices would support not only funders, but a variety of stakeholders in the international research software community.

The research in this position paper was undertaken as a partnership between [ReSA](https://www.researchsoft.org/) and the [Digital Research Alliance of Canada](https://alliancecan.ca/en), one of ReSA’s [Founding Members](https://www.researchsoft.org/about-resa/). One of ReSA’s key functions is to ensure that research software is considered in international discussions on how to advance research capabilities. ReSA is a global organisation that unites decision-makers and influencers across the international research software community. The Digital Research Alliance of Canada is a non-profit organisation funded by the Government of Canada. It advances Canada’s position as a leader in the knowledge economy on the international stage by integrating, championing and funding the infrastructure and activities required, with research software as one of the three main areas. Other community leaders were also brought in on this paper in order to present more balanced perspectives on the need for research software in AI, particularly from institutional and open source perspectives.

### 3. Consequences if research software is not supported
There is a tendency for AI initiatives to minimise or exclude focus on research software. This minimisation creates challenges. To show this, evidence on the issues in supporting research software, including open-source scientific software, is also presented here.

Many AI initiatives tend to focus on computing systems, data, and models, considering issues such as availability of systems that can train models and use them for inference in reasonable time periods; FAIRness of underlying data as well as its suitability for training models, including regularity and labelling; understanding and reducing bias in data and models; and understanding privacy. The fact that AI models are implemented in software, and that software is required for training, is rarely considered. Basically, models are thought of as extensions of data, not of software as well. Consequently, many AI strategies focus on data and models, but exclude the underlying software. An example of an AI strategy that does not necessarily adequately include a research software focus include the US National Institutes of Health (NIH) workshop, [Towards an ethical framework for AI in biomedical and behavioural research](https://www.scgcorp.com/ethicalframework2024/Agenda), which focused on data and models, but not the research software inherent in using the data and models (ODSS 2024).

This challenge is not limited to research software. Discussions of AI capacity often omit open source software, instead focusing on areas such as talent, funding, data, semiconductors, and compute access (Engler 2021). Like research software, open source software can advance science, but also has significant effects in other areas such as development of AI standards (Engler 2021). Further, research software is often either open source itself or depends on open source software. But considerations for software from AI initiatives, if any, do not normally include open source software maintenance as a priority, nor analysis of its dependency on other software (Nahar et al. Forthcoming). Where dependency analysis does happen, it is usually due to concerns about supply chain security or perceived attack vectors (a pathway or method used to access a network or computer to attempt to exploit system vulnerabilities).

The nature of open source software as a complex stack, and the concomitant extra step of funding those open source software dependencies of the research software necessary for AI is largely ignored. This could reflect a misunderstanding of how open source dependencies introduce systemic vulnerabilities that need to be addressed and maintained on an ongoing basis, or concerns regarding funding many independent projects down the dependency tree. When open source software is used without planning for future community or dependency support, the result is a more brittle system in the long run – for research software, open source software, and AI.

There has been some recent work done on software bills of materials (SBOMs) in open source supply chains, where dependencies are charted out, in part so that their vulnerabilities can be understood (National Security Agency 2024; SCAWG 2022) (and it is relevant to note that research software is often used to map these dependencies). Mapping supply chains is increasingly important for understanding how to shore up digital infrastructure, where large economies depend upon open source software that is poorly maintained and that may be internationally broken or hijacked, or may break (as in the XZ Utils, Heartbleed, or the Log4j incidents (Goodin 2024; Buchanan 2021), or the more recent CrowdStrike failure which caused a global Windows outage (Robins-Early 2024)). However, SBOMs are merely an atlas for understanding dependencies – they are policy agnostic and their creation doesn't mandate funding or supporting important open source or research software.

This paper suggests that infrastructural issues with using and supporting open source software are similar or identical to issues with using research software. Where AI is involved, the same questions of continued support for the research software being used to develop, train, and run the AI systems are raised. Any AI initiative that plans to use global infrastructure, to adapt to new fields and target areas, or which hopes to exist for the long haul must consider the research software that enables those goals.

### 4. Challenges if research software personnel are not supported
There is also a need to better support the people who develop and maintain research software that is important to AI-driven research. This is recognised in relation to research software personnel in general, particularly in relation to the training, hiring, and funding of both professional research and technical staff able to reuse, develop, and maintain sustainable research software; appropriate reward and recognition measures that enable career progression for all people involved in the creation and maintenance of research software; and citation practices for research software that recognise substantial contributors to all aspects of the software (Van Tuyl 2023; US-RSE Association and IEEE Computer Society 2023; Barker and Katz 2022a; ReSA 2023). For example, [Software and skills for research computing in the UK](https://zenodo.org/records/10473186) recommendations include facilitating detailed analysis of how to professionalise RSE roles; and collaboration between government, funders, and employers to create national policies aimed at improving standards of employment (Barker et al. 2024).

Whilst many of the issues for research software in general are the same for research software to support AI-driven research, one area of difference is in the specifics of skills and training. Human skills, training, and career paths often feature in AI strategies, and it is important that these focus on relevant research software practices. For example, the [Review of Digital Research Infrastructure Requirements for AI](https://www.turing.ac.uk/sites/default/files/2022-09/ukri-requirements-report_final_edits.pdf) specifically emphasises the lack of AI skills and training, and career paths for research personnel, including for RSEs. It highlights that these staff often lack formal training, and ongoing professional development is crucial in the fast-paced world of AI tools and techniques (Lazauskas et al. 2022). With many researchers now using GenAI for coding tasks (Nordling 2023, cited in Hosseini et al. 2024), software development skills need to change to reflect this (Caballar 2024; Dursi 2024).

### 5. National approaches
AI is now seen as a geopolitical asset, and as international organisations and a range of countries seek to show leadership for AI in science, some countries are operationalising AI strategies that could support the critical element of research software. However, more focus is needed. One example of discussing software within a national AI strategy is the US [National Artificial Intelligence Research Resource](https://new.nsf.gov/focus-areas/artificial-intelligence/nairr) (NAIRR). NAIRR aims to provide a shared national research infrastructure for responsible discovery and innovation in AI, to address the fact that many researchers lack the necessary access to the computing, data, software and educational resources needed. The NAIRR pilot’s four operational focus areas include one area dedicated to software, to “facilitate and investigate interoperable use of AI software, platforms, tools and services for NAIRR pilot resources” (NSF 2024). However, there are potential challenges with this approach as the focus is on interoperability of existing software, which assumes that sustainable software is already in place.

Many countries also have existing investments in research software (Barker and Katz 2022b; ReSA 2024b) that national initiatives have the potential to build on. The UK’s [AI Research Resource](https://www.ukri.org/news/300-million-to-launch-first-phase-of-new-ai-research-resource/) (AIRR) is another example of a national initiative, which focuses on increasing computational power to support AI-driven research (UKRI 2023), although its funding is now uncertain (Trueman 2024). Whilst AIRR does not seem to include a focus on research software, AIRR is a key component of UK Research and Innovation (UKRI)’s [Digital Research Infrastructure](https://www.ukri.org/what-we-do/creating-world-class-research-and-innovation-infrastructure/digital-research-infrastructure/) (DRI) which has featured a number of recent investments in research software, including funding of research technical professionals (RTPs), such as RSEs. For example, the Engineering and Physical Sciences Research Council (EPSRC) and UKRI DRI have invested £16 million to support community-driven projects providing training and development for RTPs (UKRI 2024a). UKRI’s [Digital RTP Skills NetworkPlus](https://www.ukri.org/opportunity/ukri-digital-research-technical-professional-skills-networkplus/) aims to explore key challenges and interventions related to skills and careers that are faced by digital RTP communities across the UK research and innovation landscape (UKRI 2024b).

Canada has been a leader in AI, as the first country in the world to put in place in 2017 a fully-funded AI strategy, the [Pan-Canadian AI Strategy](https://ised-isde.canada.ca/site/ai-strategy/en) (ISED 2022). The strategy included establishment of a national program of research chairs to recruit and retain top researchers at Canadian universities, establishment of three national AI institutes to be global centres of training and research excellence, and the creation of a Pan-Canadian AI Compute Environment (PAICE) platform. The Digital Research Alliance of Canada’s [National Research Software Strategy](https://doi.org/10.5281/zenodo.10214741) for 2025-2030 (Digital Research Alliance of Canada, National Research Software Strategy Working Group 2023) also reviewed (inter)national research software funding programs in support of AI, deep learning, and ML-facilitated research. Before the Alliance, CANARIE has been a national Research Software funder and service provider since 2007, whose successful research software initiatives had resulted in the development of sophisticated software tools, known as research platforms, that typically support end-to-end research workflow within a specific domain. New platforms re-used software components previously developed through CANARIE funding, and contributed additional components back to the research community, creating a powerful cycle of software development and reuse (CANARIE 2024). The Alliance is now using the [Research Software Directory](https://research-software-directory.org/organisations/digital-research-alliance-of-canada?tab=software&order=is_featured) to continue promoting the visibility, impact, and reuse of the Canadian research software (Digital Research Alliance of Canada 2024).

### 6. Recommendations for research software to support AI
Research software needs to be included in AI strategies. Our recommendations for doing so are listed below, organised in three areas from the [Amsterdam Declaration on Funding Research Software Sustainability](https://doi.org/10.5281/zenodo.8325436) (ReSA 2023):

1. Research software practice:

    a. AI strategies and funding must recognise that research software is a key part of         the (publicly funded) AI pipeline and that AI is dependent on software, and therefore       should stimulate the development and maintenance of research software to ensure the success of the AI work.
  
2. Research software ecosystem:
   
    a. Because AI-driven research is dependent on the existing research software                ecosystem, AI strategies should provide long-term support for its elements, including       personnel, communities, and infrastructure, and should add new elements that focus on       AI-specific parts as needed.

3. Research software personnel:

    a. Because the existing research software ecosystem that supports AI-driven research        is dependent on research software personnel, AI strategies should facilitate                appropriate reward and recognition measures that enable career progression for all          people involved in the creation and maintenance of research software that supports AI-
      driven research.
   
Other ways to help ensure that the focus on technological infrastructure to support AI acceleration includes research software and its personnel as a vital part of that infrastructure include:

- [Signing](https://adore.software/get-involved/) the [Amsterdam Declaration on Funding Research Software Sustainability](https://adore.software/declaration/) (ADORE.software), which represents a first step to formalise, on a global level, the basic principles and recommendations related to funding the sustainability of research software, including the people needed to achieve this goal.
- Supporting ReSA in its aim to ensure that research software is considered in international discussions on how to advance research capabilities. Become a ReSA [Organisational Member](https://www.researchsoft.org/membership/), [support a task force](https://www.researchsoft.org/tf-support/), or [donate](https://www.researchsoft.org/donate/).
- For funders, joining the [Research Software Funders Forum](https://www.researchsoft.org/funders-forum/), a global collaboration of funding organisations committed to supporting research software, and those who develop and maintain it, as fundamental and vital to research.

### References
Barker, Michelle, Elena Breitmoser, Philippa Broadbent, Neil Chue Hong, Simon Hettrick, Ioanna Lampaki, Anthony Quinn, and Rebecca Taylor. 2024. ‘Software and Skills for Research Computing in the UK’. Zenodo. https://doi.org/10.5281/ZENODO.10473186.

Barker, Michelle, and Markus Buchhorn. 2022. ‘Research Software Capability in Australia’. Zenodo. https://doi.org/10.5281/ZENODO.6335998.

Barker, Michelle, Neil P. Chue Hong, Daniel S. Katz, Anna-Lena Lamprecht, Carlos Martinez-Ortiz, Fotis Psomopoulos, Jennifer Harrow, et al. 2022. ‘Introducing the FAIR Principles for Research Software’. Scientific Data 9 (1): 622. https://doi.org/10.1038/s41597-022-01710-x.

Barker, Michelle, and Daniel S Katz. 2022a. ‘Encouraging Entry, Retention, Diversity and Inclusion in Research Software Careers’. https://doi.org/10.5281/ZENODO.7117842.

Barker, Michelle, and Daniel S. Katz. 2022b. ‘Overview of Research Software Funding Landscape’, February. https://doi.org/10.5281/ZENODO.6102487.

Barker, Michelle, Daniel S. Katz, and Alejandra Gonzalez-Beltran. 2020. ‘Evidence for the Importance of Research Software’. Zenodo. https://doi.org/10.5281/ZENODO.3884311.

Buchanan, Bill. 2021. ‘Log4j: The Worst Vulnerability In Nearly A Decade?’ Medium (blog). 2021. https://medium.com/asecuritysite-when-bob-met-alice/log4j-the-worst-vulnerability-in-nearly-a-decade-e0cc80cbb49a.

Caballar, Rina Diane. 2024. ‘AI Copilots Are Changing How Coding Is Taught - IEEE Spectrum’. 2 May 2024. https://spectrum.ieee.org/ai-coding.

CANARIE. 2024. ‘Funded Research Software Platforms’. 2024. https://www.canarie.ca/software/platforms/.

Digital Research Alliance of Canada. 2024. ‘Research Software Directory’. 2024. https://research-software-directory.org/organisations/digital-research-alliance-of-canada?tab=software&order=is_featured.

Digital Research Alliance of Canada, National Research Software Strategy Working Group. 2023. ‘National Research Software Strategy 2023’. Zenodo. https://doi.org/10.5281/ZENODO.10214741.

Dursi, Jonathan. 2024. ‘We Need To Talk About AI’. Research Computing Teams 183 (June). https://newsletter.researchcomputingteams.org/archive/rct-183-we-need-to-talk-about-ai-plus-upfront/.

Engler, Alex. 2021. ‘How Open-Source Software Shapes AI Policy’. Brookings. 10 August 2021. https://www.brookings.edu/articles/how-open-source-software-shapes-ai-policy/.

Goodin, Dan. 2024. ‘The XZ Backdoor: Everything You Need to Know’. Wired. 2 April 2024. https://www.wired.com/story/xz-backdoor-everything-you-need-to-know/.

Gruenpeter, Morane, Daniel S. Katz, Anna-Lena Lamprecht, Tom Honeyman, Daniel Garijo, Alexander Struck, Anna Niehues, et al. 2021. ‘Defining Research Software: A Controversial Discussion’. Zenodo. https://doi.org/10.5281/ZENODO.5504016.

Hettrick, Simon, Radovan Bast, Steve Crouch, Claire Bradley, Philippe, Botzki, Alex, Carver, Jeffrey, et al. 2022. ‘International RSE Survey 2022’. https://softwaresaved.github.io/international-survey-2022/. https://doi.org/10.5281/ZENODO.6884882.

Hocquet, Alexandre, Frédéric Wieber, Gabriele Gramelsberger, Konrad Hinsen, Markus Diesmann, Fernando Pasquini Santos, Catharina Landström, et al. 2024. ‘Software in Science Is Ubiquitous yet Overlooked’. Nature Computational Science, July. https://doi.org/10.1038/s43588-024-00651-2.

Hosseini, Mohammad, Horbach, Serge P.J.M., Holmes, Kristi L., Ross-Hellauer, Tony. 2024. ‘Open Science at the Generative AI Turn: An Exploratory Analysis of Challenges and Opportunities.’ https://doi.org/10.31235/osf.io/zns7g 

ISED. 2022. ‘Pan-Canadian Artificial Intelligence Strategy’. Home page; Innovation, Science and Economic Development Canada. 20 July 2022. https://ised-isde.canada.ca/site/ai-strategy/en/pan-canadian-artificial-intelligence-strategy.

Lazauskas, Tomas, Jennifer Ding, Neil Brown, Reda Nausedaite, Felix Dijkstal, Aaron Vinnik, Bruno Raabe, et al. 2022. ‘Review of Digital Research Infrastructure Requirements for AI’. https://doi.org/10.13140/RG.2.2.29376.00009.

Martineau, Kim. 2021. ‘What Is Generative AI?’ IBM Research. 9 February 2021. https://research.ibm.com/blog/what-is-generative-AI.

Nahar, Nadia, Haoran Zhang, Grace Lewis, Shurui Zhou, and Christian Kästner. Forthcoming. ‘The Product Beyond the Model - An Empirical Study of Repositories of Open-Source ML Products’. In . https://www.cs.cmu.edu/~ckaestne/publications.html.

National Security Agency. 2024. ‘Recommendations for Software Bill of Materials (SBOM) Management’. https://media.defense.gov/2023/Dec/14/2003359097/-1/-1/0/CSI-SCRM-SBOM-MANAGEMENT.PDF.

Nieuwpoort, Rob van, Katz, Daniel S. 2024, Defining the roles of research software (Version 2). https://doi.org/10.54900/xdh2x-kj281

Nordling, Linda. 2023. ‘How ChatGPT Is Transforming the Postdoc Experience’. Nature 622 (7983): 655–57. https://doi.org/10.1038/d41586-023-03235-8.

NSF. 2024. ‘National Artificial Intelligence Research Resource Pilot’. 2024. https://new.nsf.gov/focus-areas/artificial-intelligence/nairr.

ODSS. 2024. ‘Toward an Ethical Framework for AI in Biomedical and Behavioral Research’. 2024. https://www.scgcorp.com/ethicalframework2024/Agenda.

OECD. 2023. Artificial Intelligence in Science: Challenges, Opportunities and the Future of Research. OECD. https://doi.org/10.1787/a8d820bd-en.

Parsons, Mark, Alastair Basden, Richard Bower, Neil P. Chue Hong, Davide Constanzo, Shaun Witt, Luigi Del Debbio, et al. 2021. ‘ExCALIBUR Research Software Engineer Knowledge Integration Landscape Review’. Zenodo. https://doi.org/10.5281/ZENODO.4986062.

ReSA. 2023. ‘Amsterdam Declaration on Funding Research Software Sustainability’, August. https://doi.org/10.5281/ZENODO.8325436.

———. 2024a. ‘Research Software Funders Forum’. 2024. https://researchsoft.org/funders-forum/.

———. 2024b. ‘Research Software Funding Opportunities’. 2024. https://researchsoft.org/funding-opportunities/.

Robins-Early, Nick. 2024. ‘What Is CrowdStrike, and How Did It Cause a Global Windows Outage?’ The Guardian, 19 July 2024. https://www.theguardian.com/technology/article/2024/jul/19/what-is-crowdstrike-microsoft-windows-outage.

SCAWG. 2022. ‘Recommendations to Improve the Resilience of Canada’s Digital Supply Chain’. https://ised-isde.canada.ca/site/spectrum-management-telecommunications/sites/default/files/attachments/2022/CFDIR-June2022-recommendations.pdf.

Strasser, Carly, Kate Hertweck, Josh Greenberg, Dario Taraborelli, and Elizabeth Vu. 2022. ‘10 Simple Rules for Funding Scientific Open Source Software’, June. https://doi.org/10.5281/ZENODO.6611500.

Trueman, Charlotte. 2024. ‘UK Government Shelves £1.3bn of Tech and AI Projects; Scraps Plans for First Exascale Supercomputer in Edinburgh’. 2 August 2024. https://www.datacenterdynamics.com/en/news/uk-government-shelves-13bn-of-tech-and-ai-projects-scraps-plans-for-first-exascale-supercomputer-in-edinburgh/.

UKRI. 2023. ‘£300 Million to Launch First Phase of New AI Research Resource’. 1 November 2023. https://www.ukri.org/news/300-million-to-launch-first-phase-of-new-ai-research-resource/.

———. 2024a. ‘New Funding to Support Research Technical Professionals’. 18 March 2024. https://www.ukri.org/news/new-funding-to-support-research-technical-professionals/.

———. 2024b. ‘UKRI Digital Research Technical Professional Skills NetworkPlus’. 22 April 2024. https://www.ukri.org/opportunity/ukri-digital-research-technical-professional-skills-networkplus/.

US-RSE Association and IEEE Computer Society. 2023. ‘Research Software Engineers: Creating a Career Path—and a Career’. Zenodo. https://doi.org/10.5281/ZENODO.10073232.

Van Tuyl, Steve (Ed.). 2023. ‘Hiring, Managing, and Retaining Data Scientists and Research Software Engineers in Academia: A Career Guidebook from ADSA and US-RSE’. Zenodo. https://doi.org/10.5281/ZENODO.8274378.
