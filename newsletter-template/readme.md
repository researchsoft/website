## Creating a newsletter

To create a new newsletter:
1. Open *two* browser windows. Set Browser One to [content/news](https://github.com/researchsoft/website/tree/master/content/news) and Browser Two to [an existing newsletter table of contents](https://raw.githubusercontent.com/researchsoft/website/master/content/news/2020-06/toc.md).
1. In Browser One, click **Add file** -> **Create new file**.
1. In Browser One, in **Name your file...** type ```/YYYY-MM/toc.md```, where YYYY-MM is the year and month of the new newsletter (for example 2020-08).
1. Copy and paste the text from Browser Two into the editing field in Browser One - _you do not need to edit the content at all_.
1. In Browser One, add a suitable Commit message, such as "Created newsletter for August 2020"
1. In Browser One, if you have permission, make sure **Commit directly to the ```master``` branch** is selected and click **Commit new file**.
1. In Browser Two, navigate to the [newsletter template](https://raw.githubusercontent.com/researchsoft/website/master/newsletter-template/index.md).
1. In Browser One, click **Add file** -> **Create new file**.
1. In Browser One, in **Name your file...** type ```index.md```.
1. Copy and paste the text from Browser Two into the editing field in Browser One.
1. In Browser One, update the ```title```, ```date```, and ```summary``` fields.
1. In Browser One, update the body of the newsletter with your content, referring to [Mastering Markdown](https://guides.github.com/features/mastering-markdown/) on [GitHub Guides](https://guides.github.com/).
1. In Browser One, add a suitable Commit message, such as "Added content for newsletter for August 2020".
1. In Browser One, if you have permission, make sure **Commit directly to the ```master``` branch** is selected and click **Commit new file**.
1. Monitor the [Netlify status button](https://github.com/researchsoft/website). When it says "netlify Success", visit the ReSA website to see the new newsletter.
