---
title: Formatting test
permalink: formattingtest.html
sidebar: jekyllhowto
product: Jekyll How-to Guide
---

<style>
body {
  padding:30px;
}
</style>

This page covers all the details you need to know about content and formatting, including topics such as page directories, links, alerts, images, and more.

## Table of Contents

This is the table of contents for the page:

* TOC
{:toc}

# Heading level 1

this is some body content.

## Heading level 2

this is some body content.

### Heading level 3

this is some body content.

#### Heading level 4

this is some body content.

## Bold content

This is a **bold** word.

## Italics

This is an *italic* word.

## Inline Code

This is some `inline code` in a sentence.

## Code blocks

This is a code block:

``` yaml
---
title: My File Name
permalink: myfile.html
sidebar: mysidebar
product: My Product
---
```

This is a code block with `pre` tags:

<pre>
- title: Sample Topic
  jurl: /sample.html
  hurl: /solutions/devices/product/docs/sample
  <span class="red">ref: sample</span>
</pre>

## Bulleted Lists

This is a bulleted list:

*  first item
*  second item
*  third item

## Numbered list

This is a simple numbered list:

1.  First item.
2.  Second item.
3.  Third item.

## List with sub-items

Here's a more complex list:

1.  Sample first item.

    *  sub-bullet one
    *  sub-bullet two

2.  Continuing the list

    1.  sub-list numbered one
    2.  sub-list numbered two

3.  Another list item.

## List with intercepting text

Here's a list with some intercepting text:

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


### Image

Here's an image with a caption and other parameters.

{% include image.html file="company_logo.png" url="http://developer.company.com" alt="My alternative image text" border="true" caption="This is my caption" max-width="90%" %}

## Alerts {#alerts}

{% include note.html content="This is a note." %}

{% include tip.html content="This is a tip." %}

{% include warning.html content="This is a warning." %}

{% include important.html content="This is important." %}

## Callouts

{% include callout.html content="This is my callout. It tends to be a bit longer, and provides less visual attention than an alert. <br/><br/>Here is a new paragraph." type="info" title="Sample Callout" %}

## Links

This is a link to [Amazon](http://amazon.com).

And a jump link to [the Alerts section](#alerts).

## Audio embed

<audio controls>
  <source src="" type="audio/ogg">
  <source src="" type="audio/mpeg">
Your browser does not support the audio element.
</audio>

## Video embed

<video width="700" controls>
<source src="https://m.media-amazon.com/images/G/01/mobile-apps/dex/firetv/amazoncreator/amazon-creator-virtual-remote3._V507863494_.mp4" type="video/mp4">
Your browser does not support HTML5 video.
</video>

## Markdown Table

| Priority apples | Second priority | Third priority |
|-------|--------|---------|
| ambrosia | gala | red delicious |
| pink lady | jazz | macintosh |
| honeycrisp | granny smith | fuji |

## HTML Tables

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

## Definition lists

Why is the sky blue?
:  It's not actually blue. This is an illusion based on the way molecules in our atmosphere reflect light waves.

Why is the ocean blue?
:   It reflects the color of the atmosphere.

## Glossary page

{% assign glossaryTerms = site.data.glossary %}
<dl>
    {% for entry in glossaryTerms %}
    <dt id="{{entry.term}}">{{entry.term}}</dt>
    <dd>{{entry.def}}</dd>
    {% endfor %}
</dl>

## Tooltips

The setting was {% include tooltips.html term="riperian" capitalize="true" %} to say the least.

## Navtabs

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



{% include links.html %}
