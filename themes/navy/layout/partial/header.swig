<header id="header" class="wrapper">
  <div id="header-inner" class="inner">
    <h2 id="logo-wrap">
      <a href="https://www.freedgo.com" id="logo">Freedgo Desgin</a>
    </h2>
    <nav id="main-nav">
      {{ header_menu('main-nav') }}
      <a href="https://github.com/{{ config.github }}" class="main-nav-link"><i class="fa fa-github-alt"></i></a>
      <div id="search-input-wrap">
        <div id="search-input-icon">
          <i class="fa fa-search"></i>
        </div>
        <input type="search" id="search-input" placeholder="Search...">
      </div>
    </nav>
    <div id="lang-select-wrap">
      <label id="lang-select-label"><i class="fa fa-globe"></i><span>{{ lang_name(page.lang) }}</span></label>
      <select id="lang-select" data-canonical="{{ canonical_path_for_nav() }}">
        {% for lang in site.data.languages %}
          <option value="{{ loop.key }}"{% if page.lang === loop.key %} selected{% endif %}>{{ lang_name(loop.key) }}</option>
        {% endfor %}
      </select>
    </div>
    <a id="mobile-nav-toggle">
      <span class="mobile-nav-toggle-bar"></span>
      <span class="mobile-nav-toggle-bar"></span>
      <span class="mobile-nav-toggle-bar"></span>
    </a>
  </div>
</header>
