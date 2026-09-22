---
authors:
- Stephan Druskat
- Neil Chue Hong
- Julien Colomb
- Hugo Gruson
- Saranjeet Kaur Bhogal
- Carlos Martinez-Ortiz
- Gemma Turon
subtitle: |
  *Community Pilot Draft* (v0.2)

  Research Software Alliance [Task Force *Research Software Authorship and
  Contribution*](https://www.researchsoft.org/tf-authorship-contribution/)
title: Research Software Authorship
date: 2026-09-22
---

<a href="https://doi.org/10.5281/zenodo.22834409" class="footer-newsletter-btn" style="width:65%;">Download PDF</a> 

<a href="https://researchsoft.org/tf-authorship-contribution/AUTHORSHIP.md.template" class="footer-newsletter-btn" style="width:65%;">Download Authorship Policy template (Markdown)</a>

Cite this version of the recommendations as:

> S. Druskat, N. Chue Hong, J. Colomb, H. Gruson, S. K. Bhogal, C. Martinez-Ortiz, and G. Turon. 2026. Research Software Authorship (Community Pilot Draft). (Sep. 2026). doi:[10.5281/zenodo.22834409](https://doi.org/10.5281/zenodo.22834409).

<aside>The guidelines and recommendations proposed here build on existing
codes of conduct for academic authorship, by specifying
recommendations for research software authorship. As such, they aim to
inform and improve these codes of conduct, but are not legally binding
and do not replace laws or institutional by-laws and other binding
rules.</aside>

---

Developing research software is a dynamic, iterative and collaborative
effort, involving a spectrum of contributions. Examples of contributions
include project management, software engineering, documentation, user
support, outreach, education and bug reporting. Each of these
contributions can have a varied level of impact on the software.

The objective of this document is to provide a set of definitions,
guidelines and criteria to distinguish between authors of the software
and its non-author contributors. Because of the dynamic nature of
software development and maintenance, contributors may transition to and
from author status as the software evolves.

Defining authors and non-author contributors allows appropriate credit
to be given to each when the software is used and cited. All research
software should define authorship policies at project start, and make
them available to the authors, contributors and the research community.

# Authors and Contributors {#sec-authors-contributors}

The roles of software authors and contributors on software may be
defined differently in different communities, for example as mutually
exclusive. For the purposes of this document, we define them as follows.

![Software authors represent a subset of software contributors. A person can have "author" status in addition to "contributor" status, meaning that any author is always also a contributor in a research software project but not vice versa.](/tf-authorship/fig1.png)

<a id="fig1"></a>***Fig. 1:** Software authors represent a subset of software contributors. A person can have "author" status in addition to "contributor" status, meaning that any author is always also a contributor in a research software project but not vice versa.*

This is independent of a particular expression of these roles, for
example in the metadata for a research software project, where a person
can be listed either as author or as contributor, or they can be listed
as author and as contributor but not vice versa. There may also be
differences between the authorship of the software, of a software paper,
and other related research outputs, which are discussed below.

## Academic Authorship {#subsec-academic-authorship}

In these recommendations and guidelines, we exclusively discuss academic
authorship of software. Authorship is an important concept in academia.
It establishes transparency and enables credit and responsibility for
the work, supports integrity, and helps build academic reputation and
careers. **Academic authorship** is governed by codes of conduct that
define good research practice. We consider our recommendations and
guidelines to contribute to this definition. A violation of the rules
that govern academic authorship may lead to charges of academic
misconduct and sanctions against the violators.

In contrast to academic authorship, **legal authorship** is governed by
general law, for example by copyright law, that establishes rules for
intellectual property. These laws differ between different countries. A
violation of the rules that govern legal authorship may lead to legal
charges and respective punishment of the violators under the applicable
laws.

Rules for academic authorship are generally complementary to rules for
legal authorship and address research-specific rules that may not be
detailed in general law. Nevertheless, the **rules for academic
authorship can become legally binding**, e.g., through requirements for
their institutional implementation as a precondition for eligibility to
receive funding, as institutional by-laws, or as part of employment
contracts.

The recommendations that we propose here build on existing codes of
conduct for academic authorship by specifying recommendations for
research software authorship. As such, they aim to inform and improve
these codes of conduct, but are not legally binding and do not replace
laws or institutional by-laws and other binding rules.

# Who is an Author? {#sec-who-is-an-author}

We recommend that software authorship be based on active contributions
to the software. To qualify for authorship, a contributor must meet two
criteria:

1.  Their **contribution** to the software has been **substantial**.

2.  Their contribution to the software has been in **one or more of the
    four contribution areas**.

The contribution areas that are relevant for authorship are:

1.  the conceptualization of the software;

2.  the source code, documentation and metadata, test code, setup or
    build configuration of the software;

3.  maintaining the software;

4.  safeguarding the continued existence or sustainability of the
    software project.

These four contribution areas are further explained below
(see [2.2](#subsec-contribution-areas)).

In contrast to authorship of textual research outputs such as articles
or monographs[^1]:

- software authorship does NOT necessitate the production of persistent
  software artifacts such as source code, documentation or issue
  reports;

- software authorship does NOT necessitate approval of software versions
  to be released or published;

- software authorship does NOT by default establish accountability of
  individual authors for the software, beyond their individual
  contributions and any legal accountability.

All those designated as authors should meet the two criteria for
authorship, and all who meet the two criteria should be identified as
authors. Those who do not meet the two criteria due to the
insubstantiality of their contribution should be acknowledged as
contributors (see below).

The project team, software owner(s) or governance body for the software
are responsible for identifying who meets the authorship criteria and
when contributions are substantial, as well as the definition of
additional authorship criteria for their specific software project.

If agreement cannot be reached about who qualifies for authorship, the
legal owners of the software should be asked to investigate.

## Non-Author Contributors {#subsec-non-author-contributors}

Contributors who do not meet the above criteria for authorship should
not be listed as authors, but they should be acknowledged.

## The Four Authorship Contribution Areas {#subsec-contribution-areas}

Contribution area 1 (*conceptualization of the software*) includes work
within the software project that defines the need, idea/concept,
architecture and design of the software that will support its subsequent
realization. Examples include ideation, user needs analysis,
requirements engineering and software design.

Contribution area 2 (*implementation of the software*) includes work to
create the usable software. Examples include software construction
("programming") and testing, configuration management such as build and
release engineering, software description such as documentation and
software metadata work.

Contribution area 3 (*maintaining the software*) includes work to
maintain the software. Examples include change management such as
working with contributors to discuss and include changes, making new
releases of the software, tracking and safeguarding software quality,
conducting code reviews, migrating the software to new versions of
platforms, retiring the software.

Contribution area 4 (*safeguarding the sustainability of the software*)
includes work to ensure that the software continues to exist, and can be
adapted to new use cases. Examples include securing continued funding
for the software, managing the software project, managing the team
working on the software, managing the community using the software,
working with the stakeholders of the software, creating publicity for
the software.

## Authorship, Accountability and Governance {#subsec-authorship-accountability-governance}

Software authorship differs from authorship of scholarly publications in
some important aspects
(see [2](#sec-who-is-an-author)). Existing recommendations for
authorship of papers require, for example, that authors "\[agree\] to be
accountable for all aspects of the work in ensuring that questions
related to the accuracy or integrity of any part of the work are
appropriately investigated and resolved." [[4]](#r4) In contrast, software
authorship does not require all authors to take responsibility for
addressing issues related to the quality or integrity of the whole
software project.

One reason for this is that the factors of production and the nature of
the output differ considerably between papers and software. In the vast
majority of cases, papers are a static medium of limited size that is
produced by a clearly defined and unchanging group of authors. Also,
only one version of the paper is usually published, and is then
considered to be final.

Software as an output, on the other hand, is dynamic by nature and
itself generates output. Additionally, between multiple invocations of
the same software, both its outputs and the set of software parts
actually used at runtime may differ. It may even be argued that the
software itself is a different one every time it is run. Over its
lifecycle, the size of the software codebase may change considerably,
while code is added, changed and removed. And finally, as it is
developed further, different versions of the software may be published,
each authored by a potentially different group of people.

Given these differences, it is not sensible to assume that all authors
of one software version can be accountable for quality assurance of
other versions (including versions published after the one they
authored), or of parts of the software whose code they may have never
read (including code that was removed in earlier versions). All authors
are, however, individually accountable for all aspects related to their
own contribution to the software project.

Consequently, if the scope of the contribution of individual authors is
in fact the whole software project, they in turn are again accountable
for safeguarding the quality and integrity of all aspects of the
software. This applies, for example, when the software is authored by a
single person, when the scope of individual authors' contribution is
either the whole software project, or when such accountability is
specified via the contribution itself, e.g., for maintenance, quality
assurance, release management, project leadership, etc. It follows that
if authors are not accountable for the whole software or software
version, they are also not generally required to approve a release or
publication of the same.

Individual projects can decide to deviate from these general principles
and set their own rules for accountability and for approval processes.
As with all decisions related to the software project, these decisions
and the rules for how they are made are part of the project governance.
There are different models of governance for research software projects.
The decision when to adopt one -- and which one -- must be made for each
research software project individually on a case-by-case basis. Changes
in how a project is governed may also be made more than once over a
project lifecycle to adapt to changes in the project team, the project's
stakeholders, its community, its funding situation, increased adoption,
etc. Some projects may start without formal structures and set clear
policies later when it becomes necessary, others may benefit from having
clear policies from the start.

Research software projects also always operate within a legal framework
that takes precedence over project governance whenever project rules are
in conflict with the law, or in cases where overriding interests require
intervention, such as gross negligence or when harm is being done
through the software. These cases then fall into the domain of case law.

# Guidance for software projects {#sec-guidance-for-software-projects}

The definition of software authorship and the criteria and contribution
areas outlined above provide a generic framework that should be
applicable to all software projects. In practice, each software project
will have to translate them into a policy that is suitable for the
project and reflects its specific requirements. The following
subsections discuss some of the central questions that software projects
will have to answer for their case when defining their authorship
policy.

## Moving between roles {#subsec-moving-between-roles}

Roles during the development of research software can be as dynamic as
the development itself. As the project progresses, contributors can
become more engaged, leading to meaningful contributions that qualify
for authorship (according to the criteria discussed above
in [2.2](#subsec-contribution-areas)). Likewise, some authors might
cease to be authors if they stop contributing to the software project,
or if their contributions are completely removed or replaced, e.g., in
the software source code. Unlike scientific research publishing, which
is static, the dynamic nature of research software allows for these
changes in authorship.

Software projects should have clear guidelines that specify if and when
a contributor can become an author, and vice versa, in what cases and
when they would cease to be one. Software projects should also decide
whether to adopt **"project authorship"** or **"version authorship"**,
or another model.

In project authorship, individuals remain authors independently of their
contributions to a specific version of the software until they no longer
qualify for authorship within the scope of the software project. In this
model, one-time contributions can qualify for authorship. Project
authorship can also be accompanied by a stepwise process where people
first become a contributor before they can qualify for authorship.

In version authorship, software authors are determined anew for each
version of the software that is defined, released and/or published. In
this model, authorship would be awarded based on substantial
contributions to the specific version in question, not the software
project as a whole.

While project authorship places emphasis on continuity, and version
authorship places emphasis on current impact, the process for qualifying
and disqualifying for authorship is the same for both models. In both
cases, the governance body should clearly outline the authorship policy
at the start of the project and make it available to all current and
future contributors (see more about documenting authorship
in [3.7](#subsec-how-to-document-authorship-policy)).

## Substantiality of Contributions {#subsec-susbstanitality-of-contributions}

The authorship recommendations consider that a person will qualify as an
author of the software if they have made substantial contributions to
one or several of the aspects of the software (conceptualization,
implementation, etc). However, what constitutes a substantial
contribution needs to be clarified.

The following are some necessary prerequisites for contributions:

1.  Contributions should be made with the intention to benefit the
    software project, and not as the means to a different end.

2.  Contributions should represent the work of the contributor, and
    should not be derived from the work of third parties.

As mentioned before, it is up to every individual project to decide for
themselves what may be considered a substantial contribution once the
prerequisites for contributions are met. There are different options for
processes to define substantiality, such as using a governance process
to determine substantiality and authorship, tying authorship to specific
roles that are seen to inherently contribute substantially (e.g., core
maintainers), or using metrics for contributions based on, e.g., size,
time spent, effort or continuity. When using metrics, projects should be
aware that metrics can be manipulated and may fail to reflect the actual
substantiality and effort of the contribution; projects should therefore
also consider the intention behind contributions.

Note that there may be legal obligations to follow when determining
authorship, independently of the process that is used for determining
the substantiality of contributions. A specific example is where a
publisher of a software paper may have specific rules for authorship,
such as having responsibility for the entirety of the code, which may
lead to the software paper having a different authors than the software
project.

## Group Authorship {#subsec-group-authorship}

Sometimes, publications and references use a group to comprise a set of
individual authors. Examples of this include using a group name ("The
ReSA Software Authorship Task Force"), or a role description ("The
\<software name\> Developers").

While this practice shows the intention to give credit even in those
cases where it doesn't seem possible or feasible to list all
individuals, it is **discouraged**. As described above, defining authors
should enable credit. It is a software citation principle that "software
citations should facilitate giving scholarly credit and normative, legal
attribution to all \[authors of\] the
software." [[6]](#r6) Group authorship
obfuscates the individuals that have made contributions to the software
that qualified them for authorship. While group authorship might be used
in some cases, for instance in social media publications or other
non-formal communication channels, software projects should refrain from
using only group authorship when providing author information about
their project. They should define a process for determining and
recording individual authorship and providing it in the source
repository of the software or elsewhere.

Some academic disciplines or projects may have established group
authorship as standard practice. We recommend that these adopt
individual authorship in their guidelines.

## Authorship of Forks {#subsec-authorship-of-forks}

Forked versions of a codebase may be developed further independently of
the original codebase, ultimately leading to two different codebases
that share the same origin. Determining the authorship of forks may seem
like a complex task, but fundamentally, the same principles and
guidelines apply as for any other research software project. Following
good practice under the principles of academic authorship, this means
that the authors of the original codebase initially are the authors of
the forked version. As development of the fork continues, and
substantial contributions are made to the fork, authorship evolves. The
granularity and pace of this evolution depends on the authorship model
that the fork project adopts, on the scope of the new contributions to
the fork, and on the scope and lifetime of the contributions made by the
original authors.

There are some cases where determining the authorship of a forked
research software needs careful attention. For a specific example, as
governance of the fork lies with the fork project, it may choose to
adopt an authorship model
(see [3.1](#subsec-moving-between-roles)), where the authorship is based
exclusively on substantial contributions to a specific version. This
way, the original authors of the fork source may in theory be replaced
by a new set of authors as a new (major) version of the fork is
released. We strongly recommend that in this specific situation,
projects take extra care to practice due diligence in terms of good
research practice, and to carefully follow legal copyright requirements.
This is especially crucial if the fork has been created due to conflicts
in the project community, and the incentive for crediting members of the
original community may be reduced.

As the fork is a derivative of the original codebase, we also recommend
in any case that projects make this relation transparent by citing the
original codebase from their software.

## Authorship of Work Related to the Software {#subsec-authoreship-of-related-work}

The authors of a software may differ from the authors of other work that
is related to the software, such as a journal article that describes the
software or a software paper published in a software journal (e.g., the
Journal of Open Source Software (JOSS) [^2]. These works are separate
works from the software, and their authorship must be established
independently of the authorship of the software.

As per the software authorship criteria, individuals who have
contributed solely to a journal article about the software, but not the
software itself, are not authors of the software. Vice versa, authors of
the software who have not contributed to the article are not authors of
the article.

Software papers are also separate works from the software itself,
although they are more closely linked to the software than a traditional
journal article. The review process for software papers usually includes
a review of a specific version of software as well as of any
accompanying written work. Sometimes, these reviews also suggest or
require changes in the software under review. Software journals may have
their own guidelines for authorship of the software paper that can lead
to a different set of authors for the software paper than for the
software itself. For software papers, we recommend that all authors of
the specific software version that is being reviewed for the software
paper are also listed as authors of the software paper.

![Some of the potential set relationships between software authors and contributors, and authors of works related to the software.](/tf-authorship/fig2.png)

<a id="fig2"></a>***Fig. 2:** Some of the potential set relationships between software authors and contributors, and authors of works related to the software.*

## Generative and Agentic Artificial Intelligence Tools cannot be Software Authors

Large language models can create output that supports software
development and engineering activities. Agentic tooling built around
such models can interact with existing codebases, change existing code
and generate new code and other artifacts. Some agents can also commit
to version control systems and add themselves as "co-authors" of such
commits. Despite this, neither large language models, nor agents and
other tools used to leverage the output of such models can be software
authors.

Large language models, tooling to interact with them, and agents, are
software tools that are ultimately activated, controlled and steered by
a human. They are inherently reactive and not active. They do not create
or maintain software of their own volition or creative intent. They do
not ideate novel contributions to research software. Without legal
personhood, they also cannot hold copyright, transfer rights and be
credited as an author in a legal sense. Courts and copyright offices
consistently tie authorship exclusively to human creativity and intent
and reject the notion of non-human authorship[^3]. Scientific publishers
also consistently allow the use of generative AI tools for improving
content but not creating it, and some disallow the listing of such tools
as authors altogether.

If generative or agentic AI tools are used in your project, and
substantial parts of their outputs are integrated in the software --
either unmodified, or after modification by human contributors -- we
recommend that you disclose this in your software documentation. This
can be done, for example, in an AI Declaration
Format [[5]](#r5) file, or in a similar format. In
addition, you can cite the tools and models that your project has used
as a reference from your software, if you consider them relevant
previous work. This can be done, for example, in a Citation File
Format [[3]](#r3) or
CodeMeta [[1]](#r1) file, or in a similar
format.

## How to Document the Authorship Policy for Software Projects {#subsec-how-to-document-authorship-policy}

How you apply authorship criteria in detail is specific to your project.
You may extend the contribution areas, or use a subset. In any case,
your software project should openly document how you handle
contributions with respect to authorship. The respective documentation
should be accessible from where contributions are made. In many cases,
the documentation of the authorship policy should be kept in the source
code repository. It should be linked from, or included in, other
potential entry points for contributors, such as templates for pull
requests/merge requests and issues, and relevant documentation.

The authorship policy should be documented in a dedicated file, e.g.,
`AUTHORSHIP`(`.md`/`.txt`) and should be saved in the same place as
similar documentation. This file should make clear

- for each of the four contribution areas, the concrete types of
  contributions to the project that qualify for contributorship, and
  which can qualify for authorship;

- the general authorship strategy the project uses (project authorship,
  version authorship, something else);

- the threshold for the substantiality of a contribution for each of the
  four contribution areas to qualify for authorship;

- vice versa, when/under which circumstances contributors cease being
  authors;

- the legal prerequisites that apply with regard to authorship in the
  specific project (e.g., do national laws apply, and if so, which
  ones);

- if and how information about current authors is recorded and
  publicized;

- if and how past authors are acknowledged;

- how decisions about authorship are made, and how conflicts with regard
  to authorship are resolved.

We provide a template for an authorship policy document that projects
can use and adapt below, and at
<https://researchsoft.org/tf-authorship-contribution/AUTHORSHIP.md.template>.
Text in angle brackets (<span style="color: #B35806;">`<>`</span>) represents a
placeholder and should be replaced. Text in square brackets
(<span style="color: #542788;">`[]`</span>) divided by a vertical bar
(<span style="color: #7F3B08;">`|`</span>) represents examples, or options, of which
suitable ones should be chosen.

# Authorship Policy Template

<aside>You can download a Markdown template for <span style="font-family: monospace;">AUTHORSHIP.md</span> here: <a href="../AUTHORSHIP.md.template">AUTHORSHIP.md.template</a>.</aside>
<br/>
<table style="border: 1px solid black;">
<tr><td>
<code style="color: #424242; font-size: 1.2em;">

\# Authorship policy for <span style="color: #B35806;">\<software project\></span>

<span style="color: #B35806;">\<Software project\></span> distinguishes between
contributors to the software, and authors of the software.

We define as **contributors** every person who contributed their own
work to the project, with the intention to benefit the project, in one
or more of the following contribution areas:

- the conceptualization of the software;

- the source code, documentation and metadata, test code, setup or build
  configuration of the software;

- maintaining the software;

- safeguarding the continued existence or sustainability of the software
  project.

We define as **authors** every person who has made a **substantial**
contribution in one or more of the contribution areas defined above.

Authorship is determined <span style="color: #542788;">\[for the <span style="color: #B35806;">\<software
project\></span> project, independently of individual
versions of <span style="color: #B35806;">\<software
project\></span> <span style="color: #7F3B08;">\|</span> <span style="color: #542788;">for each
version of <span style="color: #B35806;">\<software
project\></span> <span style="color: #542788;">that is \[tagged</span>
<span style="color: #7F3B08;">\|</span> <span style="color: #542788;">released</span>
<span style="color: #7F3B08;">\|</span> published\]\]</span></span>. To qualify
for authorship, contributors make a substantial contribution as defined
for each of the relevant contribution areas as:

- Conceptualization of the software: <span style="color: #B35806;">\<define\></span>

- Source code or documentation or metadata or test code or setup
  configuration or build configuration of the software:
  <span style="color: #B35806;">\<define\></span>

- Maintenance of the software: <span style="color: #B35806;">\<define\></span>

- Safeguarding the continued existence or sustainability of the software
  project: <span style="color: #B35806;">\<define\></span>

Contributors lose authorship status if and when:

- For conceptualization of the software, they
  <span style="color: #B35806;">\<define\></span>

- For source code or documentation or metadata or test code or setup
  configuration or build configuration of the software, they
  <span style="color: #B35806;">\<define\></span>

- For maintenance of the software, they <span style="color: #B35806;">\<define\></span>

- For safeguarding the continued existence or sustainability of the
  software project, they <span style="color: #B35806;">\<define\></span>

By becoming an author, contributors assert knowledge of the authorship
criteria and guidelines and accept the responsibilities that come with
it. <span style="color: #B35806;">\<Add any legal prerequisites that apply.\></span>

Information about current authors is recorded and publicized:

- in <span style="color: #542788;">\[the</span> <span style="color: #B35806;">\<citation metadata file
  `CITATION.cff`\></span> <span style="color: #542788;">in the source code repository
  at</span>
  <span style="color: #B35806;">\<URL\></span><span style="color: #542788;">\]</span>;

- in <span style="color: #542788;">\[the section "Authors" on the</span> <span style="color: #B35806;">\<software
  project website\></span> <span style="color: #542788;">at</span>
  <span style="color: #B35806;">\<URL\></span><span style="color: #542788;">\]</span>;

- in <span style="color: #542788;">\[publications of</span> <span style="color: #B35806;">\<software
  project\></span> <span style="color: #542788;">made</span> <span style="color: #B35806;">\<on
  Zenodo\></span> <span style="color: #542788;">if they are an author of the [version
  that is being published</span> <span style="color: #7F3B08;">\|</span>
  <span style="color: #542788;">software at the time of publication\]\]</span>.

Past authors are acknowledged as such:

- in <span style="color: #542788;">\[the section "Authors", subsection "Past authors", on
  the</span> <span style="color: #B35806;">\<software project
  website\></span> <span style="color: #542788;">at</span>
  <span style="color: #B35806;">\<URL\></span><span style="color: #542788;">\]</span>.

All contributors are acknowledged as such with their contribution roles,
and independently of their status as authors:

- in <span style="color: #542788;">\[the</span> 
  <span style="color: #B35806;">\<citation metadata file
  `CITATION.cff`\></span> 
  <span style="color: #542788;">in the source code repository
  at</span>
  <span style="color: #B35806;">\<URL\></span>
  <span style="color: #542788;">\]</span>;

- in <span style="color: #542788;">\[the `README.md` file in the source code repository
  at</span>
  <span style="color: #B35806;">\<URL\></span><span style="color: #542788;">\]</span>;

- in <span style="color: #542788;">\[the section "Contributors" on the</span>
  <span style="color: #B35806;">\<software project website\></span>
  <span style="color: #542788;">at</span>
  <span style="color: #B35806;">\<URL\></span><span style="color: #542788;">\]</span>.

Decisions to acknowledge authorship are made <span style="color: #542788;">\[by
the</span> <span style="color: #B35806;">\<software project\></span>
<span style="color: #542788;">steering committee before each publication of a new
version</span> <span style="color: #7F3B08;">\|</span> <span style="color: #542788;">by public vote on
an issue to acknowledge authorship for an
individual</span> <span style="color: #7F3B08;">\|</span> <span style="color: #542788;">by any
maintainer through accepting changes made to `CITATION.cff` in a merge
request\]</span>.

Conflicts with regard to authorship should be reported to the legal
owners of the software at
<span style="color: #B35806;">\<authorship@software-project.org\></span>. They will be
resolved following the <span style="color: #B35806;">\<software project\></span>
governance process as described at <span style="color: #B35806;">\<URL\></span>.

------------------------------------------------------------------------

This authorship policy is based on the ReSA Guidelines *Research
Software Authorship* [[2]](#r2).

</code>
</td>
</tr>
</table>

# Acknowledgements {#acknowledgements .unnumbered}

We would like to sincerely thank the following individuals for
contributing their expertise during the expert review phase for the
initial version of these guidelines:

- Daniel S. Katz (University of Illinois Urbana-Champaign)

- Javier de la Cueva ([javierdelacueva.es](https://www.javierdelacueva.es/))

- Melissa Harrison (EMBL European Bioinformatics Institute)

- Néstor de la Paz Ruiz (University of Twente)

- Pamela Wochner (Delft University of Technology)

- Will Riley (Wageningen University & Research)

We would also like to acknowledge the *Research Software Alliance*'s
support for the work of this task force, as well as the *Institute for
Research Software* (previously the Software Sustainability Institute
(SSI)) as organizer of Collaborations Workshop 2023, where this work was
started. The work carried out by the Institute for Research Software is
funded through the UKRI Digital Research Infrastructure Programme
through grant number AH/Z000114/1.

SD's work was supported by the Lower Saxony [Digital Science Support
Space (DS³)](https://ds3-nds.de) project as part of Hochschule.digital
Niedersachsen, funded by zukunft.niedersachsen. JC received funding
inside the Open.Make project funded by the Federal Ministry of Education
and Research (BMBF) and the state of Berlin under the Excellence
Strategy of the Federal Government and the Länder / [Berlin University
Alliance](http://www.berlin-university-alliance.de/), and from the
project "LAUDS Local Accessible Urban Digital Sustainable Factories is a
Horizon Europe research and innovation action" co-funded by the European
Union, 2024-2026, GA 101135986.

# Related Resources {#related-resources .unnumbered}

- Google Casebook "Authorship in Open Source":
  <https://google.github.io/opencasebook/authorship/>

# References

1. <a id="r1"></a>C. Boettiger et al. 2025. CodeMeta: Minimal metadata schemas for science software and code, in JSON-LD. url:<https://github.com/codemeta/codemeta>.
2. <a id="r2"></a>S. Druskat, N. Chue Hong, J. Colomb, H. Gruson, S. K. Bhogal, C. Martinez-Ortiz, and G. Turon. 2026. Research
Software Authorship. (2026). doi:[10.5281/zenodo.22834408](https://doi.org/10.5281/zenodo.22834408).
3. <a id="r3"></a>S. Druskat, J. H. Spaaks, N. Chue Hong, R. Haines, J. Baker, S. Bliven, E. Willighagen, D. Pérez-Suárez, and A. Konovalov. 2021. Citation File Format. doi:[10.5281/zenodo.5171937](https://doi.org/10.5281/zenodo.22834408). url:<https://citation-file-format.github.io>.
4. <a id="r4"></a>International Committee of Medical Journal Editors. 2026. ICMJE Recommendations: Defining the Role of Authors and Contributors. url:<http://web.archive.org/web/20260918032438/https://www.icmje.org/recommendations/browse/roles-and-responsibilities/defining-the-role-of-authors-and-contributors.html#two>.
5. <a id="r5"></a>ReSoft Labs B.V. 2026. AI Declaration Format. url:<https://ai-declaration.org/>.
6. <a id="r6"></a>A. M. Smith, D. S. Katz, K. E. Niemeyer, and FORCE11 Software Citation Working Group. 2016. Software citation principles. PeerJ Computer Science, 2, e86. doi:[10.7717/peerj-cs.86](https://doi.org/10.5281/zenodo.22834408).
7. <a id="r7"></a>U.S. Copyright Office. 2025. Copyright and Artificial Intelligence, Part 2: Copyrightability. Report of the Register of Copyrights. U.S. Copyright Office, (Jan. 2025). url:<https://www.copyright.gov/ai/Copyright-and-Artificial-Intelligence-Part-2-Copyrightability-Report.pdf>.
8. <a id="r8"></a>U.S. Copyright Office. 2023. Copyright registration guidance: works containing material generated by artificial intelligence. 37 CFR Pt. 202; Statement of Policy. (Mar. 2023). url:<https://www.federalregister.gov/documents/2023/03/16/2023-05321/copyright-registration-guidance-works-containing-material-generated-by-artificial-intelligence>.

[^1]: See, e.g., the definition by the International Committee of
    Medical Journal Editors (ICMJE) [[4]](#r4).

[^2]: <https://joss.theoj.org>

[^3]: See the copyright registration guidance rule by the U.S. Copyright
    Office [[8]](#r8): "Most
    fundamentally, the term 'author,' which is used in both the
    Constitution and the Copyright Act, excludes non-humans." The report
    *Copyright and Artificial Intelligence, Part 2:
    Copyrightability* [[7]](#r7) provides detailed
    discussion for further reference.
