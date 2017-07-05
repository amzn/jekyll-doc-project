---
title: Content and formatting
permalink: jekyllhowto-content-and-formatting.html
sidebar: jekyllhowto
product: Jekyll How-to Guide
---

This page covers all the details you need to know about content and formatting, including topics such as page directories, links, alerts, images, and more.  

* TOC
{:toc}

## Where to Store Your Pages

Store your files the **_docs** folder, inside a project folder that reflects your product's name. Inside your project folder, you can organize your pages in any of subdirectories you want. As long as each page has a permalink property in the front matter, the pages will be moved into the root directory and flattened (that is, pulled out of any subdirectories) when your site builds.

## Pages and Front matter

Each Jekyll page (which uses an .md extension) has front matter at the top set off with three hyphens at the top and bottom. The front matter for each page should look like this:

``` yaml
---
title: My File Name
permalink: myfile.html
sidebar: mysidebar
product: My Product
---
```

You can store the `sidebar` and `product` properties as defaults in your \_config.yml file if you want. See the `defaults` property there.

If you have a colon in your title, put the title's value in parentheses, like this:

```
---
title: "ACME: A generic project"
permalink: myfile.html
sidebar: mysidebar
product: My Product
---
```

The `layout` property for the sidebar is specified in the configuration file's defaults. `_config.yml` specifies a Jekyll layout (`default.html`).

The format for any content in the front matter must be in YAML syntax. You can't use Liquid or other `{% raw %}{{ }}{% endraw %}` syntax in your front matter. (In other words, no variables in YAML.)

The `permalink` should match your file name exactly, and it should include the html file extension (even if your file is markdown).

## Markdown Formatting

