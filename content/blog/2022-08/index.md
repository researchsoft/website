---
title: "FAIR for Research Software (FAIR4RS): A summary"
subtitle: ""
date: 2022-08-15
authors:
  - ""
categories: 
  - Blog
  - Task force

summary: "Read more..."
draft: false
---

_August, 2022_  

Authors: Daniel S. Katz, Tom Honeyman, Paula Andrea Martinez, Michelle Barker, Leyla Jael Castro, Neil Chue Hong, Morane Gruenpeter, Jennifer Harrow, Anna-Lena Lamprecht, Carlos Martinez-Ortiz, Fotis Psomopoulos

## Introduction

This blog post describes the need for, the work towards, and the [recent completion](https://www.researchsoft.org/blog/2022-06/) of version 1.0 of the FAIR Principles for Research Software ([FAIR4RS Principles v1.0](https://doi.org/10.15497/RDA00068)). It also briefly discusses the principles themselves, and how they differ from the FAIR data principles. It concludes with next steps that stakeholders can take to implement the principles.

## Need for FAIR principles for research software

In recent years, as scholarly research has become more digital, the elements and products of this research are, in theory, easier to distribute and share. This, in turn, leads to the promise of better use of these elements, potentially increasing reproducibility, reuse, and derived products, in many cases ideally improved and expansive versions of the earlier products. Of course, for this to occur, these products need to be first findable and accessible. These ideas led to work to ensure that data are shared in a way that enables and enhances reuse by humans and machines, encapsulated in “[The FAIR Guiding Principles for scientific data management and stewardship](https://doi.org/10.1038/sdata.2016.18)” (hereafter referred to as the FAIR data principles). This work was intended to support a vision where valuable scientific outputs are made ‘FAIR’ by becoming more Findable, Accessible, Interoperable and Reusable, but initially focused on data.

For a variety of reasons, including the preexisting open access (to publications) and open-source software movements, increased awareness of problems with reproducibility, economic desires to reduce redundant work, a highly motivated set of individuals who brought in their organizations and projects, and a catchy acronym, the FAIR data principles succeeded in building awareness of the importance of data and has led to a large number of policy changes related to data sharing or access (e.g., policies from [UNESCO](https://en.unesco.org/science-sustainable-future/open-science/recommendation), [OECD](https://www.oecd.org/sti/recommendation-access-to-research-data-from-public-funding.htm), [US](https://sharing.nih.gov/data-management-and-sharing-policy/about-data-management-sharing-policy/data-management-and-sharing-policy-overview#after), [UK](https://www.ukri.org/wp-content/uploads/2020/10/UKRI-020920-ConcordatonOpenResearchData.pdf), [Europe](https://www.eosc.eu/sites/default/files/SRIA_2022_01.pdf), [Australia](https://www.nhmrc.gov.au/about-us/resources/open-access-policy)), which now all make reference to the FAIR (data) principles.

While the FAIR data principles were intended to be applicable to many kinds of digital assets at one level, at another, they were written with a focus on data. Many of the FAIR data principles are discussed as applying to “(meta)data”, which is a compressed way of writing that they apply to both data and metadata about the data. While it is clear that all digital assets can be stored as data, and even physical objects can be represented by data, these digital objects are not merely data, and understanding their individual properties can lead to better-fitting solutions.

Diving into the FAIR data principles, while it conceptually makes sense to treat metadata about software similarly to metadata about data, doing so assumes that data and software are produced, shared, published, and archived in similar ways, which is not correct. And the FAIR data concepts themselves aren’t clearly translatable to software. For example, how is interoperability defined for software? Does reusability for software include being able to read the software source code, build an executable version of the software, actually execute it, improve it, build on it, etc.?

A final problem with the original FAIR data principles is that they were written as a single product, with no defined means to resolve any issue about how to interpret them, or to change them. While the data community often thinks of data as a product, the software community knows that software is never done, and a maintenance plan needs to be part of the development from the start.

These challenges inspired a group of researchers to lead a community effort to define a set of FAIR principles for research software (FAIR4RS), and a process to maintain these principles. This group came together in [a gradual process](https://doi.org/10.5281/zenodo.5037157) starting in 2019, adding additional leaders, contributors, and reviewers in a series of events, and decided to work as a working group under the aegis of three organizations: the Research Data Alliance (RDA), the Research Software Alliance (ReSA), and FORCE11 (the Future of Research Communication and eScholarship).

## FAIR4RS process

The group used a divide-and-conquer methodology, initially starting with four subgroups, which ran roughly from July 2020 to March 2021:

1. A fresh look at FAIR for Research Software. This subgroup examined the FAIR principles in the context of research software from scratch, not based on [pre-existing work](https://doi.org/10.3233/DS-190026). It published a [report on its findings](https://doi.org/10.48550/arXiv.2101.10883).

2. FAIR work in other contexts. This subgroup analysed how FAIR principles are applied to research objects other than data/software. Its findings are captured in an [unpublished report](https://docs.google.com/document/d/1zPjeJgVKg4q1nEYTxRJIas2w3MYYlUVOnjUtJRLp7QI/edit).

3. Research software definition. This subgroup reviewed existing definitions to specify the scope for the working group outputs. It also published a [final report containing these definitions and a record of the discussion](https://doi.org/10.5281/zenodo.5504016).

4. New research related to FAIR software. This group reviewed recent research and studies around FAIR software, via up-to-date identification of approaches that can help structure FAIR4RS work. It has produced a [reading list](https://doi.org/10.5281/zenodo.4555864) and a [report on important insights from the review and from a survey](https://doi.org/10.5281/zenodo.4908918).

The work from these subgroups were brought together, and a small group [drafted an initial version of the FAIR4RS Principles, along with open questions](https://doi.org/10.5281/zenodo.4635410). These documents were circulated to the larger community for their feedback in [March 2021](https://doi.org/10.5281/zenodo.4635410) and [May 2021](https://doi.org/10.5281/zenodo.6637920). Next, the group presented the community with different alternatives for the scope, intent, and wording of the draft FAIR4RS Principles, asking them to comment on which choice they felt was most appropriate. After this, the group held a formal review by the various stakeholder communities of [a full working draft of the principles](https://doi.org/10.15497/RDA00065). This was intended to get approval on the wording of the principles and explanatory text before the next stages, developing guidance to support adoption and implementation.

That stage, which ran from September 2021 to April 2022, included 3 more subgroups:

5. Adoption support. This subgroup identified and examined a set of resources, including a gap analysis that could have challenged the adoption of the FAIR4RS Principles. It also documented emerging resources and projects and made suggestions on how to further advance this area, all available in a [published report](https://doi.org/10.5281/zenodo.6374598).

6. Adoption support. This subgroup identified and analysed information from a selection of organizations that have started implementing FAIR4RS at different levels of granularity. It published a [report](https://doi.org/10.5281/zenodo.6258366) that briefly describes the results so far for each organization.

7. Governance. This subgroup proposed that the RDA Software Source Code Interest Group be the maintenance home for the FAIR4RS Principles. This creates a space where concerns or queries about the principles could be raised. For instance, at RDA plenary sessions organized by this Interest Group, where there may be opportunities for adopters to report back on progress and challenges. In two years, the community will gather again to see if anything needs to be changed. This proposal was accepted by the full group and included in the [final output](https://doi.org/10.15497/RDA00068).

The results of these subgroups were used by a small team in a set of writing sprints that led to a draft of v1.0 of the FAIR4RS Principles. This draft was then circulated and formally reviewed by the community in April and May 2022. A small number of minor comments were addressed, leading to the final version 1.0 of the FAIR for Research Software Principles ([FAIR4RS Principles v1.0](https://doi.org/10.15497/RDA00068)), which were officially approved by RDA in June 2022.

Overall, the FAIR4RS WG engaged about 500 people (from more than 110 organizations over more than 34 countries) in the development of the principles, including the more than 240 FAIR4RS WG members. “[The FAIR4RS team: Working together to make research software FAIR](https://doi.org/10.5281/zenodo.5037157)”, “[The review of Community Activities in 2021](https://doi.org/10.5281/zenodo.6336625)” and the [FAIR4RS Community Profile](https://doi.org/10.5281/zenodo.5019939) provide details on the approach to community collaboration, showcasing a model for teamwork across the research software community. Part of the reason for the FAIR4RS WG’s very high levels of success in community engagement is because it brought together a range of efforts to apply aspects of FAIR to research software since 2017, and because it sought to align with a range of FAIR data efforts. In this way the FAIR4RS WG was able to leverage and amplify existing community momentum to demonstrate the benefits of implementing the principles.

As commonly happens in large groups, recognizing contributions and defining co-authorship rules is not an easy task, particularly when people from different communities with different practices for co-authorship order contribute at different stages of the process. All contributions, from joining the working group via signing up to the mailing list, to participating in subgroups, events, and consultations, to editing and authoring the FAIR4RS documents are recognized and recorded. Contributions at each stage are tracked according to the level of contribution, broadly in three categories: leadership roles, significant contributions (either by importance to the final documents or by consistent useful contributions), and other useful contributions. Contributors’ placement in the author list are based on the level and amount of contributions they have made to the outputs at that point. The FAIR4RS WG is also listed as the last co-author, to recognize that all members play a part in ensuring that outputs are appropriate and adopted. This model ensures that all contributors are recognized and rewarded, and takes the challenges of managing a large number of individual contributors into account.

## FAIR4RS principles

Cite as: Chue Hong, Neil P., Katz, Daniel S., Barker, Michelle, Lamprecht, Anna-Lena, Martinez, Carlos, Psomopoulos, Fotis E., Harrow, Jen, Castro, Leyla Jael, Gruenpeter, Morane, Martinez, Paula Andrea, Honeyman, Tom, Struck, Alessandra, Lee, Allen, Loewe, Axel, van Werkhoven, Ben, Jones, Catherine, Garijo, Daniel, Plomp, Esther, Genova, Francoise, … RDA FAIR4RS WG. (2022). FAIR Principles for Research Software (FAIR4RS Principles) (1.0). [https://doi.org/10.15497/RDA00068](https://doi.org/10.15497/RDA00068).

The FAIR4RS Principles v1.0 are:

F: Software, and its associated metadata, is easy for both humans and machines to find. 

F1. Software is assigned a globally unique and persistent identifier.

F1.1. Components of the software representing levels of granularity are assigned distinct identifiers.

F1.2. Different versions of the software are assigned distinct identifiers.

F2. Software is described with rich metadata.

F3. Metadata clearly and explicitly include the identifier of the software they describe.

F4. Metadata are FAIR, searchable and indexable.



A: Software, and its metadata, is retrievable via standardized protocols. 

A1. Software is retrievable by its identifier using a standardized communications protocol.

A1.1. The protocol is open, free, and universally implementable.

A1.2. The protocol allows for an authentication and authorization procedure, where necessary.

A2. Metadata are accessible, even when the software is no longer available.

I: Software interoperates with other software by exchanging data and/or metadata, and/or through interaction via application programming interfaces (APIs), described through standards.

I1. Software reads, writes and exchanges data in a way that meets domain-relevant community standards.

I2. Software includes qualified references to other objects.

R: Software is both usable (can be executed) and reusable (can be understood, modified, built upon, or incorporated into other software).

R1. Software is described with a plurality of accurate and relevant attributes.

R1.1. Software is given a clear and accessible license.

R1.2. Software is associated with detailed provenance.

R2. Software includes qualified references to other software.

R3. Software meets domain-relevant community standards.

Overall, the Findable and Accessible FAIR4RS Principles are quite similar to the equivalent [FAIR data principles](https://doi.org/10.1038/sdata.2016.18), though of course, the term “(meta)data” used there has been expanded to “software and its metadata”. We did extend the F1 principle to take the complexity of software into account, and we use F1.2 to recognize that software typically evolves and has multiple versions, and each needs an identifier.


The Interoperable and Reusable FAIR4RS Principles are somewhat different than the equivalent FAIR data principles, because of the differences between software and data (see Section 2 of "[A Fresh Look at FAIR for Research Software](https://doi.org/10.48550/arXiv.2101.10883)"), where the FAIR4RS group had to choose how to define these terms in the context of software, reaching the definitions shown above in the principles. Other definitions might have been chosen, leading to different principles, but the important part is to have community agreement on a set of workable principles, which we believe we have achieved. We define interoperability as how information (data, metadata, application programming interfaces (APIs)) is exchanged. Finally, we define reusability as both usability (the software can be executed) and reusability (it can be understood, modified, built upon, or incorporated into other software).

## Next steps

The various types of stakeholders who work with research software now have a solid basis that will help them shape the steps they take to further support dissemination and adoption of the FAIR4RS Principles. Fundamentally, these are all based on publicizing the principles and then taking actions based on them, such as encouraging references to them in appropriate contexts (e.g., if policy or guidance mentions making data FAIR, then ask to make Data and Software FAIR, and reference the different forms of the principles).

- Scholarly societies and librarians can develop guidance on how to make software FAIR, aimed at their communities.
- Individuals and software projects can ensure that they make their software FAIR.
- Publishers can require that software developed as part of work in scholarly publications is made FAIR.
- Funders can require that software developed in their projects is made FAIR.
- Institutions can incentivise and evaluate their employees based, in part, on the FAIRness of the software they produce.

We look forward to seeing the results of these steps, which we think will lead to more FAIR software, in turn leading to more reuse and less redundant development.

### Important links
  * [FAIR4 for Research Software completion article](https://www.researchsoft.org/blog/2022-06/)
  * [FAIR4RS Principles v1.0 on Zenodo](https://doi.org/10.15497/RDA00068)
  * [Sign up for the ReSA mailing list](https://landing.mailerlite.com/webforms/landing/i5e1h2)
  * [ReSA newsletters](/news)
  * [ReSA resources](/resa-resources)
  * [Contact us](/contact)
  