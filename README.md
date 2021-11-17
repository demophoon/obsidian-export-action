# Obsidian Static Exporter

This tool is for exporting your Obsidian vault as github pages using a github action.

This is mostly gluing a few projects together, namely [Obsidian-export](https://github.com/zoni/obsidian-export) for converting wikilink formatted links to markdown links and [Hugo](https://github.com/gohugoio/hugo) for rendering markdown as static websites.

## Usage


## Obsidian Plugin Support

There is currently no support for plugins with custom rendered codeblocks. Plugins like Dataview or Admonition will not be rendered and will instead show the queries as markdown code blocks.
