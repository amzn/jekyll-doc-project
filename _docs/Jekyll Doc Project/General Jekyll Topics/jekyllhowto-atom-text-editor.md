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

1.  Copy the snippets file in **assets/snippets.txt**.
1.  In Atom, go to **Atom > Snippets**.
2.  Replace the existing snippet contents with the content you pasted. Make sure your cursor is flush left before pasting the content.

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

To insert the code from the snippet, type the shortcut and press **Enter**. Note that you have to be in a Markdown file for the snippets to work. The snippets are associated with Markdown files.

If you have the "autocomplete plus" package turned on in Atom, you'll see prompts when you enter this text. You can also add your own shortcuts to your snippets file by following the same format.

{% include links.html %}
