---
title: Atom Text Editor
sidebar: jekyllhowto
permalink: jekyllhowto-atom-text-editor.html
product: Jekyll How-to Guide
---

Atom is a free text editor that is a favorite tool of many writers because it is free. This page provides some tips for using Atom.

* TOC
{:toc}

If you haven't downloaded [Atom](https://atom.io/), download and install it. Use this as your editor when working with Jekyll. The syntax highlighting is probably the best among the available editors, as it was designed with Jekyll-authoring in mind. However, if you prefer Sublime Text, WebStorm, or some other editor, you can also use that.

## Customize the invisibles and tab spacing in Atom:

1.  Go to **Atom > Preferences**.
2.  On the **Settings** tab, keep the default options but also select the following:
    * **Show Invisibles**
    * **Soft Wrap**
    * For the **Tab Length**, type **4**.
    * For the **Tab Type**, select **soft**.

## Adjust the display for auto-complete

If you don't adjust the timing on the auto-complete, the constant prompts from the editor get annoying. At the same time, when you want the prompts, it's extremely helpful to have this feature.

1.  Go to **Atom > Preferences**.
2.  Click the **Packages** tab.
3.  Search for **autocomplete-plus**.
4.  In the **Display Before Suggestions Shown** box, type **300**.
5.  In the **Keymap for Confirming a Suggestion** box, select **tab and enter**.

## Show files listed in .gitignore

By default, files listed in .gitignore will be hidden from view in Atom. You can adjust this by doing the following:

1.  Go to **Atom > Preferences**.
2.  Click the **Packages** tab.
3.  Search for **Tree View** package.
4.  Click **Settings**.
5.  Clear the check box that says **Hide VCS Ignored Files**.

## Atom Shortcuts

* **Cmd + T**: Find file
* **Cmd + Shift + F**: Find across project
* **Cmd + Alt + S**: Save all

(For Windows, replace "Cmd" with "Ctrl".)

## Atom Snippets

You can use a number of shortcuts with Atom. These shortcuts are entered as snippets. You have to enter these shortcuts manually in your Atom editor.

## Use Snippets

Snippets expand stored text from a keyword shortcut. For example, if you type **ximage** and then press **Enter**, it expands to {% raw %}{% include image.html  file="" max-width="" border=""  url="" caption="" alt="" %} {% endraw %} assuming you have this snippet configured.

To configure snippets:

1.  In Atom, go to **Atom > Snippets**.
2.  Copy and paste the code from the snippets from the **Snippets code block below** to replace the existing snippet contents. Make sure your cursor is flush left before pasting the content.

```
# Your snippets
#
# Atom snippets allow you to enter a simple prefix in the editor and hit tab to
# expand the prefix into a larger code block with templated values.
#
# You can create a new snippet in this file by typing "snip" and then hitting
# tab.
#
# An example CoffeeScript snippet to expand log to console.log:
#
# '.source.coffee':
#   'Console log':
#     'prefix': 'log'
#     'body': 'console.log $1'
#
# Each scope (e.g. '.source.coffee' above) can only be declared once.
#
# This file uses CoffeeScript Object Notation (CSON).
# If you are unfamiliar with CSON, you can read more about it in the
# Atom Flight Manual:
# http://flight-manual.atom.io/using-atom/sections/basic-customization/#_cso
'.source.gfm':
  'TOC':
    'prefix': 'toc'
    'body': """
      * TOC
      {:toc}
    """
  'front':
    'prefix': 'front'
    'body': """
      ---
      title: $1
      permalink: $2
      sidebar: $3
      product: $4
      ---
    """
  'comment':
    'prefix': 'comment'
    'body': '{% comment %} $1 {% endcomment %}$0'
  'callout':
    'prefix': 'callout'
    'body': '{% include callout.html type="default primary success danger warning info" %} $0'
  'note':
    'prefix': 'note'
    'body': '{% include note.html content="$1" %} $0'
  'tip':
    'prefix': 'tip'
    'body': '{% include tip.html content="$1" %} $0'
  'warning':
    'prefix': 'warning'
    'body': '{% include warning.html content="$1" %} $0'
  'warning':
    'prefix': 'warning'
    'body': '{% include warning.html content="$1" %} $0'
  'links':
    'prefix': 'links'
    'body': '{% include links.html %} $0'
  'image':
    'prefix': 'image'
    'body': '{% include image.html  file="$1" max-width="$2" border="$3"  url="$4" caption="$5" alt="$6" %} $0'
  'inline_image':
    'prefix': 'inline_image'
    'body': '{% include inline_image.html  file="$1" max-width="$2" border="$3" alt="$4" %} $0'
  'audio':
    'prefix': 'audio'
    'body': '{% include audio.html title="$1" file="$2" type="$3" %}'
  'bookmark':
    'prefix': 'bookmark'
    'body': '{#yourtag}'
  'comment':
    'prefix': 'comment'
    'body': '{% comment %} $1 {% endcomment %} $0'
  'raw':
    'prefix': 'raw'
    'body': '{% raw %} $1 {% endraw %} $0'
  'code':
    'prefix': 'code'
    'body': """
      ```$1
      $2
      ```

      $0
    """
  'table':
    'prefix': 'table'
    'body': """
      <table>
         <colgroup>
            <col width="30%" />
            <col width="70%" />
         </colgroup>
         <thead>
            <tr>
               <th markdown="span">$1</th>
               <th markdown="span">$2</th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td markdown="span">$3</td>
               <td markdown="span">$4</td>
            </tr>
            <tr>
               <td markdown="span">$5</td>
               <td markdown="span">$6</td>
            </tr>
         </tbody>
      </table>
    """

  'navtabs':
    'prefix': 'navtabs'
    'body': """
      <ul id="profileTabs" class="nav nav-tabs">
        <li class="active"><a class="noCrossRef" href="#firsttab" data-toggle="tab">$1First Tab</a></li>
        <li><a class="noCrossRef" href="#secondtab" data-toggle="tab">$2Second Tab</a></li>
        <li><a class="noCrossRef" href="#thirdtab" data-toggle="tab">$3Third Tab</a></li>
       </ul>
       <div class="tab-content">
       <div role="tabpanel" class="tab-pane active" id="firsttab">
          <div class="subheading">$4First Tab</div>
          <p>Some text</p>
        </div>
        <div role="tabpanel" class="tab-pane" id="secondtab">
          <div class="subheading">$5Second tab</div>
          <p>Some text...</p>
        </div>
        <div role="tabpanel" class="tab-pane" id="thirdtab">
          <div class="subheading">$6Third tab</div>
            <p>Some text ...</p>
         </div>
        </div>
      """
```



Here are the shortcuts:

*  xtoc
*  xfront
*  xcallout
*  xnote
*  xtip
*  xcaution
*  xwarning
*  xlinks
*  ximage
*  xinline_image
*  xaudio
*  xbookmark
*  xcomment
*  xcode
*  xnavtabs
*  xtable

Simply type the shortcut and press **Enter**.

If you have the "autocomplete plus" package turned on in Atom, you'll see prompts when you enter this text. You can also add your own shortcuts to your snippets file by following the same format.


{% include links.html %}
