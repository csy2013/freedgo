---
title: Tag Plugins
---
Tag plugins are different from post tags. They are ported from Octopress and provide a useful way for you to quickly add specific content to your posts.

{% youtube I07XMi7MHd4 %}

## Block Quote

Perfect for adding quotes to your post, with optional author, source and title information.

**Alias:** quote

```
{% blockquote [author[, source]] [link] [source_link_title] %}
content
{% endblockquote %}
```

### Examples

**No arguments. Plain blockquote.**

```
{% blockquote %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque hendrerit lacus ut purus iaculis feugiat. Sed nec tempor elit, quis aliquam neque. Curabitur sed diam eget dolor fermentum semper at eu lorem.
{% endblockquote %}
```

{% blockquote %}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque hendrerit lacus ut purus iaculis feugiat. Sed nec tempor elit, quis aliquam neque. Curabitur sed diam eget dolor fermentum semper at eu lorem.
{% endblockquote %}

**Quote from a book**

```
{% blockquote David Levithan, Wide Awake %}
Do not just seek happiness for yourself. Seek happiness for all. Through kindness. Through mercy.
{% endblockquote %}
```

{% blockquote David Levithan, Wide Awake %}
Do not just seek happiness for yourself. Seek happiness for all. Through kindness. Through mercy.
{% endblockquote %}

**Quote from Twitter**

```
{% blockquote @DevDocs https://twitter.com/devdocs/status/356095192085962752 %}
NEW: DevDocs now comes with syntax highlighting. http://devdocs.io
{% endblockquote %}
```

{% blockquote @DevDocs https://twitter.com/devdocs/status/356095192085962752 %}
NEW: DevDocs now comes with syntax highlighting. http://devdocs.io
{% endblockquote %}

**Quote from an article on the web**

```
{% blockquote Seth Godin http://sethgodin.typepad.com/seths_blog/2009/07/welcome-to-island-marketing.html Welcome to Island Marketing %}
Every interaction is both precious and an opportunity to delight.
{% endblockquote %}
```

{% blockquote Seth Godin http://sethgodin.typepad.com/seths_blog/2009/07/welcome-to-island-marketing.html Welcome to Island Marketing %}
Every interaction is both precious and an opportunity to delight.
{% endblockquote %}

## Code Block

Useful feature for adding code snippets to your post.

**Alias:** code

```
{% codeblock [title] [lang:language] [url] [link text] %}
code snippet
{% endcodeblock %}
```

### Examples

**A plain code block**

```
{% codeblock %}
alert('Hello World!');
{% endcodeblock %}
```

{% codeblock %}
alert('Hello World!');
{% endcodeblock %}

**Specifying the language**

```
{% codeblock lang:objc %}
[rectangle setX: 10 y: 10 width: 20 height: 20];
{% endcodeblock %}
```

{% codeblock lang:objc %}
[rectangle setX: 10 y: 10 width: 20 height: 20];
{% endcodeblock %}

**Adding a caption to the code block**

```
{% codeblock Array.map %}
array.map(callback[, thisArg])
{% endcodeblock %}
```

{% codeblock Array.map %}
array.map(callback[, thisArg])
{% endcodeblock %}

**Adding a caption and a URL**

```
{% codeblock _.compact http://underscorejs.org/#compact Underscore.js %}
_.compact([0, 1, false, 2, '', 3]);
=> [1, 2, 3]
{% endcodeblock %}
```

{% codeblock _.compact http://underscorejs.org/#compact Underscore.js %}
_.compact([0, 1, false, 2, '', 3]);
=> [1, 2, 3]
{% endcodeblock %}

## Backtick Code Block

This is identical to using a code block, but instead uses three backticks to delimit the block.

{% raw %}
&#96`` [language] [title] [url] [link text]
code snippet
&#96;``
{% endraw %}

## Pull Quote

To add pull quotes to your posts:

```
{% pullquote [class] %}
content
{% endpullquote %}
```

## jsFiddle

To embed a jsFiddle snippet:

```
{% jsfiddle shorttag [tabs] [skin] [width] [height] %}
```

## Gist

To embed a Gist snippet:

```
{% gist gist_id [filename] %}
```

## iframe

To embed an iframe:

```
{% iframe url [width] [height] %}
```

## Image

Inserts an image with specified size.

```
{% img [class names] /path/to/image [width] [height] [title text [alt text]] %}
```

## Link

Inserts a link with `target="_blank"` attribute.

```
{% link text url [external] [title] %}
```

## Include Code

Inserts code snippets in `source/downloads/code` folder.

```
{% include_code [title] [lang:language] path/to/file %}
```

## YouTube

Inserts a YouTube video.

```
{% youtube video_id %}
```

## Vimeo

Inserts a responsive or specified size Vimeo video.

```
{% vimeo video_id [width] [height] %}
```

## Include Posts

Include links to other posts.

```
{% post_path filename %}
{% post_link filename [optional text] %}
```

You can ignore permalink and folder information, like languages and dates, when using this tag. 

For instance: `{% raw %}{% post_link how-to-bake-a-cake %}{% endraw %}`.

This will work as long as the filename of the post is `how-to-bake-a-cake.md`, even if the post is located at `source/posts/2015-02-my-family-holiday` and has permalink `2018/en/how-to-bake-a-cake`.

You can customize the text to display, instead of displaying the post's title. Using `post_path` inside Markdown syntax `[]()` is not supported.

For instance:

**Display title of the post.**

`{% raw %}{% post_link 2018-10-19-hexo-3-8-released %}{% endraw %}`

{% post_link 2018-10-19-hexo-3-8-released %}

**Display custom text.**

`{% raw %}{% post_link 2018-10-19-hexo-3-8-released 'Link to a post' %}{% endraw %}`

{% post_link 2018-10-19-hexo-3-8-released 'Link to a post' %}


## Include Assets

Include post assets.

```
{% asset_path slug %}
{% asset_img slug [title] %}
{% asset_link slug [title] %}
```

## Raw

If certain content is causing processing issues in your posts, wrap it with the `raw` tag to avoid rendering errors.

```
{% raw %}
content
{% endraw %}
```


## Post Excerpt

Use text placed before the `<!-- more -->` tag as an excerpt for the post.

**Examples:**

``` 
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
<!-- more -->
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
```
