---
title: Formatting test
permalink: formattingtest.html
sidebar: jekyllhowto
product: Jekyll How-to Guide
---

<style>
body {
  padding:30px;
  max-width: 800px;
}
</style>

This page covers all the details you need to know about content and formatting, including topics such as page directories, links, alerts, images, and more.

## Table of Contents

This is the table of contents for the page:

* TOC
{:toc}

## Paragraphs

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


# Heading level 1

this is some body content.

## Heading level 2

this is some body content.

### Heading level 3

this is some body content.

#### Heading level 4

this is some body content.

##### Heading level 5

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

1.  First item. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
2.  Second item. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
3.  Third item. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

## List with sub-items

Here's a more complex list:

1.  Sample first item. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

    *  sub-bullet one. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.
    *  sub-bullet two. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.

2.  Continuing the list. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.

    1.  sub-list numbered one. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.
    2.  sub-list numbered two. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.

3.  Another list item. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.

## List with intercepting text

Here's a list with some intercepting text:

1.  Sample first item. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.

    This is a result statement that talks about something....All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.

2.  Continuing the list. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.

    {% include note.html content="This is a sample note. If you have \"quotes\", you must escape them." %}

    Here's a list in here:

    * first item. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
    * second item. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.

3.  Another list item. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

    ```js
    function alert("hello");
    ```
    
    The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

4.  Another item.The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.


### Image

Here's an image with a caption and other parameters.

{% include image.html file="company_logo.png" url="http://developer.company.com" alt="My alternative image text" border="true" caption="This is my caption" max-width="90%" %}

## Alerts {#alerts}

{% include note.html content="Nullam semper, leo at venenatis blandit, diam augue imperdiet tellus, at ultricies augue massa ut mi. Vestibulum quis lorem a tellus suscipit efficitur a nec arcu. Maecenas commodo ac ipsum sed sagittis. Fusce facilisis quis mi eget aliquam. Nam mollis ac nisl vitae venenatis. Donec in cursus eros. " %}

{% include tip.html content="Nullam semper, leo at venenatis blandit, diam augue imperdiet tellus, at ultricies augue massa ut mi. Vestibulum quis lorem a tellus suscipit efficitur a nec arcu. Maecenas commodo ac ipsum sed sagittis. Fusce facilisis quis mi eget aliquam. Nam mollis ac nisl vitae venenatis. Donec in cursus eros." %}

{% include warning.html content="Nullam semper, leo at venenatis blandit, diam augue imperdiet tellus, at ultricies augue massa ut mi. Vestibulum quis lorem a tellus suscipit efficitur a nec arcu. Maecenas commodo ac ipsum sed sagittis. Fusce facilisis quis mi eget aliquam. Nam mollis ac nisl vitae venenatis. Donec in cursus eros." %}

{% include important.html content="Nullam semper, leo at venenatis blandit, diam augue imperdiet tellus, at ultricies augue massa ut mi. Vestibulum quis lorem a tellus suscipit efficitur a nec arcu. Maecenas commodo ac ipsum sed sagittis. Fusce facilisis quis mi eget aliquam. Nam mollis ac nisl vitae venenatis. Donec in cursus eros." %}

## Callouts

{% include callout.html content="Pellentesque egestas, risus a suscipit tempus, mauris lectus sodales massa, sit amet rutrum est nisi sit amet libero. Ut lobortis, velit non feugiat volutpat, lectus sapien imperdiet quam, quis iaculis metus neque vitae elit. Vivamus tempus a tellus eget scelerisque. Sed nec velit massa. Quisque mattis ex et diam fringilla, vel molestie massa dictum. Ut ut accumsan nibh." type="info" title="Sample Callout" %}

{% include callout.html content="Pellentesque egestas, risus a suscipit tempus, mauris lectus sodales massa, sit amet rutrum est nisi sit amet libero. Ut lobortis, velit non feugiat volutpat, lectus sapien imperdiet quam, quis iaculis metus neque vitae elit. Vivamus tempus a tellus eget scelerisque. Sed nec velit massa. Quisque mattis ex et diam fringilla, vel molestie massa dictum. Ut ut accumsan nibh." type="success" title="Sample Callout" %}

