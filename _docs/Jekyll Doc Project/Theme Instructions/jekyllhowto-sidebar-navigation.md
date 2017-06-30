---
title: Sidebar Navigation
permalink: jekyllhowto-sidebar-navigation.html
sidebar: jekyllhowto
product: Jekyll How-to Guide
---

The output for the sidebar navigation gets generated from the sidebar yaml file in the \_data folder. YAML files don't use markup tags but rather spacing to create syntax. Look carefully at the YAML syntax in the sample generic.yml  or jekyllhowto.yml files. The syntax for your YAML content must be correct in order for the files to be valid.

* TOC
{:toc}

## How the Sidebar Works

The theme contains a file called \_includes/sidebar.html that uses "for" loops to iterate through the items in this YAML file and push the content into an HTML format. When Jekyll builds your site, the sidebar gets included into each page. This means each page has its own copy of the sidebar code when the site builds.

## Entries in the Sidebar {#sidebarentries}

Each entry in the sidebar files includes four properties &mdash; `title`, `jurl`, `hurl`, and `ref`. These properties stand for the page title, Jekyll URL, hard-coded URL, and the Markdown referent for linking. Here's an example:

```yaml
    - title: Sample1
      jurl: /sample.html
      hurl: /solutions/widgets/acme/docs/sample
      ref: sample1
```

{% include note.html content="The `hurl` value is optional. This is used only in systems where the relative URL may not work. Some server environments require the absolute, hard-coded URL to the page. If so, you can use this `hurl` value. (Unless you have an odd publishing system, you probably won't use `hurl` and can omit it.)" %}

| Property | Description |
|-----|-------|
| `title` | The page title. |
| `hurl` | The hard-coded (absolute) URL to your content. (This is only required if you're publishing to a system that requires hard-coded URLs. Otherwise, omit this.)|
| `jurl` | The Jekyll URL. Use a relative link that begins with a `/` and includes only page's filename, not the folders. Use the ".html" file extension (even if your file has an .md extension in the source). |
| `ref` | The shortname used to create the Markdown link references. This is a friendly way to refer to the page. You use this value as the Markdown referent when inserting links in your content. |

The `ref` property is like a variable used to refer to either the `hurl` or `jurl` property, depending on which configuration file you use when building your Jekyll project.
## Adding Additional Resources

If you want to add some additional resources, such as to forums or other documentation, you can add them in a Related Resources section below the sidebar.

Here's an example:


```yaml
###########################

related_resources_title: Other Resources

related_resources_list:

- title: Forums
  hurl: https://some.developer.forum.com/

- title: More Documentation
  hurl: https://more.documentation.company.com

- title: Documentation Portal
  hurl: https://my.documentation.portal
```

The sidebar will show this information below the sidebar.

## Sidebar Object Hierarchy

In addition to the properties required for each entry, sidebar entries must appear in the following hierarchy:

``` yaml

folders:
- title: Theme documentation
  folderitems:

  - title: Homepage
    jurl: /index.html
    hurl: https://docs.mycompany.com/index
    ref: home

  - title: Getting Started
    jurl: /getting-started.html
    hurl: https://docs.mycompany.com/getting-started.
    ref: home

- title: Sample Folder Title
  folderitems:

  - title: Sample1 level1
    jurl: /sample.html
    hurl: https://docs.mycompany.com/solutions/widgets/acme/docs/sample
    ref: sample1

  - title: Sample2 level1
    jurl: /sample2.html
    hurl: https://docs.mycompany.com/solutions/widgets/acme/docs/sample2
    ref: sample12

    subfolders:
    - title: Another level deep
      output: web
      subfolderitems:

      - title: Some content
        jurl: /sublevel1.html
        hurl: https://docs.mycompany.com/solutions/widgets/acme/docs/sublevel1
        ref: sublevel1

      - title: Some more content
        jurl: /sublevel2.html
        hurl: https://docs.mycompany.com/solutions/widgets/acme/docs/sublevel2
        ref: sublevel2

        subsubfolders:
        - title: Last level deep
          output: web
          subsubfolderitems:

          - title: Some content last level
            jurl: /subsublevel1.html
            hurl: https://docs.mycompany.com/solutions/widgets/acme/docs/subsublevel1
            ref: sample

          - title: Some more content last level
            jurl: /subsublevel2.html
            hurl: https://docs.mycompany.com/solutions/widgets/acme/docs/subsublevel2
            ref: sample



```

As you can see, there's a `folders` object that contains `folderitems`. Inside `folderitems` is another level called `subfolders`, which contains `subfolderitems`.

Below `subfolders` is another level called `subsubfolders`, which contains `subssubfolderitems`. Each new level begins on a new line two spaces out from the previous one. The general hierarchy looks like this:

```
folders:
  folderitems:
    subfolders:
      subfolderitems:
```

Don't change any of these object names that indicate the levels. The theme's template files use a `for` loop to iterate through this structure based on these object names.

## Level Requirements

Note that you must have items at each level. If you want to have a folder that contains other folders and no individual items, you must add a `-` at that level. For example:

``` yaml

folders:

- title: My parent folder
  folderitems:

  -

    subfolders:
    - title: My child folder 1
      output: web
      subfolderitems:

      - title: Some content
        jurl: /sublevela.html
        hurl: https://docs.mycompany.com/i/solutions/widgets/acme/docs/sublevela
        ref: sublevela

    - title: My child folder 2
      output: web
      subfolderitems:

      - title: Some content
        jurl: /sublevelb.html
        hurl: https://docs.mycompany.com/i/solutions/widgets/acme/docs/sublevelb
        ref: sublevelb

```

This structure looks like this:

```
├── My parent folder
│   ├── My child folder 1
│      └── sublevela.html
│   ├── My child folder 2
│      └── sublevelb.html
```

{% include tip.html content="When you're creating new levels, it's easiest to copy the correct formatting and then adjust the values. Use the sample formatting included in the generic.yml file to copy and paste new levels. If you get the spacing wrong, when Jekyll builds the project, it will usually throw an error and note a mapping problem in your YAML file." %}

## Customize the Header



{% include links.html %}
