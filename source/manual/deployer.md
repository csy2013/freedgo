title: Deployer
---
A deployer helps users quickly deploy their site to a remote server without complicated commands.

## Synopsis

``` js
hexo.extend.deployer.register(name, function(args){
  // ...
});
```
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script><ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-9055212255210230" data-ad-slot="7941459222"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
An argument `args` will be passed into the function. It contains the `deploy` value set in `_config.yml`, as well as the exact input users typed into their terminal.