{% include callout.html content="Pellentesque egestas, risus a suscipit tempus, mauris lectus sodales massa, sit amet rutrum est nisi sit amet libero. Ut lobortis, velit non feugiat volutpat, lectus sapien imperdiet quam, quis iaculis metus neque vitae elit. Vivamus tempus a tellus eget scelerisque. Sed nec velit massa. Quisque mattis ex et diam fringilla, vel molestie massa dictum. Ut ut accumsan nibh." type="danger" title="Sample Callout" %}

{% include callout.html content="Pellentesque egestas, risus a suscipit tempus, mauris lectus sodales massa, sit amet rutrum est nisi sit amet libero. Ut lobortis, velit non feugiat volutpat, lectus sapien imperdiet quam, quis iaculis metus neque vitae elit. Vivamus tempus a tellus eget scelerisque. Sed nec velit massa. Quisque mattis ex et diam fringilla, vel molestie massa dictum. Ut ut accumsan nibh." type="warning" title="Sample Callout" %}

{% include callout.html content="Pellentesque egestas, risus a suscipit tempus, mauris lectus sodales massa, sit amet rutrum est nisi sit amet libero. Ut lobortis, velit non feugiat volutpat, lectus sapien imperdiet quam, quis iaculis metus neque vitae elit. Vivamus tempus a tellus eget scelerisque. Sed nec velit massa. Quisque mattis ex et diam fringilla, vel molestie massa dictum. Ut ut accumsan nibh." type="primary" title="Sample Callout" %}

{% include callout.html content="Pellentesque egestas, risus a suscipit tempus, mauris lectus sodales massa, sit amet rutrum est nisi sit amet libero. Ut lobortis, velit non feugiat volutpat, lectus sapien imperdiet quam, quis iaculis metus neque vitae elit. Vivamus tempus a tellus eget scelerisque. Sed nec velit massa. Quisque mattis ex et diam fringilla, vel molestie massa dictum. Ut ut accumsan nibh." type="danger" title="Sample Callout" %}

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

## Edit on GitHub button

<div class="githubFeedback"><span class="githubButton"><a target="_blank" href="{{site.github_editme_path}}/{{page.path}}" class="editButton noExtIcon"><i class="fa fa-github fa-lg"></i> {{site.uistring.github_edit_button_text}}</a></span></div>


## Definition lists

Why is the sky blue?
:  It's not actually blue. This is an illusion based on the way molecules in our atmosphere reflect light waves. Most companies use A/B testing to try to optimize one result. If their goal is to sell widgets, they test having a blue button versus having a red button for a few days. If after that period, more people who have seen the red button buy the widget, they resolve the test and show the red button to everyone.

Why is the ocean blue?
:   It reflects the color of the atmosphere. Most companies use A/B testing to try to optimize one result. If their goal is to sell widgets, they test having a blue button versus having a red button for a few days. If after that period, more people who have seen the red button buy the widget, they resolve the test and show the red button to everyone.

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

## Buttons

<button type="button" class="btn">Basic</button>
<button type="button" class="btn btn-default">Default</button>
<button type="button" class="btn btn-primary">Primary</button>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-danger">Danger</button>

## Horizontal line

This is a horizontal line.

<hr/>

## Small font

This is <small>small</small> font.

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

## Progress Bar

<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;">
    0%
  </div>
</div>
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2%;">
    2%
  </div>
</div>


## Labels

<span class="label label-default">Default</span>
<span class="label label-primary">Primary</span>
<span class="label label-success">Success</span>
<span class="label label-info">Info</span>
<span class="label label-warning">Warning</span>
<span class="label label-danger">Danger</span>

# breadcrumbs
<ol class="breadcrumb">
  <li><a href="#">Home</a></li>
  <li><a href="#">Library</a></li>
  <li class="active">Data</li>
</ol>

{% include links.html %}
