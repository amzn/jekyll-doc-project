---
title: Localization
permalink: jekyllhowto-localization.html
sidebar: jekyllhowto
product: Jekyll How-to Guide
---

The Jekyll theme supports translation to Japanese and German. Content for each language is stored inside the `_docs_ja` or `_docs_de` folders, which are collections that have their own default attributes.

{% include note.html content="Translation is applied to HTML output, not to the Markdown source. This is because WorldServer cannot separate out HTML code from regular words in Markdown files, and consequently provides incorrect word counts and cost estimates. Additionally, localization managers do not need to rebuild the Jekyll site." %}

* TOC
{:toc}

## Prepare the Files {#preparefiles}

This first section explains how to properly prepare your files for translation. The next section explains how to [push your files through WorldServer's workflow](#pushworldserver).

### Where to Store the Translated Files

In Jekyll, a "collection" is a content type (similar to pages) with custom attributes and values that you can define.

In the Jekyll theme, each language has its own collection for storing Markdown files, images, and other assets. The three language collections are as follows:

* `_docs`
* `_docs_ja`
* `_docs_de`

There are different configuration files (one for each language). The configuration files use the collection that pertains to that configuration's language.

Copy the English project folder inside the `_docs` collection and paste it into the Japanese collection (`_docs_ja`) or the German collection (`_docs_de`). This project folder includes both Markdown files and the `images` and `audio` subfolders.

For example, if your project in the `_docs` folder looks like this:

```
 ├── _docs
    └── myproject
        ├── images
        ├── audio
        ├── file1.md
        └── file2.md
```

Your project should look the same in `docs_ja` or `docs_de`:

```
 ├── _docs_ja
    └── myproject
        ├── images
        ├── audio
        ├── file1.md
        └── file2.md
```

### Image Paths

You don't need to do anything special to ensure that image paths for translated languages are correctly written. Just make sure that images have the same image files in the `_docs_ja/<project name>/images` folders as you have in `_docs/<project name>/images`.

For example, if you have image `a.png`, `b.png`, and `c.png` in the `_docs/generic/images` version, these same images and file names must appear in the `_docs_ja/generic/images` or `_docs_de/generic/images` folders.

If you decide to localize your screenshots, keep the same file names for the translated files. The best approach to localizing the screenshots may be to have your localization manager get equivalent screenshots using language builds available to them. (Getting a Fire TV in Japanese, for example, may only be available if you order the device from a Japan location. Work with your localization manager and teach him or her how to capture the screenshots needed.)

As a best practice, don't embed text in graphics. If you have callouts in the text, use numbers that are defined in a legend below the image. Here's an example with callouts in a [Fire App Builder doc page](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-customize-look-and-feel#change-the-homepages-visual-elements-optional).

The image.html include supplies the base path, which is populated by a variable in the language's config file. The base path used for the Hippo output varies by language:

* English: `https://images-na.ssl-images-amazon.com/images/G/01/mobile-apps/dex/`
* Japanese: `https://images-na.ssl-images-amazon.com/images/G/01/mobile-apps/dex/ja`
* German: `https://images-na.ssl-images-amazon.com/images/G/01/mobile-apps/dex/de`

Upload your translated images into Media Central. For example, if your project is called `generic`, you would navigate to Media Central, go to `mobile-apps/dex/ja/generic` for Japanese (`mobile-apps/dex/de/generic` for German), and upload your images. Your image paths in the image include would be the same as in English: `generic/<my file>`.

This allows the same image path in your Markdown files to work across all languages. You don't have to adjust any image paths for your translated content.

### Content Includes

If you're reusing content across different files through includes, don't worry about trying to send the include source. The translation memory in WorldServer will automatically match similar content and will not charge for the translation of duplicate material.

### Conditional Text

If you have some content that is available only for English, or only for Japanese, etc., you can use conditional tags to vary the output. Each config file has a `language` property (with the values `english`, `japanese`, or `german`) that you can use with `if` statements. For example:

```
{% raw %}{% if site.language == "english" %}
// do this...
{% endif %}{% endraw %}
```

When you build in Japanese or German, this content won't be included.

Use conditional text when a feature might be available only in a specific locale.

### Sidebar {#thedocsidebar}

The sidebar data sources for each translated language are separate files (for example, into `generic_ja.yml`).

To create a sidebar for your language:

1.  In the `_data` folder, duplicate your English sidebar (e.g., `generic.yml`) and add a language suffix to the duplicate like this: `generic_ja.yml` and `generic_de.yml`.
2.  Add the language subpath (`ja` or `de`) into the `hurl` values in the sidebar.

    In the translated sidebar files, the file names and permalinks must remain the same as in the English sidebar -- those aspects of the file aren't translated.

    However, the `hurl` values should include the language subpath after `public`. For example, if the English `hurl` is `https://developer.amazon.com/public/some/path/subsublevel3`, the Japanese path would be `https://developer.amazon.com/public/ja/some/path/subsublevel3`. The German path would be `https://developer.amazon.com/public/de/some/path/subsublevel3`.

3.  Each of the translated files will need to refer to the correct sidebar in the front matter of the page. Open up each of the pages in your translation folder (for example, `_docs_ja/<project name>` and adjust the `sidebar` property in the frontmatter from something like `generic` to `generic_ja`.)

    {% include tip.html content="Do a bulk-find-and-replace operation to make this adjustment. In Atom, press **Cmd+Shift+F**. Define the file/directory pattern and make the replacement. Make sure you limit the directory to your translated docs directory only." %}

4.  Adjust the `related_resources_list` property in your sidebar so that only translated assets are listed in this section. For example, point to the forums that support a specific language only.

### Documentation homepage

{% include note.html content="Even though we're not using the homepage in the Hippo output, you must still do this step so that the linking script will work. The linking script depends on the homepage_products_ja.yml or homepage_products_de.yml file to get a list of products to iterate through." %}

The list of documentation on the English homepage gets generated from the `products` property in `homepage_products.yml` file in the `_data` folder. For Japanese, the `homepage_products_ja.yml` file is used. For German, the `homepage_products_de.yml` file is used.

The homepage data files for Japanese and German will be much shorter than the files for English. To configure the homepage:

1.  Open up `_data/homepage_products_ja.yml` or `_data/homepage_products_de.yml`.
2.  Add your project following the same format as the other files.

    For the sidebar, remember to reference the translated sidebar, not the English sidebar. For example, `generic_ja.yml`.

### Links

The `links.html` script first gathers a list of sidebar names from the `shortname` property in `homepage_products.yml` file (or from `homepage_products_ja.yml` for the Japanese build, or from `homepage_products_de.yml` for the German build). In order for the links.html script to work properly, the `homepage_products` file must list out all the sidebars it should loop through.

If you only translated one doc set, but that doc set contains links to other doc sets that aren't translated, add a reference to the other doc sets in the `homepage_products.yml` (or `homepage_products_ja.yml` or `homepage_products_ja.yml`) files like this:

```
- shortname: myproject
- shortname: someotherproject
```

Only the `shortname` property is required by the links script. Otherwise links containing the `ref` values in those projects won't be included in the links script.

Note that English sidebars will supply the English links in the Hippo output, not Japanese or German links. There aren't any special classes that insert icons for link targets that only exist in English.

### Top Navigation Bar

{% include note.html content="You can skip this section because we aren't using this theme as the display output for translated languages. However, I've kept it here for potential future use." %}

The navigation bar at the top of the page is generated from the `topnav.yml` file in `_data`.

Each collection specifies its own `topnav.yml` file. The German `docs_de` collection uses `topnav_de.yml`, and Japanese uses `topnav_ja.yml`.

This topnav value is set as one of the `defaults` in the configuration file for the language, so you never even notice it. However, each page silently uses the frontmatter `defaults` defined for that collection in the config file.

The topnav contains a link to the page on Github (if you have `github: true` as a frontmatter property on your page) and a link to the forum for the product. The forum link is specified in your sidebar file like this:

```
forum:
  forum_name: Fire TV Forum
  forum_link: https://forums.developer.amazon.com/spaces/43/index.html
```

Keep the forum name brief to allow for text expansion in German or Japanese.

### Search

{% include note.html content="You can skip this section because we aren't using this theme as the display output for translated languages. However, I've kept it here for potential future use." %}

Search is also set up as its own collection and included only in the appropriate language builds. The English build uses the search files in `_search`, Japanese uses `_search_ja` and German uses `_search_de`.

In English, the search file for Fire TV looks as follows:

```
---
layout: default

github_button: false
sidebar: firetv
type: search
permalink: search-firetv.html
---
```

In German, it looks like this:

```
---
layout: default

github_button: false
sidebar: firetv_de
type: search
permalink: search-firetv_de.html
---
```

And Japanese:

```
---
layout: default

github_button: false
sidebar: firetv_ja
type: search
permalink: search-firetv_ja.html
---
```

Note how the `sidebar` and `permalink` properties in the search contain the language suffix.

Open up `_search` and copy your English search file. Paste it into the `search_ja` or `search_de` folder. Open up the file and customize the frontmatter to include the appropriate language suffixes as shown in the examples above.

### UI Strings

Various UI strings in the theme are stored in the config file for that language build. The UI strings are extracted into a `uistrings` property.

Currently for Japanese, the strings have been verified by the localization manager. For German, the strings still need to be translated correctly. You can translate these strings by putting them into a `.txt` file and including them with the list of files to be translated.

### Provide a Glossary

Translators will need a glossary of terms to consult as they do translations. Glossaries are especially helpful if you aren't consistent in the way you refer to products or services.

If your content has technical jargon (for example, "APK"), it needs to be defined in the glossary so that translators understand it and don't convert it to more natural language.

### Follow Localization Best Practices

In addition to the preceding guidelines, also see the [Localization Best Practices for Source Content](https://w.amazon.com/index.php/LocLab/Loc_Best_Practices/Loc_Source_Content) from the Translation Services Platform team. Here are some highlights from the best practices:

*  Keep verb tenses simple (avoid pluperfect future participle gerunds, etc.).
*  Keep sentences short. Limit ideas to one idea per sentence.
*  Don't stack nouns into long strings.

## Push the Files Through the WorldServer Workflow {#pushworldserver}

After your files are properly prepared, you can push them through the WorldServer workflow.

### Onboard with WorldServer through TSP {#setupworldserver}

WorldServer is the tool used to handle the files that you push through the translation process. The [Translation Services Platform (TSP)](https://w.amazon.com/index.php/Translation%20Services%20Platform) team sets up your account in WorldServer and configures it with the right workflow you want for the translations you're making.

The TSP team also gives you $50k in credit (called a PO, or purchase order) automatically each year, without requiring you to do anything special. If you exceed the $50k, you will need to ask for an additional PO, and your department's financial person may need to get involved.

The TSP team handles the setup and configuration of your WorldServer account. TSP refer to this process as "[onboarding](https://w.amazon.com/index.php/LocalizationPlatform/Products/WorldServer/WorldServer_Onboarding_Process)." (Note: Onboarding does not involve any training. Also, do not confuse onboarding with waterboarding, even though the two experiences may be similar.) Onboarding can take 1-2 weeks, based on the size of the [SIM queue][1]. Onboarding involves submitting a MS Word questionnaire as an attachment to a SIM.

A WorldServer account with translation workflows for Japan and German has already been set up for the DevComm team. Moravia is designated as the translation vendor. However, any vendor that can process HTML can be used. You don't have to restrict your choice of vendors to only those who can support Markdown.

You need to set up a new account only if you're guiding another team through the translation workflow that isn't part of the DevComm stewardship. If this is the case, you can [submit a new onboarding request](https://w.amazon.com/index.php/LocalizationPlatform/Products/WorldServer/WorldServer_Onboarding_Process) to the TSP team on behalf of the team you're doing doc translation for. (Don't expect an outside group to move files through the WorldServer workflow.)

The TSP team can use the same workflow as our existing DevComm workflow, but to separate out the billing, they assign a different project name to the workflow.

All translation projects should go through the same workflow set up in WorldServer. The translation memory from one translation project will be retained and applied to future translations of the same content.

Each WorldServer configuration has its own translation memory database. You can import translation files or TM into WorldServer if you're migrating from another vendor, but this may take some time.

For TSP questions, reach out to Patrick Magee (patricm). Paul Kasper is also a person to contact for WorldServer and other localization issues.

### Generate the HTML Output and Zip the Files {#generateandzip}

1.  Generate the HTML output for your content by running this command:

    Japanese:

    ```
    jekyll serve --config _config_hippo_ja.yml
    ```

    German:

    ```
    jekyll serve --config _config_hippo_de.yml
    ```

    The translations will be built in the `_outputs_ja` or `outputs_de` folders -- not in the `_site` folder. The `_site` folder contains only the English builds.

    Note that these scripts are just shortcuts that store longer commands. `hippo_ja.sh` tells Jekyll to use the **_config_ja.yml** configuration file and to put the output in the **_output_ja** folder.

2.  In the **_output_ja** or **_output_de** folder, get the HTML output of the files.
3.  Look in the **hippomenus** folder and get the HTML version of the sidebar file.
4.  Compress these files into a zip file.

    {% include note.html content="If you're on a Mac, to avoid having `DS.Store` and `.thumbs.db` files included in the zip file (which will get marked as failed by WorldServer), use a zip tool such as [FolderWasher](http://sw.ixoft.com/folderwasher/) to \"wash\" the zip file of unwanted contents." %}

### Submit Your Files in WorldServer

1.  With your zipped files ready to go (as described in the previous step, ["Generate the HTML Output and Zip the Files"](#generateandzip)), log in to WorldServer at [https://worldserver9.amazon.com](https://worldserver9.amazon.com) using your Amazon credentials.

    If you can't log in, you need to have the Translation Platform Team set up an account for you. Reach out to Patrick Magee for help.

5.  In WorldServer, click **Assignments > Projects** and then **Create New Project**.
6.  Specify a name, the project type (**Appstore Developer Communications Documents - Moravia (English Source)**, and the **Locale**. Leave the due date empty.
7.  Upload your zip file (one zip file per project), and click **Copy Files Now***.

When you upload the zip file, Moravia (or the assigned vendor) also receives notification via email indicating that a new project has been uploaded. (This automated email notification is is part of the workflow setup that the Translation Services Platform team does when setting up your WorldServer account).

However, you should also let your translation manager and Moravia contact know. For Appstore, the Amazon localization manager for Japanese is Nanaho Nishiyama (nanahon). The Moravia contact for Japanese is Ryo Shibata at <a mailto="RyoS@moravia.com">RyoS@moravia.com</a>. For German, the contact is Marina Lanas at <a href="mailto="MarinaLa@moravia.com">MarinaLa@moravia.com</a>. Ryo is based in Japan, Marina in Argentina. Let them know that you added a new project.

The localization manager interfaces with Moravia to check and adjust the translation. The localization manager's changes apply to the translation memory source so that future updates will contain the changes.

Moravia will estimate the cost for translation and require your manager to approve the estimate prior to the work. Approvals are routed to your manager for approval. There's a workflow set up between Moravia, Amazon billing, and your manager to approve estimates and pay invoices.

### Downloading the Translated Files

When you create the project in WorldServer, the workflow creates translation tasks that Moravia "claims." When Moravia finishes with the translation, they finish the project by "completing the task." (These are the terms used in WorldServer.)

When the translation is finished, you will receive an email saying that you have been "assigned a task." At this point you will be able to see and download the translated files.

{% include note.html content="Before you download the files, ask your translation manager to QA the translation. Any changes the localization manager makes need to be made in the WorldServer source. If you download the files first and the localization manager later has edits, those edits will need to be applied to the WorldServer source, and then you'll need to re-download the files from WorldServer once again. If the localization manager doesn't input edits into the WorldServer source, the changes will be lost the next time you submit files for translation." %}

To download the translated files:

1.  Log into WorldServer.
2.  Go to **Assignments > Projects.**
3.  In the Project View drop-down menu, select **projects for clients I am a member of**.
4.  Click your project's name.
5.  In the View drop-down menu, select **all tasks**.
6.  Select the check box at the top of the **Task** column.
7.  Move your mouse over **More Options** and select **Asset Options > Download**.
8.  Select **Target Assets**, and then click **Download**.
9.  Uncompress the Zip file and drill into the actual folder containing files.

## Getting the Translated Files Back into Your Project

The translated files should **not** be inserted back into the \_docs_ja or \_docs_de folder your project. The translation exists in the HTML output only. The files are ready to be copied and pasted into the appropriate pages in Hippo, with no additional work required by Jekyll or you.

You can store the translated HTML files in a subfolder in your project (to keep them safe in case Hippo munges them), but there's no need to overwrite the English Markdown source you originally copied into *_docs_ja* or *_docs_de* folders. When you have updates to make to your translation, you'll go through the same process described in this document again.

{% include note.html content="We are relying on the accuracy of translation memory in WorldServer to recognize content that is the same. If you change 100 words across 30 files and resubmit them for re-translation, the cost of the re-translation will be limited to the 100 sentences in which those 100 words appear. You should not be charged for re-translating all the pages that have already been translated and whose source is stored in translation memory in WorldServer." %}

Note that translation memory in WorldServer is separated out by project. If you change the project name, the translation memory will not be available unless the translation team manually exports it and reimports it into the new project.

{% include warning.html content="If you're using a new vendor, make sure they are storing the translated content in translation memory and not just translating off the cuff in a Word file." %}

### Publishing on Hippo

1.  Upload the translated sidebar menu into the [same place in Media Central][2] where we store all sidebar menus. (Unlike with images, the sidebar menus are all contained in the same Media Central folder, not within subfolders. Subfolders aren't necessary because the sidebar menu names are all unique.)
2.  To publish the page content, in the [Hippo console](https://masdp-cms.amazon.com/), browse to the English version of the page.
3.  Click the English language menu and then select `Japanese`. If the Japanese page does not exist, a green plus sign will appear next to Japanese. Clicking this button will clone the English page into the corresponding directory in the Japanese section of the site.
4.  Use the same file names and directory paths for Japanese content as you do for English.
5.  Paste in the Japanese or German content into the cloned Hippo page and publish as usual.

{% include note.html content="Hippo does not support German. As a result, if you need to publish German, reach out to Aperture with questions." %}

### Publishing Updates

When you have updates to your content, you don't need to meticulously keep track of all changed files or send diff files to TSP. Instead, just zip your files up and resubmit them through the same process as before. The translation memory in WorldServer will match on previously translated strings. You will only be charged for new or updated strings that need new translation.


[1]: https://issues.amazon.com/issues/search?q=status%3A(Open)+containingFolder%3A(e2ed8625-8d85-4bbf-b2cc-1ebeb58714a0)+folderType%3A(Default)+label%3A(f44911fa-6cfe-47fb-adf1-9131e8a4488c)&sort=createDate+desc&selectedDocument=5e904e75-510e-4634-b7a0-13e76995becb

[2]: https://mediacentral.amazon.com/apps/basic/media-viewer/index.mhtml#command=getdirectory&path=mobile-apps/devportal/menus&ou=1

{% include links.html %}
