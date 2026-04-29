---
title: "Improvements to Software Citation Infrastructure: Coming Soon to Your Software DOI"
subtitle: ""
date: '2026-04-21'
authors:
  - name: Rebecca Ringuette
    orcid: https://orcid.org/0000-0003-0875-2023
  - name: Daniel Garijo
    orcid: https://orcid.org/0000-0003-0454-7145
  - name: Jonathan Starr
    orcid: https://orcid.org/0009-0007-1887-5410
  - name: Maria Gould
    orcid: https://orcid.org/0000-0002-2916-3423
  - name: Alex Ioannidis
    orcid: https://orcid.org/0000-0002-5082-6404

categories:

summary: "Read more..."
draft: false
---
[DOI: 10.59350/4j56z-awf56](https://doi.org/10.59350/4j56z-awf56) 

By [Rebecca Ringuette](https://orcid.org/0000-0003-0875-2023) (1,2), [Daniel Garijo](https://orcid.org/0000-0003-0454-7145) (3), [Jonathan Starr](https://orcid.org/0009-0007-1887-5410) (4), [Maria Gould](https://orcid.org/0000-0002-2916-3423) (5), [Alex Ioannidis](https://orcid.org/0000-0002-5082-6404) (6).

1 [Heliophysics Data and Model Consortium](https://ror.org/04xbq1n92)<br>
2 [University of Maryland, Baltimore County](https://ror.org/02qskvh78)<br>
3 [Universidad Politécnica de Madrid](https://ror.org/03n6nwv02), on behalf of [CodeMeta](https://codemeta.github.io/)<br>
4 [NumFocus](https://ror.org/004eyxv41)<br>
5 [DataCite](https://ror.org/04wxnsj81)<br>
6 [Zenodo](https://zenodo.org/)


In 2025 a group of stakeholders involved in research software infrastructure were successful in improving support for software citation. The “Making Software Citation Easy and Useful” working group was formed under the [Research Software Infrastructure (RSI) Forum](https://www.researchsoft.org/forums/rsi-forum/), a collaboration of infrastructure organisations committed to supporting research software, and those who develop it, as fundamental and vital to research. 

The group began by developing a focused set of priorities to improve the infrastructure supporting software citation[^1]. Software citation supports a range of use cases with wide impacts, including

* Proper credit attribution using software-specific roles;  
* Research transparency and validation, both components of Open Science;  
* Software impact assessment; and  
* Policy compliance and performance assessment.

Software citations must be machine-actionable and understandable by humans to satisfactorily support these use cases.

The group then identified a set of gaps in existing infrastructure[^2]. Representatives of relevant infrastructures, including GitHub, Zenodo, and DataCite, were invited to the presentation to obtain their reactions and feedback on the presented gaps. Representatives from Zenodo and DataCite were able to attend, but a representative from GitHub was not available. Several exciting collaborations were born, which are expected to result in measurable improvements in software citation infrastructure, both in the near future and through longer-term efforts. The ongoing projects most relevant in the shorter term are:

* ***Project**:* DataCite is interested in reviewing and iterating with our group on updated mappings for software (and data) between the DataCite and Schema.org metadata schemas. Once collaboratively finalized, DataCite will work towards implementing this mapping into their API for all to benefit. The [mapping effort for data](https://github.com/ESIPFed/science-on-schema.org/issues/265) will be developed under the leadership of the Earth Science Informatics Partners’ Science-on-Schema.org group, while the mapping for software will be led by CodeMeta, the international schema used to describe research software, once the development for version 4 is completed.   
  ***Expected Impact**:* Once these improved mappings are incorporated into DataCite’s API service, the creation of DOIs and correct Schema.org metadata for software will become easier, leading to increased support for software citation and consequently software discoverability internationally.

---

* ***Project:*** DataCite also agreed to address the demonstrated error in the [CrossCite citation service](http://citation.doi.org) to correctly produce BibTex citations for software.  
  ***Expected Impact**:* Resolving this error will increase the citability of all software with DataCite DOIs, particularly since many researchers use BibTex to construct the reference section of peer-reviewed publications.

---

* ***Project:*** New relation types will be explored for an upcoming version of the DataCite metadata schema to support indicating reference publications for software (and other resource types), and to support interlinking between datasets and the software that produced them, making accurate citation of software by datasets possible. In several other cases, major changes are required to increase support for improved credit attribution, which will not be a quick process.  
  ***Expected Impact**:* Connecting software to the proper reference publication in a machine-actionable manner will increase the accuracy of software citations to include both the version of the software and the reference publication. Connecting software to datasets allows accurate citation of software by the datasets it produces. Improving the flexibility of DataCite to support contributor types relevant to software enables those who contributed to the software receive more accurate credit when the software is cited.

---

* ***Project:*** Zenodo is interested in incorporating codemeta.json files, once further matured and aligned with schema.org, into their API for software submissions to more fully support rich metadata for software.   
  ***Expected Impact**:* Shifting from the plethora of existing metadata files to a single codemeta.json file as a preferred input file type to create DOIs for software on Zenodo will reduce current confusion between different sources of citation metadata (e.g., citation.cff files and the relevant DOIs). At the same time, maintaining functionality for existing input file types will be important to support existing workflows, but metadata synchronization by software developers, ideally through an automated process, will be critical to avoid citation confusion.

---

* ***Project:*** CodeMeta is actively working towards a redesign of their metadata system (v4.0), which will increase the alignment and interoperability between the CodeMeta and Schema.org schemas as one of several important goals. In the meantime, a CodeMeta representation compliant with Schema.org’s metadata validation tool ([https://validator.schema.org/](https://validator.schema.org/)) will soon be available as output in their [CodeMeta Generator service](https://codemeta.github.io/codemeta-generator/).  
  ***Expected Impact**:* Increasing alignment between the metadata schema for software and schema.org improves software citation by simplifying the creation of DOIs through DataCite’s API, which accepts schema.org metadata. Full impact is not expected until the mapping between DataCite and Schema.org is updated for software.


[^1]:  [https://docs.google.com/document/d/1hT8PHbubvxoMK3n2fMDlvAAYtESqrfSLhCI6gkb5RW8/edit?usp=sharing](https://docs.google.com/document/d/1hT8PHbubvxoMK3n2fMDlvAAYtESqrfSLhCI6gkb5RW8/edit?usp=sharing) 

[^2]:  [https://doi.org/10.5281/zenodo.19241562](https://doi.org/10.5281/zenodo.19241562) 



<div class="border rounded p-3">
  <strong>
    This post is citable and FAIR thanks to 
    <a href="https://rogue-scholar.org/">Rogue Scholar</a>.
    <a href="https://rogue-scholar.org/communities/researchsoft/records?q=&l=list&p=1&s=10&sort=newest">
      Browse ReSA posts
    </a> on the Rogue Scholar.
  </strong>
</div>