Jekyll uses [kramdown-flavored Markdown](http://kramdown.gettalong.org/). You can read up more on kramdown and implement any of the techniques available. Some templates for alerts and images are available.

## On-Page Table of Contents {#kramdowntoc}

To add a table of contents in your topic, add this formatting where you want the table to appear:

```
* TOC
{:toc}
```

Additionally, add this into your frontmatter:

```

```

If you don't have `` in your frontmatter, the TOC won't show up in the layout.

## Headings

Use pound signs before the heading title to designate the level. *Note that headings must have one empty line before and after the heading.*

```
## Second-level heading
```

**Result:**

## Second-level heading

-----

```
### Third-level heading
```

**Result:**

### Third-level heading

------

```
#### Fourth-level heading
```

**Result:**

#### Fourth-level heading

You can also use the [Setext style headers](https://kramdown.gettalong.org/syntax.html#headers) if you want. If you're converting content to Markdown from Word docs using Pandoc, Pandoc will use the Setext style header markup. This means level 2 headers will be underlined rather than containing the `##` markup:

```
Second level header
-------------------
```

**Result:**

Second level header
-------------------

First level headers are underlined with an equals sign (but since h1 headings are used only for the doc title, not any subheadings within the doc, you won't see them). Levels beyond 2 use the regular pounds signs (`###`) for markup.



## Bulleted Lists

This is a bulleted list:

```
*  first item
*  second item
*  third item
```

Use two spaces after the asterisk.

**Result:**

*  first item
*  second item
*  third item




## Numbered list

This is a simple numbered list:

```
1.  First item.
2.  Second item.
3.  Third item.
```

Use two spaces after each numbered item (until number 10, then use 1 space). You can use whatever numbers you want &mdash; when the Markdown filter processes the content, it will correctly sequence the list items.

**Result:**

1.  First item.
1.  Second item.
1.  Third item.

You can control numbering with this syntax on the line preceding a list item: `{:start="3"}`

## Complex Lists

Here's a more complex list:

```
1.  Sample first item.

    * sub-bullet one
    * sub-bullet two

2.  Continuing the list

    1.  sub-list numbered one
    2.  sub-list numbered two

3.  Another list item.
```

**Result:**

1.  Sample first item.

    *  sub-bullet one
    *  sub-bullet two

2.  Continuing the list

    1.  sub-list numbered one
    2.  sub-list numbered two

3.  Another list item.

## Another Complex List

Here's a list with some intercepting text:

```
1.  Sample first item.

    This is a result statement that talks about something....

2.  Continuing the list

    {% raw %}{% include note.html content="This is a sample note. If you have \"quotes\", you must escape them." %} {% endraw %}

    Here's a list in here:

    * first item
    * second item

3.  Another list item.

    ```js
    function alert("hello");
    ```

4.  Another item.
```

**Result:**

1.  Sample first item.

    This is a result statement that talks about something....

2.  Continuing the list

    {% include note.html content="Remember to do this. If you have \"quotes\", you must escape them." %}

    Here's a list in here:

    * first item
    * second item

3.  Another list item.

    ```js
    function alert("hello");
    ```

4.  Another item.

### Key Principle to Remember with Lists

The key principle is to line up the first character after the dot following the number:

{% include image.html file="liningup.png" caption="Lining up the left edge ensures the list stays intact." %}

For the sake of simplicity, use two spaces after the dot for numbers 1 through 9. Use one space for numbers 10 and up. If any part of your list doesn't align on this left edge, the list will not render correctly.

## Alerts

For alerts, use the alerts templates, like this:

```liquid
{% raw %}{% include note.html content="This is a note." %}{% endraw %}
```

**Result:**
{% include note.html content="This is a note." %}

-----

```liquid
{% raw %}{% include tip.html content="This is a tip." %}{% endraw %}
```

**Result:**
{% include tip.html content="This is a tip." %}

-----

```liquid
{% raw %}{% include warning.html content="This is a warning." %}{% endraw %}
```

**Result:**
{% include warning.html content="This is a warning." %}

-----

```liquid
{% raw %}{% include important.html content="This is important." %}{% endraw %}
```

**Result:**
{% include important.html content="This is important." %}

-----

Alerts have just one include property: `content`. If you need to use quotation inside the `content` quotation marks, escape the quotation marks by putting back slashes (`\`) before them.

```liquid
{% raw %}{{% include warning.html content="This is a \"serious\" warning." %}{% endraw %}
```

**Result:**

{% include warning.html content="This is a \"serious\" warning." %}

{% comment %}For instructions on how to use variables or other YAML syntax inside of alert templates, see [Using Variables Inside Parameters with Includes][advanced-formatting#variableincludes].   {% endcomment %}

Note that you can use Markdown syntax inside of your alerts. (You don't need to add `markdown="span"` tags anywhere, since they're already included in the alert templates.)

## Callouts

Callouts are similar to alerts but are intended for longer text. A callout simply has a left border that is a specific color. The color uses Bootstrap's classes.

```liquid
{% raw %}{% include callout.html content="This is my callout. It tends to be a bit longer, and provides less visual attention than an alert. <br/><br/>Here is a new paragraph." type="info" title="Sample Callout" %}{% endraw %}
```

{% include callout.html content="This is my callout. It tends to be a bit longer, and provides less visual attention than an alert. <br/><br/>Here is a new paragraph." type="info" title="Sample Callout" %}

Parameters are as follows:

| Property | Description | Required
|-------|--------|
| `content` | The content for the parameter. | Required |
| `type` | The color for the callout. Options are info, warning, danger, success, primary, default. | Required |
| `title` | A title for the callout. The color matches the type property. | Required |

As with alerts, you can use Markdown inside of callouts.

## Using Variables Inside Parameters with Includes {#variableincludes}

Suppose you have a product name or some other property that you're storing as a variable in your configuration file, and you want to use this variable in the `content` parameter for your alert. You will get an error if you use Liquid syntax inside a include parameter. For example, this syntax will produce an error:

```liquid
{% raw %}{% include note.html content="The {{site.company}} is pleased to announce
an upcoming release." %}{% endraw %}
```

To use variables in your include parameters, you must use the "variable parameter" approach. First you use a `capture` tag to capture some content. Then you reference this captured tag in your include. Here's an example.

In my site configuration file, I have a property called `myvariable`.

```
myvariable: ACME
```

I want to use this variable in my note include.

First, before the note, capture the content for the note's include like this:

```liquid
{% raw %}{% capture company_note %}The {{site.myvariable}} company is pleased to announce an upcoming release.{% endcapture %}{% endraw %}
```

Now reference the `company_note` in your `include` parameter like this:

```liquid
{% raw %}{% include note.html content=company_note}{% endraw %}
```

**Result**:

{% capture company_note %}The {{site.myvariable}} company is pleased to announce an upcoming release.{% endcapture %}
{% include note.html content=company_note %}

Note the omission of quotation marks with variable parameters.

Also note that instead of storing the variable in your site's configuration file, you could also put the variable in your page's front matter. Then instead of using `{% raw %}{{site.myvariable}}{% endraw %}`, you would use `{% raw %}{{page.myvariable}}{% endraw %}`.

## Links

There are several types of links:

* [Cross-References](#automatedlinks)
* [Bookmark Links on the Same Page](#bookmarkssampepage)
* [Links to External Web Resources](#linksexternalwebresources)
* [Links to Sections on Other Pages](#bookmarklinks)

### Cross-References {#automatedlinks}

To link one documentation topic to another inside the same project (internal cross references, not links to external web resources), don't use manual Markdown links. Instead, use an automated ref property that is generated from the `_include/links.html` file (which loops through your sidebar and gets all the `ref` properties).

This automated approach is more efficient and easier than manual Markdown link formatting. Additionally, it is the only way to scale link paths for translation projects.

For each item in your sidebar menu, include a `ref` property like this:

<pre>
- title: Sample Topic
  jurl: /sample.html
  hurl: /solutions/devices/product/docs/sample
  <span class="red">ref: sample</span>
</pre>

Then open your **\_config.yml** file and make sure your project's sidebar name is included in the **sidebars** property.

The file that generates the links (`_includes/links.html`) iterates through the sidebar data files (all the ones listed in your configuration file, that is) and constructs a list of Markdown reference-style links.

(The forward slash (`/`), which is listed in the sidebar data file's `jurl` property, gets removed from the Jekyll links, which allows links to be relative. It's included in the sidebar data file to facilitate menu highlighting.)

On each of your pages, you must include the links.html file at the bottom of the content:

```liquid
{% raw %}{% include links.html %} {% endraw %}
```

{% include note.html content="If your links don't work, check to see whether you remembered to include the links.html file at the bottom of each topic." %}

When you add the {% raw %}`{% include links.html %}`{% endraw %} reference at the end of the topic, it's the equivalent of adding a [Markdown reference-style links](https://daringfireball.net/projects/markdown/syntax#link) like this:

```
[sample]: somelink.html
```

You won't actually see this referent on your page because it all happens in the build process. (The links.html file dynamically builds all the `ref` instances and then inserts this content at the bottom of the page, and then the Markdown filter process the content, converting it to HTML and inserting links where the references appear.)

{% include tip.html content="When you choose the `ref` values in your sidebar file, use the same names as your files. Otherwise it gets confusing to try to match up ref values with the right files." %}

You can see the output of links.html by looking at the linkstest.html file in the \_site directory after your site builds. It should include your pages in Markdown reference style formatting. This is what gets inserted at the bottom of every page when you build your Jekyll site.

### Bookmark Links on the Same Page {#bookmarkssampepage}

If you want to link to a heading on the same page, first add an ID tag to the header like this:

```
## Headings with ID Tags {#someIdTag}
```

Then reference it with a normal Markdown link:

```
[Some link](#someIdTag)
```

**Result:**

[Some link](#someIdTag)

### Links to Sections on Other Pages {#bookmarklinks}

Suppose you want to link to a specific section heading on another page.

First create a heading ID for the section you want to link to. On the [Getting started page][jekyllhowto-getting-started], there are some headings like this:

```
## My updates {#updates}

## Text editors {#editors}
```

Now add a `bookmarks` property to the entry in the sidebar data file and include all the heading ID tags on that page that you want to link to inside brackets.

```
    - title: My Page Name
      jurl: /acme-mypage-name.html
      hurl: /some/long/path/acme-mypage-name
      ref: acme-mypage-name
      bookmarks: [updates, editors]
```

The links.html file will automatically create Markdown link references for any strings in the `bookmarks` array.

Use the following syntax for your link Markdown referent:

```
Here's a list of [editors you can use][acme-mypage-name#editors].
```

(The syntax actually resembles the same syntax for bookmark links, though the link is actually just a string.)

The links.html file will create references that look like this in the build:

```
[getting-started#editors]: getting-started.html#editors
```

**Result:**

Here's a list of [editors you can use][getting-started#editors].

### Links to External Web Resources {#linksexternalwebresources}

For links to external web resources, just use regular Markdown style links using an absolute URL:

```
See the [Android documentation](https://developer.android.com/index.html).
```

**Result:**

See the [Android documentation](https://developer.android.com/index.html).

If links to external resources clutter the text, you can use Markdown reference style links instead of putting the URLs inline.

Example:

```markdown
See the [ColorFilterDimmer][cfdim] class and the [codim][ColorOverlayDimmer] class in the Android documentation.

...

[cfdim]: https://developer.android.com/reference/android/service/vr/VrListenerService.html
[codim]: https://developer.android.com/reference/android/support/v17/leanback/graphics/ColorOverlayDimmer.html
```

**Result:**

See the [Android documentation][androiddocs].

[androiddocs]: [https://developer.android.com/index.html]

{% include tip.html content="If the link formatting doesn't render correctly in your output, something is wrong with the link. Check to make sure you included the links.html file at the bottom of the file, and that your referent is correct." %}

## Detecting Broken Links

If you have an error with your Markdown link reference, kramdown won't process the link. For example, suppose you referred to the link like this:

```
See the [instruction for image borders][image-borders].
```

In this example, let's say the real `ref` value is `imageborders` (without the hyphen). As a result, putting `image-borders` will result in no link.

**Result:**

See the [instruction for image borders][image-borders].

To check for broken links in your output, do a search for `][` in your \_site directory (restricting the search to \*.html files only in the \_site directory). The `][` is a unique syntax that is unlikely to be used in many other places, and can indicate a broken link.

If you find a broken link, here are main causes:

*  You forgot to add the {% raw %}`{% include links.html %}`{% endraw %} at the bottom of the file.
*  The Markdown referent you're using doesn't match the `ref` name in your sidebar data file.

## Detecting broken links across the entire site

To check for broken links across the entire site, use the [Broken Link Checker tool](http://www.brokenlinkcheck.com/broken-links.php). For URLs that are listed as containing broken links, go to the page. Then use the [Check My Links](https://chrome.google.com/webstore/detail/check-my-links/ojkcdipcgfaekbeaelaapakgnjflfglf?hl=en-GB) Chrome extension to identify the broken link on the page.

## Content re-use (includes)

To re-use content, store the content in your `_includes` folder inside the `content` subfolder:

Then use the `include` tag to reference the file. Here's an example:

```liquid
{% raw %}{% include content/myfile.md %} {% endraw %}
```

Content stored in `_includes` will be available to include in any page. To avoid naming conflicts with any includes in the gem-theme, include your product's name in the file name of your include.

Note that if you have an include that is only included in the same folder, you can use the `include_relative` tag and then put the included file in the same folder (rather than storing it in \_includes). However, the `include_relative` tag can't reference a file that is stored outside of the folder (with `../` syntax). (You can reference subfolder locations, though.)

## Variables

To use a variable, add the variable and its value to your config files, like this:

```
myvariable: ACME
```

Then reference the property through the <code>site</code> namespace:

```liquid
{% raw %}{{site.myvariable}}{% endraw %}
```

**Result:**

{{site.myvariable}}

All properties in your configuration files are available through the <code>site</code> namespace. (Note that if you add values to your configuration files,  you must restart Jekyll for the changes to take effect.)

All properties in the page's front matter are available through the <code>page</code> namespace.

If you have a lot of variables, you could also store them in the \_date folder (for example, \_data/myvars.yml). Then you would reference them through the `site.data` namespace (for example, `site.data.myvars.myvariable`).

## Audio Includes

If you have an audio file that you want to include, you can use the audio include. Audio includes work similar to images. Here's an example:

```liquid
{% raw %}{% include audio.html title="Example: Basic Punctuation" file="jekyllhowto/audio/great" type="mp3" %}{% endraw %}
```

The parameters of the include are as follows:

| Parameter | Description |
|-----|-------|
| title | A title tag for the element. Optional. This tag might be useful for SEO, but the title does not appear anywhere in the audio player's display. |
| file | The name of the audio file, without the file extension. |
| type |  The extension for the file.

## Single sourcing

Suppose you have content that you want to push out to multiple files. But there are some differences that each destination page should have.

Create the include as usual. Where you want to differentiate the content, you could add this:

```liquid
{% raw %}{% if include.device == "product_a" %}
Say this for product A only...
{% endif %}{% endraw %}
```

When you call the include, pass this parameter into the include:

```liquid
{% raw %}{% include content/{{site.language}}/myfile.md device="product_a" %}{% endraw %}
```

## Code Samples

For code samples, use fenced code blocks with the language specified, like this:

    ```js
    console.log('hello');
    ```

**Result:**

```js
console.log('hello');
```

For the list of supported languages you can use and the official abbreviations, see [Supported languages](https://github.com/jneen/rouge/wiki/list-of-supported-languages-and-lexers).

Jekyll applies syntax highlighting using a stylesheet that color codes the text based on the language.

If you want to make specific text red inside a code sample (leaving all other text black), use `pre` tags instead of backticks, and then use `<span class="red">` tags inside the code.

For example, suppose you want to call attention to a particular line in a code example, in this case, `console.log`. You can apply a `red` class to that content to make it more apparent:

    <pre>{% raw %}
    if (chocolate == "healthy") {
       chocolate = chocolate + 10000;
       <span class="red">console.log("chocolate healthy: " + chocolate);</span>
       }
    else (chocolate == "unhealthy") {
       chocolate = chocolate + 50000;
       <span class="red">console.log("chocolate unhealthy: " + chocolate);</span>
    }
    {% endraw %}</pre>

**Result**:

<pre>{% raw %}
if (chocolate == "healthy") {
   chocolate = chocolate + 10000;
   <span class="red">console.log("chocolate healthy: " + chocolate);</span>
   }
else (chocolate == "unhealthy") {
   chocolate = chocolate + 50000;
   <span class="red">console.log("chocolate unhealthy: " + chocolate);</span>
}
{% endraw %}</pre>

Note that double curly braces {% raw %}`{{ }}`{% endraw %} are reserved characters, so you cannot actually use them in code samples. If you have double curly braces, surround them with `raw` tags like this:

<pre>
&#123;% raw %&#125;{% raw %}{{ }}{% endraw %}&#123;% endraw %&#125;
</pre>

Jekyll will not process any logic inside of `raw` tags.

If your code sample is XML, this approach using `<pre` tags won't be enough. You'll need to [escape all the HTML](http://www.freeformatter.com/html-escape.html) and leave the `<span>` tags unescaped.

Note that currently there's a bug with Liquid when using the `highlight` tag for code samples within lists. If you run into this issue, use the fenced code block (with backticks) instead of using the `highlight` tag.

## Markdown Tables

You can use standard Markdown syntax for tables:

```liquid
| Priority apples | Second priority | Third priority |
|-------|--------|---------|
| ambrosia | gala | red delicious |
| pink lady | jazz | macintosh |
| honeycrisp | granny smith | fuji |
```

**Result:**

| Priority apples | Second priority | Third priority |
|-------|--------|---------|
| ambrosia | gala | red delicious |
| pink lady | jazz | macintosh |
| honeycrisp | granny smith | fuji |

However, Markdown tables don't give you control over the column widths. Additionally, you can't use block level tags (paragraphs or lists) inside Markdown tables, so if you need separate paragraphs inside a cell, you must use `<br/><br/>`.

If you want to add a class to the table in Markdown, add a tag like this:

```md
{: .mystyle}
| Priority apples | Second priority | Third priority |
|-------|--------|---------|
| ambrosia | gala | red delicious |
| pink lady | jazz | macintosh |
| honeycrisp | granny smith | fuji |
```

This will create a table with a class of `mystyle`.

You could then add an embedded style for `mystyle`:

```
<style>

.mystyle th {
   font-weight: bold;
}
</style>

```

## HTML Tables {#htmltables}

If you need a more sophisticated table syntax, use HTML syntax for the table. Although you're using HTML, you can use Markdown inside the table cells by adding `markdown="span"` as an attribute for the `td`, as shown in the following table. You can also control the column widths through the `colgroup` properties. Here's an example:

```html
<table>
<colgroup>
<col width="60%" />
<col width="40%" />
</colgroup>
<thead>
<tr>
<th>To create…</th>
<th>Use this skill type</th>
</tr>
</thead>
<tbody>
<tr>
<td markdown="span">
A skill that can handle just about any type of request.

For example:

- Look up information from a web service
- Integrate with a web service to order something (order a car from Uber, order a pizza from Domino’s Pizza)
- Interactive games
- Just about anything else you can think of
</td>
<td  markdown="span">
Custom skill (*custom interaction model*)

See [Sample 3][sample3]

...(more content...)
</td>
</tr>
<tr>
<td  markdown="span">
...(content in second row, first column)
</td>
<td  markdown="span">
...(content in second row, second column)
</td>
</tr>
</tbody>
</table>
```
**Result:**

<table>
<colgroup>
<col width="60%" />
<col width="40%" />
</colgroup>
<thead>
<tr class="header">
<th>To create…</th>
<th>Use this skill type</th>
</tr>
</thead>
<tbody>
<tr>
<td markdown="span">
A skill that can handle just about any type of request.

For example:

- Look up information from a web service
- Integrate with a web service to order something (order a car from Uber, order a pizza from Domino’s Pizza)
- Interactive games
- Just about anything else you can think of
</td>
<td markdown="span">
Custom skill (*custom interaction model*)
See [Sample 3][sample3]
...(more content...)
</td>
</tr>
<tr>
<td  markdown="span">
...(content in second row, first column)
</td>
<td markdown="span">
...(content in second row, second column)
</td>
</tr>
</tbody>
</table>


To make life easier, add the following into a template that you can easily trigger through Atom's snippet feature:

```
<table>
   <colgroup>
      <col width="40%" />
      <col width="60%" />
   </colgroup>
   <thead>
      <tr>
         <th></th>
         <th></th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td></td>
         <td></td>
      </tr>
   </tbody>
</table>
```


## One-off Styles

If you have a need to implement a custom style within your Markdown content, first define the style through some style tags:

```html
<style>
.special {
   font-family: Gothic;
   font-size: 40px;
   font-color: red;
   }
</style>
```

<style>
.special {
   font-family: "Comic Sans MS";
   font-size: 40px;
   color: red;
   }
</style>

Then apply the class with this syntax:

```liquid
{: .special}
My special class.
```

**Result:**

{: .special}
My special class.

You can also use ID tags instead of classes:

```liquid
{: #special}
My special class.
```

You can have an empty line between the class or ID tag (`{: #special}`) and the next element. This technique will apply the class or ID attribute on whatever element comes next in your document.

## Images {#images_section}

To insert an image into your content, use the image.html include template that is set up:

```liquid
{% raw %}{% include image.html file="company_logo.png" url="http://developer.company.com" alt="My alternative image text" caption="This is my caption" border="true" max-width="90%" %}{% endraw %}
```

**Result:**

{% include image.html file="company_logo.png" url="http://developer.company.com" alt="My alternative image text" border="true" caption="This is my caption" max-width="90%" %}

The image include's properties are as follows:

| Property | Description | Required? |
|-------|--------|----|
| `file` | The name of the file (include the file extension) | Required |
| `url` | Whether to link the image to a URL | Optional |
| `alt` | Alternative image text for accessibility and SEO | Optional |
| `caption` | A caption for the image | Optional |
| `border` | A border around the image. If you want the border, set this equal to `true`. Otherwise omit the parameter.| Optional |
| `max-width` | You can use px or a percentage, such as `70px`.| Optional |

The image template will use the `image_path` property when referencing the path to the image.

Store images in the **images** folder in your Jekyll project &mdash; these images will be used for your Jekyll output.

Media Central will cache images you upload and expire the cache on an *hourly* basis. The first time you upload an image to Media Central, you may need to wait a few minutes before it becomes available.

## Excluding Images from Translated Builds

If you want to have some images appear only in certain languages, use conditional logic:

```liquid
{% raw %}{% if site.language == "english" %}

{% include image.html file="company_logo.png" url="http://dev.company.com" alt="My alternative image text" border="true" caption="This is my caption" %}

{% endif %}{% endraw %}
```

## Including Inline Images {#inlineimages}

For inline images, such as with a button that you want to appear inline with text, use the inline_image.html include, like this:

```liquid
Click the **Android SDK Manager** button {% raw %}{% include inline_image.html file="androidsdkmanagericon.png" alt="SDK button" border="true" max-width="90%" %}{% endraw %}
```

**Result:**

Click the **Android SDK Manager** button {% include inline_image.html file="androidsdkmanagericon.png" alt="SDK button" border="true" max-width="90%" %}

The inline_image.html include properties are as follows:

| Property | Description | Required
|-------|--------|
| `file` | The name of the file (include the file extension) | Required |
| `alt` | Alternative image text for accessibility and SEO | Optional |
| `border` | A border around the image. If you want the border, set this equal to `true`. Otherwise omit the parameter. | Optional |
| `max-width` | A maximum width for the image. You can use px or a percentage, such as `70px`. | Optional |

## Bold, Italics

You can make content **bold** with two asterisks (`**bold**`), or *italics* with one asterisk (`*italics*`).

## Question and Answer formatting

You can use the following formatting for Q&A pages:

```
Why is the sky blue?
:  It's not actually blue. This is an illusion based on the way molecules in our atmosphere reflect light waves.

Why is the ocean blue?
:   It reflects the color of the atmosphere.
```

**Result:**

Why is the sky blue?
:  It's not actually blue. This is an illusion based on the way molecules in our atmosphere reflect light waves.

Why is the ocean blue?
:   It reflects the color of the atmosphere.

If you want to emphasize the question aspect, put a "Q:" before the questions:

```
Q: Why is the sky blue?
:  It's not actually blue. This is an illusion based on the way molecules in our atmosphere reflect light waves.

Q: Why is the ocean blue?
:   It reflects the color of the atmosphere.
```

**Result:**

Q: Why is the sky blue?
:  It's not actually blue. This is an illusion based on the way molecules in our atmosphere reflect light waves.

Q: Why is the ocean blue?
:   It reflects the color of the atmosphere.

kramdown outputs this Markdown syntax as a definition list in HTML.

## Glossary Pages

To list the terms from a glossary, first list the terms in a YAML data file inside the **\_data** folder, like this:

```
-
  term: macabre
  def: ghastly, horrifying, resembling death

-
  term: riparian
  def: on the bank by a river
```

Supposing the glossary file were named **glossary.yml**, you could list out the terms like this:

```liquid
{% raw %}{% assign glossaryTerms = site.data.glossary %}

<dl>
    {% for entry in glossaryTerms %}
    <dt id="{{entry.term}}">{{entry.term}}</dt>
    <dd>{{entry.def}}</dd>
    {% endfor %}
</dl>{% endraw %}
```

**Result:**

{% assign glossaryTerms = site.data.glossary %}
<dl>
    {% for entry in glossaryTerms %}
    <dt id="{{entry.term}}">{{entry.term}}</dt>
    <dd>{{entry.def}}</dd>
    {% endfor %}
</dl>

The terms will be sorted according to their order in the glossary.yml file, so you have to manually alphabetize the terms. (Liquid's `sort` filter doesn't mix capitalized and lowercased terms when alphabetizing items, so you can't use it here unless you only have lowercase or only have uppercase terms.)

Each definition term will have an ID tag (based on `{% raw %}id="{{entry.term}}{% endraw %}` in the previous code). If you want to link to this term, add each glossary term to the `bookmarks` property in your glossary entry in your sidebar navigation. For example:

```yaml
    - title: Glossary
      jurl: /glossary.html
      hurl: /solutions/devices/glossary
      ref: glossary
      bookmarks: [mcabre, riperian]
```

Then make links in your content like this:

**Result:**

For more information, see [Riperian][glossary#riperian].


## Tooltips

You can leverage your glossary for tooltips by using the tooltips.html include. Here's an example:

```
{% raw %}The setting was {% include tooltips.html term="riperian" capitalize="true" %} to say the least.

I cannot believe she described this canal trail as {% include tooltips.html term="riperian" %} in the book.{% endraw %}
```

**Result:**

The setting was {% include tooltips.html term="riperian" capitalize="true" %} to say the least.

I cannot believe she described this canal trail as {% include tooltips.html term="riperian" %} in the book.

By default, the glossary term is lower-cased. If you want it capitalized, add a `capitalize="true"` parameter in the include syntax.

Note the following about links and formatting in the tooltips.yml file:

*  You can't add hyperlinks in YAML content using the approach for automated links (such as `[jekyllhowto-publishing][jekyllhowto-publishing]`), but you can directly code HTML links here.
*  In your link formatting, use single quotes instead of double quotes. For example, `<a href='https://en.wikipedia.org/wiki/River'>River in Wikipedia</a>`.
*  For multiple paragraphs, use `<p>` tags. Other HTML formatting is also allowed.
*  You can't use includes or variables in your glossary.yml file.
*  Enclose the `def` values in quotation marks to avoid conflicts with colons, which are illegal characters in YAML syntax. For quotation marks inside quotations, escape them `/"like this/"`.

To implement the tooltip on a page, reference it through the tooltips.html include:

The parameters of the tooltips include are as follows:

| Parameters | Description |
|----|-----|
| term | The glossary term in the glossary.yml file |
| capitalize | Include only if you want the term capitalized. If so, set it equal to `true` and treat as a string. (A capitalization filter gets placed on the glossary term.) If you omit the term, no capitalization filter gets applied to the term. If the term is capitalized, you don't need to also apply this filter. |


## Navtabs

You can implement nav tabs when you have different code samples or instructions based on programming languages or platforms, and you want to put the information in a more compressed space. Here's the HTML code:

```html
<ul id="profileTabs" class="nav nav-tabs">
  <li class="active"><a class="noExtIcon" href="#firsttab" data-toggle="tab">First Tab</a></li>
  <li><a class="noExtIcon" href="#secondtab" data-toggle="tab">Second Tab</a></li>
  <li><a class="noExtIcon" href="#thirdtab" data-toggle="tab">Third Tab</a></li>
  <li><a class="noExtIcon" href="#fourthtab" data-toggle="tab">Fourth Tab</a></li>
</ul>
<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="firsttab">
    <div class="subheading">First Tab
    </div>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

  </div>
  <div role="tabpanel" class="tab-pane" id="secondtab">
    <div class="subheading">Second tab
    </div>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
  </div>
  <div role="tabpanel" class="tab-pane" id="thirdtab">
    <div class="subheading">Third tab
    </div>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
   </div>
  <div role="tabpanel" class="tab-pane" id="fourthtab">
    <div class="subheading">Fourth Tab
    </div>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
  </div>
</div>

```

**Result**:

<ul id="profileTabs" class="nav nav-tabs">
  <li class="active"><a class="noExtIcon" href="#firsttab" data-toggle="tab">First Tab</a></li>
  <li><a class="noExtIcon" href="#secondtab" data-toggle="tab">Second Tab</a></li>
  <li><a class="noExtIcon" href="#thirdtab" data-toggle="tab">Third Tab</a></li>
  <li><a class="noExtIcon" href="#fourthtab" data-toggle="tab">Fourth Tab</a></li>
</ul>
<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="firsttab">
    <div class="subheading">First Tab
    </div>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>

  </div>
  <div role="tabpanel" class="tab-pane" id="secondtab">
    <div class="subheading">Second tab
    </div>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
  </div>
  <div role="tabpanel" class="tab-pane" id="thirdtab">
    <div class="subheading">Third tab
    </div>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
   </div>
  <div role="tabpanel" class="tab-pane" id="fourthtab">
    <div class="subheading">Fourth Tab
    </div>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
  </div>
</div>


Note the following:

*  If you're adding more tabs, be sure to customize the `id` value for each `tabpanel` div to match up with the `href` value for the list item (`li`) classes. In this code, you can see that `firsttab` in the href value matches up with the `firsttab` value for the div with the `tab-pane` class.
*  You can use Markdown instead of HTML inside the `<div role="tabpanel" class="tab-pane active" id="profile" markdown="block">` by adding `markdown="block"` as an attribute. This tells kramdown to process the content as block level element with Markdown. If you just want a span element, use `markdown="span"`.
*  Don't use heading levels (such as `h2`) within the tabs. If you do, the heading levels will appear in the mini-TOC and the links won't jump to anywhere. Instead, use a `subheading` class on a `div` tag as shown in the example.
*  You can store the tab content in a separate file and pull it in. For example, you might store the tab content for the first tab in a file called firsttab.yml. Store this tab in the same directory as your file with the navtab. Now reference the content with this: `{% raw %}{% include_relative firsttab.yml %}{% endraw %}`.


If you have a code sample inside a navtab, put the code flush against the left edge and inside a surrounding element that specifies `markdown="block"`. Here's an example:

<pre>
&lt;p markdown="block"&gt;

&#96;&#96;&#96;json
"notificationInfo": {
        "notificationType": "OrderPlacedNotification",
        "lwaClientId": "amzn1.application-oa2-client.6b68exxxxxxxxxx9",
        "notificationTime": "2016-12-02T21:09:58.689Z",
        "notificationId": "amzn1.dash.notification.v1.xxxxxxxxxxxxx13",
        "version": "2015-06-05"
    }
&#96;&#96;&#96;

&lt;/p&gt;
</pre>

## Workflow Maps

You can include a simple linear workflow map that has squares at the top depicting a process. Add the following in your page's frontmatter:

```yaml
simple_map: true
map_name: <filename.html>
```

Inside the \_includes folder (create one if you don't have one), create the referenced map_name file and follow this format:

```
<div id="userMap">
<div class="content"><a href="file-1.html"><div class="box box1"><span class="stepName">STEP 1:</span> <br/>Download the Project</div></a></div>
<div class="arrow">→</div>
<div class="content"><a href="file-2.html"><div class="box box2"><span class="stepName">STEP 2:</span><br/>Configure the Settings</div></a></div>
<div class="arrow">→</div>
<div class="content"><a href="file-3.html"><div class="box box3"><span class="stepName">STEP 3:</span><br/>Run the Installer</div></a></div>
</div>
```

Customize the text and links that you want. Note that you can't use automated links here. You have to hard-code the links in HTML.

Also note that you can't have too many workflow squares (the max is 5-6).


{% include links.html %}
