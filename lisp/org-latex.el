



<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-999c004c5803f3a54bf0be8f3fbdb027bd0a69b9bf97743fbceb696ea8e8b267.css" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-7360d92e05cc32ed5882e50f58e2b592cc826790dd2fcf8c3e9af0b84096ba1b.css" media="all" rel="stylesheet" />
    
    
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/site-bd1c89983253ffb2b1f8c5d867061b6c34f10acae6187608195be698947d08b0.css" media="all" rel="stylesheet" />
    

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=device-width">
    
    <title>org-mode/org-latex.el at master · hdweiss/org-mode · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="https://avatars2.githubusercontent.com/u/706642?v=3&amp;s=400" name="twitter:image:src" /><meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="hdweiss/org-mode" name="twitter:title" /><meta content="org-mode patches." name="twitter:description" />
      <meta content="https://avatars2.githubusercontent.com/u/706642?v=3&amp;s=400" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="hdweiss/org-mode" property="og:title" /><meta content="https://github.com/hdweiss/org-mode" property="og:url" /><meta content="org-mode patches." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    
    <meta name="pjax-timeout" content="1000">
    
    <meta name="request-id" content="3DB776F0:3208:181EA04D:5834240E" data-pjax-transient>

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
<meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="3DB776F0:3208:181EA04D:5834240E" name="octolytics-dimension-request_id" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />



  <meta class="js-ga-set" name="dimension1" content="Logged Out">



        <meta name="hostname" content="github.com">
    <meta name="user-login" content="">

        <meta name="expected-hostname" content="github.com">
      <meta name="js-proxy-site-detection-payload" content="ZGQzYzU0MDZjZjAzOWMyMDgyYmZkMTE1NDMzMzc2MjlkNjQwMzVjMGY0ZTYwYjljZGM2MjRiNWEyN2VjNTFiM3x7InJlbW90ZV9hZGRyZXNzIjoiNjEuMTgzLjExOC4yNDAiLCJyZXF1ZXN0X2lkIjoiM0RCNzc2RjA6MzIwODoxODFFQTA0RDo1ODM0MjQwRSIsInRpbWVzdGFtcCI6MTQ3OTgxMjExMiwiaG9zdCI6ImdpdGh1Yi5jb20ifQ==">


      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#000000">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta name="html-safe-nonce" content="abf1a9e536e6574c2396511f8fa9ee51bc9a13b9">
    <meta content="088d7af557ed7dd77517ad7c222a17dac8b091c3" name="form-nonce" />

    <meta http-equiv="x-pjax-version" content="566c59f4e325cdb4cab15e8cbce268f9">
    

      
  <meta name="description" content="org-mode patches.">
  <meta name="go-import" content="github.com/hdweiss/org-mode git https://github.com/hdweiss/org-mode.git">

  <meta content="706642" name="octolytics-dimension-user_id" /><meta content="hdweiss" name="octolytics-dimension-user_login" /><meta content="3700761" name="octolytics-dimension-repository_id" /><meta content="hdweiss/org-mode" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="3700761" name="octolytics-dimension-repository_network_root_id" /><meta content="hdweiss/org-mode" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/hdweiss/org-mode/commits/master.atom" rel="alternate" title="Recent Commits to org-mode:master" type="application/atom+xml">


      <link rel="canonical" href="https://github.com/hdweiss/org-mode/blob/master/lisp/org-latex.el" data-pjax-transient>
  </head>


  <body class="logged-out  env-production  vis-public page-blob">
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



          <header class="site-header js-details-container" role="banner">
  <div class="container-responsive">
    <a class="header-logo-invertocat" href="https://github.com/" aria-label="Homepage" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="32" version="1.1" viewBox="0 0 16 16" width="32"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
    </a>

    <button class="btn-link float-right site-header-toggle js-details-target" type="button" aria-label="Toggle navigation">
      <svg aria-hidden="true" class="octicon octicon-three-bars" height="24" version="1.1" viewBox="0 0 12 16" width="18"><path fill-rule="evenodd" d="M11.41 9H.59C0 9 0 8.59 0 8c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zm0-4H.59C0 5 0 4.59 0 4c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zM.59 11H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1H.59C0 13 0 12.59 0 12c0-.59 0-1 .59-1z"/></svg>
    </button>

    <div class="site-header-menu">
      <nav class="site-header-nav site-header-nav-main">
        <a href="/personal" class="js-selected-navigation-item nav-item nav-item-personal" data-ga-click="Header, click, Nav menu - item:personal" data-selected-links="/personal /personal">
          Personal
</a>        <a href="/open-source" class="js-selected-navigation-item nav-item nav-item-opensource" data-ga-click="Header, click, Nav menu - item:opensource" data-selected-links="/open-source /open-source">
          Open source
</a>        <a href="/business" class="js-selected-navigation-item nav-item nav-item-business" data-ga-click="Header, click, Nav menu - item:business" data-selected-links="/business /business/partners /business/features /business/customers /business">
          Business
</a>        <a href="/explore" class="js-selected-navigation-item nav-item nav-item-explore" data-ga-click="Header, click, Nav menu - item:explore" data-selected-links="/explore /trending /trending/developers /integrations /integrations/feature/code /integrations/feature/collaborate /integrations/feature/ship /showcases /explore">
          Explore
</a>      </nav>

      <div class="site-header-actions">
            <a class="btn btn-primary site-header-actions-btn" href="/join?source=header-repo" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
          <a class="btn site-header-actions-btn mr-1" href="/login?return_to=%2Fhdweiss%2Forg-mode%2Fblob%2Fmaster%2Flisp%2Forg-latex.el" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
      </div>

        <nav class="site-header-nav site-header-nav-secondary mr-md-3">
          <a class="nav-item" href="/pricing">Pricing</a>
          <a class="nav-item" href="/blog">Blog</a>
          <a class="nav-item" href="https://help.github.com">Support</a>
          <a class="nav-item header-search-link" href="https://github.com/search">Search GitHub</a>
              <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/hdweiss/org-mode/search" class="js-site-search-form" data-scoped-search-url="/hdweiss/org-mode/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <label class="form-control header-search-wrapper js-chromeless-input-container">
      <div class="header-search-scope">This repository</div>
      <input type="text"
        class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
        data-hotkey="s"
        name="q"
        placeholder="Search"
        aria-label="Search this repository"
        data-unscoped-placeholder="Search GitHub"
        data-scoped-placeholder="Search"
        autocapitalize="off">
    </label>
</form></div>

        </nav>
    </div>
  </div>
</header>



    <div id="start-of-content" class="accessibility-aid"></div>

      <div id="js-flash-container">
</div>


    <div role="main">
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode">
    <div id="js-repo-pjax-container" data-pjax-container>
      
<div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav">
  <div class="container repohead-details-container">

    

<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2Fhdweiss%2Forg-mode"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
    Watch
  </a>
  <a class="social-count" href="/hdweiss/org-mode/watchers"
     aria-label="1 user is watching this repository">
    1
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fhdweiss%2Forg-mode"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
    Star
  </a>

    <a class="social-count js-social-count" href="/hdweiss/org-mode/stargazers"
      aria-label="2 users starred this repository">
      2
    </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fhdweiss%2Forg-mode"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
        Fork
      </a>

    <a href="/hdweiss/org-mode/network" class="social-count"
       aria-label="2 users forked this repository">
      2
    </a>
  </li>
</ul>

    <h1 class="public ">
  <svg aria-hidden="true" class="octicon octicon-repo" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
  <span class="author" itemprop="author"><a href="/hdweiss" class="url fn" rel="author">hdweiss</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/hdweiss/org-mode" data-pjax="#js-repo-pjax-container">org-mode</a></strong>

</h1>

  </div>
  <div class="container">
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/hdweiss/org-mode" aria-selected="true" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /hdweiss/org-mode" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"/></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a href="/hdweiss/org-mode/issues" class="js-selected-navigation-item reponav-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /hdweiss/org-mode/issues" itemprop="url">
        <svg aria-hidden="true" class="octicon octicon-issue-opened" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"/></svg>
        <span itemprop="name">Issues</span>
        <span class="counter">0</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/hdweiss/org-mode/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /hdweiss/org-mode/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
      <span itemprop="name">Pull requests</span>
      <span class="counter">0</span>
      <meta itemprop="position" content="3">
</a>  </span>

  <a href="/hdweiss/org-mode/projects" class="js-selected-navigation-item reponav-item" data-selected-links="repo_projects new_repo_project repo_project /hdweiss/org-mode/projects">
    <svg aria-hidden="true" class="octicon octicon-project" height="16" version="1.1" viewBox="0 0 15 16" width="15"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
    Projects
    <span class="counter">0</span>
</a>


  <a href="/hdweiss/org-mode/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="pulse /hdweiss/org-mode/pulse">
    <svg aria-hidden="true" class="octicon octicon-pulse" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M11.5 8L8.8 5.4 6.6 8.5 5.5 1.6 2.38 8H0v2h3.6l.9-1.8.9 5.4L9 8.5l1.6 1.5H14V8z"/></svg>
    Pulse
</a>
  <a href="/hdweiss/org-mode/graphs" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors /hdweiss/org-mode/graphs">
    <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"/></svg>
    Graphs
</a>

</nav>

  </div>
</div>

<div class="container new-discussion-timeline experiment-repo-nav">
  <div class="repository-content">

    

<a href="/hdweiss/org-mode/blob/4721052ec68bd85f4bffb5039bb89c6dfa1b5cc5/lisp/org-latex.el" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:769fb812903dc5cde42a5ee18a13406e -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu branch-select-menu js-menu-container js-select-menu float-left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/hdweiss/org-mode/blob/agendas_titles/lisp/org-latex.el"
               data-name="agendas_titles"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                agendas_titles
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/hdweiss/org-mode/blob/editnodes/lisp/org-latex.el"
               data-name="editnodes"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                editnodes
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/hdweiss/org-mode/blob/master/lisp/org-latex.el"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="BtnGroup float-right">
    <a href="/hdweiss/org-mode/find/master"
          class="js-pjax-capture-input btn btn-sm BtnGroup-item"
          data-pjax
          data-hotkey="t">
      Find file
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm BtnGroup-item tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
  </div>
  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/hdweiss/org-mode"><span>org-mode</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/hdweiss/org-mode/tree/master/lisp"><span>lisp</span></a></span><span class="separator">/</span><strong class="final-path">org-latex.el</strong>
  </div>
</div>


  <div class="commit-tease">
      <span class="float-right">
        <a class="commit-tease-sha" href="/hdweiss/org-mode/commit/872516b8f9378dad95688ec673850163dd824f4d" data-pjax>
          872516b
        </a>
        <relative-time datetime="2012-05-17T06:06:58Z">May 17, 2012</relative-time>
      </span>
      <div>
        <img alt="" class="avatar" data-canonical-src="https://2.gravatar.com/avatar/beca86d6416e66d0b9d5b25699995b98?d=https%3A%2F%2Fassets-cdn.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png&amp;r=x&amp;s=140" height="20" src="https://camo.githubusercontent.com/c9b36ca208ec49528177b804c025bc3cc2ce59fc/68747470733a2f2f322e67726176617461722e636f6d2f6176617461722f62656361383664363431366536366430623964356232353639393939356239383f643d68747470732533412532462532466173736574732d63646e2e6769746875622e636f6d253246696d6167657325324667726176617461727325324667726176617461722d757365722d3432302e706e6726723d7826733d313430" width="20" />
        <span class="user-mention">Bastien Guerry</span>
          <a href="/hdweiss/org-mode/commit/872516b8f9378dad95688ec673850163dd824f4d" class="message" data-pjax="true" title="New option `org-export-latex-link-with-unknown-path-format&#39;.

* org-latex.el
(org-export-latex-link-with-unknown-path-format): New option.
(org-export-latex-links): Use it.

Thanks to Sébastien Vauban for a preliminary patch for this.">New option `org-export-latex-link-with-unknown-path-format'.</a>
      </div>

    <div class="commit-tease-contributors">
      <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
        <strong>18</strong>
         contributors
      </button>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="cdominik" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=cdominik"><img alt="@cdominik" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/32773?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="ngz" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=ngz"><img alt="@ngz" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/206050?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="eschulte" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=eschulte"><img alt="@eschulte" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/13414?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="wence-" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=wence-"><img alt="@wence-" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1126981?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="dandavison" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=dandavison"><img alt="@dandavison" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/52205?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="noorul" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=noorul"><img alt="@noorul" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/155376?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="wuestholz" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=wuestholz"><img alt="@wuestholz" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/51156?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tumashu" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=tumashu"><img alt="@tumashu" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/67725?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tsdye" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=tsdye"><img alt="@tsdye" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/125573?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tsdh" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=tsdh"><img alt="@tsdh" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/103854?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="wyleyr" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=wyleyr"><img alt="@wyleyr" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/4525191?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="pft" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=pft"><img alt="@pft" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/134100?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="ndokos" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=ndokos"><img alt="@ndokos" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/687010?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="cofi" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=cofi"><img alt="@cofi" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/130573?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="zms" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=zms"><img alt="@zms" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/40359?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="jd" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=jd"><img alt="@jd" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/2644?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="ericsfraga" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=ericsfraga"><img alt="@ericsfraga" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/323238?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="csrhodes" href="/hdweiss/org-mode/commits/master/lisp/org-latex.el?author=csrhodes"><img alt="@csrhodes" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1670142?v=3&amp;s=40" width="20" /> </a>


    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@cdominik" height="24" src="https://avatars3.githubusercontent.com/u/32773?v=3&amp;s=48" width="24" />
            <a href="/cdominik">cdominik</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@ngz" height="24" src="https://avatars0.githubusercontent.com/u/206050?v=3&amp;s=48" width="24" />
            <a href="/ngz">ngz</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@eschulte" height="24" src="https://avatars1.githubusercontent.com/u/13414?v=3&amp;s=48" width="24" />
            <a href="/eschulte">eschulte</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@wence-" height="24" src="https://avatars2.githubusercontent.com/u/1126981?v=3&amp;s=48" width="24" />
            <a href="/wence-">wence-</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@dandavison" height="24" src="https://avatars1.githubusercontent.com/u/52205?v=3&amp;s=48" width="24" />
            <a href="/dandavison">dandavison</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@noorul" height="24" src="https://avatars0.githubusercontent.com/u/155376?v=3&amp;s=48" width="24" />
            <a href="/noorul">noorul</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@wuestholz" height="24" src="https://avatars2.githubusercontent.com/u/51156?v=3&amp;s=48" width="24" />
            <a href="/wuestholz">wuestholz</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tumashu" height="24" src="https://avatars0.githubusercontent.com/u/67725?v=3&amp;s=48" width="24" />
            <a href="/tumashu">tumashu</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tsdye" height="24" src="https://avatars0.githubusercontent.com/u/125573?v=3&amp;s=48" width="24" />
            <a href="/tsdye">tsdye</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tsdh" height="24" src="https://avatars2.githubusercontent.com/u/103854?v=3&amp;s=48" width="24" />
            <a href="/tsdh">tsdh</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@wyleyr" height="24" src="https://avatars3.githubusercontent.com/u/4525191?v=3&amp;s=48" width="24" />
            <a href="/wyleyr">wyleyr</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@pft" height="24" src="https://avatars0.githubusercontent.com/u/134100?v=3&amp;s=48" width="24" />
            <a href="/pft">pft</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@ndokos" height="24" src="https://avatars2.githubusercontent.com/u/687010?v=3&amp;s=48" width="24" />
            <a href="/ndokos">ndokos</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@cofi" height="24" src="https://avatars1.githubusercontent.com/u/130573?v=3&amp;s=48" width="24" />
            <a href="/cofi">cofi</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@zms" height="24" src="https://avatars3.githubusercontent.com/u/40359?v=3&amp;s=48" width="24" />
            <a href="/zms">zms</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@jd" height="24" src="https://avatars2.githubusercontent.com/u/2644?v=3&amp;s=48" width="24" />
            <a href="/jd">jd</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@ericsfraga" height="24" src="https://avatars2.githubusercontent.com/u/323238?v=3&amp;s=48" width="24" />
            <a href="/ericsfraga">ericsfraga</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@csrhodes" height="24" src="https://avatars2.githubusercontent.com/u/1670142?v=3&amp;s=48" width="24" />
            <a href="/csrhodes">csrhodes</a>
          </li>
      </ul>
    </div>
  </div>


<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/hdweiss/org-mode/raw/master/lisp/org-latex.el" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/hdweiss/org-mode/blame/master/lisp/org-latex.el" class="btn btn-sm js-update-url-with-hash BtnGroup-item">Blame</a>
      <a href="/hdweiss/org-mode/commits/master/lisp/org-latex.el" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
    </div>


        <button type="button" class="btn-octicon disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
        </button>
        <button type="button" class="btn-octicon btn-octicon-danger disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
        </button>
  </div>

  <div class="file-info">
      2892 lines (2677 sloc)
      <span class="file-info-divider"></span>
    105 KB
  </div>
</div>

  

  <div itemprop="text" class="blob-wrapper data type-emacs-lisp">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; org-latex.el --- LaTeX exporter for org-mode</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Copyright (C) 2007-2012 Free Software Foundation, Inc.</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Emacs Lisp Archive Entry</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Filename: org-latex.el</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Author: Bastien Guerry &lt;bzg AT gnu DOT org&gt;</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Maintainer: Carsten Dominik &lt;carsten.dominik AT gmail DOT com&gt;</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Keywords: org, wp, tex</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; Description: Converts an org-mode buffer into LaTeX</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; This file is part of GNU Emacs.</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; GNU Emacs is free software: you can redistribute it and/or modify</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; it under the terms of the GNU General Public License as published by</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; the Free Software Foundation, either version 3 of the License, or</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; (at your option) any later version.</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; GNU Emacs is distributed in the hope that it will be useful,</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; GNU General Public License for more details.</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; You should have received a copy of the GNU General Public License</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; along with GNU Emacs.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Commentary:</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; This library implements a LaTeX exporter for org-mode.</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; It is part of Org and will be autoloaded</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; The interactive functions are similar to those of the HTML exporter:</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; M-x `org-export-as-latex&#39;</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; M-x `org-export-as-pdf&#39;</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; M-x `org-export-as-pdf-and-open&#39;</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; M-x `org-export-as-latex-batch&#39;</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; M-x `org-export-as-latex-to-buffer&#39;</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; M-x `org-export-region-as-latex&#39;</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;; M-x `org-replace-region-by-latex&#39;</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Code:</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">eval-when-compile</span></td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line">  (require <span class="pl-c1">&#39;cl</span>))</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line">(require <span class="pl-c1">&#39;footnote</span>)</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">(require <span class="pl-c1">&#39;org</span>)</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">(require <span class="pl-c1">&#39;org-exp</span>)</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">(require <span class="pl-c1">&#39;org-macs</span>)</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">(require <span class="pl-c1">&#39;org-beamer</span>)</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Variables:</span></td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-class</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-class-options</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-header</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-append-header</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-options-plist</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-todo-keywords-1</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-complex-heading-re</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-not-done-keywords</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-done-keywords</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-display-custom-times</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-all-targets-re</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-add-level</span> <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-footmark-seen</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>List of footnotes markers seen so far by exporter.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-sectioning</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-sectioning-depth</span> <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-special-keyword-regexp</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line">  (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;<span class="pl-cce">\\</span>(<span class="pl-pds">&quot;</span></span> org-scheduled-string <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>|<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">	  org-deadline-string <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>|<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line">	  org-closed-string<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Regexp matching special time planning keywords plus the time after it.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-re-quote</span>)  <span class="pl-c">; dynamically scoped from org.el</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-commentsp</span>) <span class="pl-c">; dynamically scoped from org.el</span></td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; User variables:</span></td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defgroup</span> <span class="pl-en">org-export-latex</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Options for exporting Org-mode files to LaTeX.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Org Export LaTeX<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export</span>)</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-default-class</span> <span class="pl-s"><span class="pl-pds">&quot;</span>article<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The default LaTeX class.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX class<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-classes</span></td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line">  &#39;((<span class="pl-s"><span class="pl-pds">&quot;</span>article<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line">     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>documentclass[11pt]{article}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>section{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>section*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsection{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsection*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsubsection{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsubsection*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>paragraph{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>paragraph*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subparagraph{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subparagraph*{%s}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>report<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line">     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>documentclass[11pt]{report}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>part{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>part*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>chapter{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>chapter*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>section{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>section*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsection{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsection*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsubsection{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsubsection*{%s}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>book<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>documentclass[11pt]{book}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>part{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>part*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>chapter{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>chapter*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>section{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>section*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsection{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsection*{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">     (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsubsection{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subsubsection*{%s}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>beamer<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line">     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>documentclass{beamer}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line">     org-beamer-sectioning</td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line">     ))</td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Alist of LaTeX classes and associated header and structure.</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If #+LaTeX_CLASS is set in the buffer, use its value and the</span></td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line"><span class="pl-s">associated information.  Here is the structure of each cell:</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  <span class="pl-cce">\(</span>class-name</span></td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    header-string</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    (numbered-section . unnumbered-section<span class="pl-cce">\)</span></span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    ...<span class="pl-cce">\)</span></span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The header string</span></td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line"><span class="pl-s">-----------------</span></td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The HEADER-STRING is the header that will be inserted into the LaTeX file.</span></td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line"><span class="pl-s">It should contain the <span class="pl-cce">\\</span>documentclass macro, and anything else that is needed</span></td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code blob-code-inner js-file-line"><span class="pl-s">for this setup.  To this header, the following commands will be added:</span></td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code blob-code-inner js-file-line"><span class="pl-s">- Calls to <span class="pl-cce">\\</span>usepackage for all packages mentioned in the variables</span></td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  `org-export-latex-default-packages-alist&#39; and</span></td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  `org-export-latex-packages-alist&#39;.  Thus, your header definitions should</span></td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  avoid to also request these packages.</span></td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code blob-code-inner js-file-line"><span class="pl-s">- Lines specified via <span class="pl-cce">\&quot;</span>#+LaTeX_HEADER:<span class="pl-cce">\&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If you need more control about the sequence in which the header is built</span></td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code blob-code-inner js-file-line"><span class="pl-s">up, or if you want to exclude one of these building blocks for a particular</span></td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code blob-code-inner js-file-line"><span class="pl-s">class, you can use the following macro-like placeholders.</span></td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code blob-code-inner js-file-line"><span class="pl-s"> [DEFAULT-PACKAGES]      <span class="pl-cce">\\</span>usepackage statements for default packages</span></td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code blob-code-inner js-file-line"><span class="pl-s"> [NO-DEFAULT-PACKAGES]   do not include any of the default packages</span></td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code blob-code-inner js-file-line"><span class="pl-s"> [PACKAGES]              <span class="pl-cce">\\</span>usepackage statements for packages</span></td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code blob-code-inner js-file-line"><span class="pl-s"> [NO-PACKAGES]           do not include the packages</span></td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code blob-code-inner js-file-line"><span class="pl-s"> [EXTRA]                 the stuff from #+LaTeX_HEADER</span></td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code blob-code-inner js-file-line"><span class="pl-s"> [NO-EXTRA]              do not include #+LaTeX_HEADER stuff</span></td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code blob-code-inner js-file-line"><span class="pl-s"> [BEAMER-HEADER-EXTRA]   the beamer extra headers</span></td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code blob-code-inner js-file-line"><span class="pl-s">So a header like</span></td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  <span class="pl-cce">\\</span>documentclass{article}</span></td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  [NO-DEFAULT-PACKAGES]</span></td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  [EXTRA]</span></td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  <span class="pl-cce">\\</span>providecommand{<span class="pl-cce">\\</span>alert}[1]{<span class="pl-cce">\\</span>textbf{#1}}</span></td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  [PACKAGES]</span></td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code blob-code-inner js-file-line"><span class="pl-s">will omit the default packages, and will include the #+LaTeX_HEADER lines,</span></td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code blob-code-inner js-file-line"><span class="pl-s">then have a call to <span class="pl-cce">\\</span>providecommand, and then place <span class="pl-cce">\\</span>usepackage commands</span></td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code blob-code-inner js-file-line"><span class="pl-s">based on the content of `org-export-latex-packages-alist&#39;.</span></td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If your header or `org-export-latex-default-packages-alist&#39; inserts</span></td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\&quot;\\</span>usepackage[AUTO]{inputenc}<span class="pl-cce">\&quot;</span>, AUTO will automatically be replaced with</span></td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code blob-code-inner js-file-line"><span class="pl-s">a coding system derived from `buffer-file-coding-system&#39;.  See also the</span></td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code blob-code-inner js-file-line"><span class="pl-s">variable `org-export-latex-inputenc-alist&#39; for a way to influence this</span></td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code blob-code-inner js-file-line"><span class="pl-s">mechanism.</span></td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The sectioning structure</span></td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code blob-code-inner js-file-line"><span class="pl-s">------------------------</span></td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The sectioning structure of the class is given by the elements following</span></td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the header string.  For each sectioning level, a number of strings is</span></td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code blob-code-inner js-file-line"><span class="pl-s">specified.  A %s formatter is mandatory in each section string and will</span></td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code blob-code-inner js-file-line"><span class="pl-s">be replaced by the title of the section.</span></td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Instead of a cons cell (numbered . unnumbered), you can also provide a list</span></td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code blob-code-inner js-file-line"><span class="pl-s">of 2 or 4 elements,</span></td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (numbered-open numbered-close)</span></td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code blob-code-inner js-file-line"><span class="pl-s">or</span></td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (numbered-open numbered-close unnumbered-open unnumbered-close)</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code blob-code-inner js-file-line"><span class="pl-s">providing opening and closing strings for a LaTeX environment that should</span></td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code blob-code-inner js-file-line"><span class="pl-s">represent the document section.  The opening clause should have a %s</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code blob-code-inner js-file-line"><span class="pl-s">to represent the section title.</span></td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Instead of a list of sectioning commands, you can also specify a</span></td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code blob-code-inner js-file-line"><span class="pl-s">function name.  That function will be called with two parameters,</span></td>
      </tr>
      <tr>
        <td id="L193" class="blob-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the (reduced) level of the headline, and the headline text.  The function</span></td>
      </tr>
      <tr>
        <td id="L194" class="blob-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-code blob-code-inner js-file-line"><span class="pl-s">must return a cons cell with the (possibly modified) headline text, and the</span></td>
      </tr>
      <tr>
        <td id="L195" class="blob-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-code blob-code-inner js-file-line"><span class="pl-s">sectioning list in the cdr.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L196" class="blob-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L197" class="blob-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(repeat</td>
      </tr>
      <tr>
        <td id="L198" class="blob-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">list</span> (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX class<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L199" class="blob-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX header<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L200" class="blob-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-code blob-code-inner js-file-line">		(repeat <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Levels<span class="pl-pds">&quot;</span></span> <span class="pl-c1">:inline</span> <span class="pl-c1">t</span></td>
      </tr>
      <tr>
        <td id="L201" class="blob-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-code blob-code-inner js-file-line">			(choice</td>
      </tr>
      <tr>
        <td id="L202" class="blob-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-code blob-code-inner js-file-line">			 (<span class="pl-k">cons</span> <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Heading<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L203" class="blob-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-code blob-code-inner js-file-line">			       (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>  numbered<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L204" class="blob-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-code blob-code-inner js-file-line">			       (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>unnumbered<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L205" class="blob-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-code blob-code-inner js-file-line">			 (<span class="pl-k">list</span> <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Environment<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L206" class="blob-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-code blob-code-inner js-file-line">			       (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Opening   (numbered)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L207" class="blob-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-code blob-code-inner js-file-line">			       (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Closing   (numbered)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L208" class="blob-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-code blob-code-inner js-file-line">			       (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Opening (unnumbered)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L209" class="blob-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-code blob-code-inner js-file-line">			       (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Closing (unnumbered)<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L210" class="blob-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-code blob-code-inner js-file-line">			 (<span class="pl-k">function</span> <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Hook computing sectioning<span class="pl-pds">&quot;</span></span>))))))</td>
      </tr>
      <tr>
        <td id="L211" class="blob-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L212" class="blob-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-inputenc-alist</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L213" class="blob-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Alist of inputenc coding system names, and what should really be used.</span></td>
      </tr>
      <tr>
        <td id="L214" class="blob-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For example, adding an entry</span></td>
      </tr>
      <tr>
        <td id="L215" class="blob-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L216" class="blob-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-code blob-code-inner js-file-line"><span class="pl-s">      (<span class="pl-cce">\&quot;</span>utf8<span class="pl-cce">\&quot;</span> . <span class="pl-cce">\&quot;</span>utf8x<span class="pl-cce">\&quot;</span>)</span></td>
      </tr>
      <tr>
        <td id="L217" class="blob-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L218" class="blob-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-code blob-code-inner js-file-line"><span class="pl-s">will cause <span class="pl-cce">\\</span>usepackage[utf8x]{inputenc} to be used for buffers that</span></td>
      </tr>
      <tr>
        <td id="L219" class="blob-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-code blob-code-inner js-file-line"><span class="pl-s">are written as utf8 files.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L220" class="blob-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L221" class="blob-num js-line-number" data-line-number="221"></td>
        <td id="LC221" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L222" class="blob-num js-line-number" data-line-number="222"></td>
        <td id="LC222" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(repeat</td>
      </tr>
      <tr>
        <td id="L223" class="blob-num js-line-number" data-line-number="223"></td>
        <td id="LC223" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">cons</span></td>
      </tr>
      <tr>
        <td id="L224" class="blob-num js-line-number" data-line-number="224"></td>
        <td id="LC224" class="blob-code blob-code-inner js-file-line">	   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Derived from buffer<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L225" class="blob-num js-line-number" data-line-number="225"></td>
        <td id="LC225" class="blob-code blob-code-inner js-file-line">	   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Use this instead<span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L226" class="blob-num js-line-number" data-line-number="226"></td>
        <td id="LC226" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L227" class="blob-num js-line-number" data-line-number="227"></td>
        <td id="LC227" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L228" class="blob-num js-line-number" data-line-number="228"></td>
        <td id="LC228" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-emphasis-alist</span></td>
      </tr>
      <tr>
        <td id="L229" class="blob-num js-line-number" data-line-number="229"></td>
        <td id="LC229" class="blob-code blob-code-inner js-file-line">  &#39;((<span class="pl-s"><span class="pl-pds">&quot;</span>*<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textbf{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L230" class="blob-num js-line-number" data-line-number="230"></td>
        <td id="LC230" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>/<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>emph{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L231" class="blob-num js-line-number" data-line-number="231"></td>
        <td id="LC231" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>_<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>underline{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L232" class="blob-num js-line-number" data-line-number="232"></td>
        <td id="LC232" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>+<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>st{%s}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L233" class="blob-num js-line-number" data-line-number="233"></td>
        <td id="LC233" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>=<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>protectedtexttt<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L234" class="blob-num js-line-number" data-line-number="234"></td>
        <td id="LC234" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>~<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>verb<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L235" class="blob-num js-line-number" data-line-number="235"></td>
        <td id="LC235" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Alist of LaTeX expressions to convert emphasis fontifiers.</span></td>
      </tr>
      <tr>
        <td id="L236" class="blob-num js-line-number" data-line-number="236"></td>
        <td id="LC236" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Each element of the list is a list of three elements.</span></td>
      </tr>
      <tr>
        <td id="L237" class="blob-num js-line-number" data-line-number="237"></td>
        <td id="LC237" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The first element is the character used as a marker for fontification.</span></td>
      </tr>
      <tr>
        <td id="L238" class="blob-num js-line-number" data-line-number="238"></td>
        <td id="LC238" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The second element is a formatting string to wrap fontified text with.</span></td>
      </tr>
      <tr>
        <td id="L239" class="blob-num js-line-number" data-line-number="239"></td>
        <td id="LC239" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If it is <span class="pl-cce">\&quot;\\</span>verb<span class="pl-cce">\&quot;</span>, Org will automatically select a delimiter</span></td>
      </tr>
      <tr>
        <td id="L240" class="blob-num js-line-number" data-line-number="240"></td>
        <td id="LC240" class="blob-code blob-code-inner js-file-line"><span class="pl-s">character that is not in the string.  <span class="pl-cce">\&quot;\\</span>protectedtexttt<span class="pl-cce">\&quot;</span> will use <span class="pl-cce">\\</span>texttt</span></td>
      </tr>
      <tr>
        <td id="L241" class="blob-num js-line-number" data-line-number="241"></td>
        <td id="LC241" class="blob-code blob-code-inner js-file-line"><span class="pl-s">to typeset and try to protect special characters.</span></td>
      </tr>
      <tr>
        <td id="L242" class="blob-num js-line-number" data-line-number="242"></td>
        <td id="LC242" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The third element decides whether to protect converted text from other</span></td>
      </tr>
      <tr>
        <td id="L243" class="blob-num js-line-number" data-line-number="243"></td>
        <td id="LC243" class="blob-code blob-code-inner js-file-line"><span class="pl-s">conversions.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L244" class="blob-num js-line-number" data-line-number="244"></td>
        <td id="LC244" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L245" class="blob-num js-line-number" data-line-number="245"></td>
        <td id="LC245" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;alist</span>)</td>
      </tr>
      <tr>
        <td id="L246" class="blob-num js-line-number" data-line-number="246"></td>
        <td id="LC246" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L247" class="blob-num js-line-number" data-line-number="247"></td>
        <td id="LC247" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-title-command</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>maketitle<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L248" class="blob-num js-line-number" data-line-number="248"></td>
        <td id="LC248" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The command used to insert the title just after <span class="pl-cce">\\</span>begin{document}.</span></td>
      </tr>
      <tr>
        <td id="L249" class="blob-num js-line-number" data-line-number="249"></td>
        <td id="LC249" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If this string contains the formatting specification <span class="pl-cce">\&quot;</span>%s<span class="pl-cce">\&quot;</span> then</span></td>
      </tr>
      <tr>
        <td id="L250" class="blob-num js-line-number" data-line-number="250"></td>
        <td id="LC250" class="blob-code blob-code-inner js-file-line"><span class="pl-s">it will be used as a formatting string, passing the title as an</span></td>
      </tr>
      <tr>
        <td id="L251" class="blob-num js-line-number" data-line-number="251"></td>
        <td id="LC251" class="blob-code blob-code-inner js-file-line"><span class="pl-s">argument.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L252" class="blob-num js-line-number" data-line-number="252"></td>
        <td id="LC252" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L253" class="blob-num js-line-number" data-line-number="253"></td>
        <td id="LC253" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L254" class="blob-num js-line-number" data-line-number="254"></td>
        <td id="LC254" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L255" class="blob-num js-line-number" data-line-number="255"></td>
        <td id="LC255" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-import-inbuffer-stuff</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L256" class="blob-num js-line-number" data-line-number="256"></td>
        <td id="LC256" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Non-nil means define TeX macros for Org&#39;s inbuffer definitions.</span></td>
      </tr>
      <tr>
        <td id="L257" class="blob-num js-line-number" data-line-number="257"></td>
        <td id="LC257" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For example <span class="pl-cce">\o</span>rgTITLE for #+TITLE.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L258" class="blob-num js-line-number" data-line-number="258"></td>
        <td id="LC258" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L259" class="blob-num js-line-number" data-line-number="259"></td>
        <td id="LC259" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;boolean</span>)</td>
      </tr>
      <tr>
        <td id="L260" class="blob-num js-line-number" data-line-number="260"></td>
        <td id="LC260" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L261" class="blob-num js-line-number" data-line-number="261"></td>
        <td id="LC261" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-date-format</span></td>
      </tr>
      <tr>
        <td id="L262" class="blob-num js-line-number" data-line-number="262"></td>
        <td id="LC262" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>today<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L263" class="blob-num js-line-number" data-line-number="263"></td>
        <td id="LC263" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Format string for <span class="pl-cce">\\</span>date{...}.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L264" class="blob-num js-line-number" data-line-number="264"></td>
        <td id="LC264" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L265" class="blob-num js-line-number" data-line-number="265"></td>
        <td id="LC265" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L266" class="blob-num js-line-number" data-line-number="266"></td>
        <td id="LC266" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L267" class="blob-num js-line-number" data-line-number="267"></td>
        <td id="LC267" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-todo-keyword-markup</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textbf{%s}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L268" class="blob-num js-line-number" data-line-number="268"></td>
        <td id="LC268" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Markup for TODO keywords, as a printf format.</span></td>
      </tr>
      <tr>
        <td id="L269" class="blob-num js-line-number" data-line-number="269"></td>
        <td id="LC269" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This can be a single format for all keywords, a cons cell with separate</span></td>
      </tr>
      <tr>
        <td id="L270" class="blob-num js-line-number" data-line-number="270"></td>
        <td id="LC270" class="blob-code blob-code-inner js-file-line"><span class="pl-s">formats for not-done and done states, or an association list with setup</span></td>
      </tr>
      <tr>
        <td id="L271" class="blob-num js-line-number" data-line-number="271"></td>
        <td id="LC271" class="blob-code blob-code-inner js-file-line"><span class="pl-s">for individual keywords.  If a keyword shows up for which there is no</span></td>
      </tr>
      <tr>
        <td id="L272" class="blob-num js-line-number" data-line-number="272"></td>
        <td id="LC272" class="blob-code blob-code-inner js-file-line"><span class="pl-s">markup defined, the first one in the association list will be used.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L273" class="blob-num js-line-number" data-line-number="273"></td>
        <td id="LC273" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L274" class="blob-num js-line-number" data-line-number="274"></td>
        <td id="LC274" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(choice</td>
      </tr>
      <tr>
        <td id="L275" class="blob-num js-line-number" data-line-number="275"></td>
        <td id="LC275" class="blob-code blob-code-inner js-file-line">	  (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Default<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L276" class="blob-num js-line-number" data-line-number="276"></td>
        <td id="LC276" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">cons</span> <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Distinguish undone and done<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L277" class="blob-num js-line-number" data-line-number="277"></td>
        <td id="LC277" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Not-DONE states<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L278" class="blob-num js-line-number" data-line-number="278"></td>
        <td id="LC278" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>DONE states<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L279" class="blob-num js-line-number" data-line-number="279"></td>
        <td id="LC279" class="blob-code blob-code-inner js-file-line">	  (repeat <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Per keyword markup<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L280" class="blob-num js-line-number" data-line-number="280"></td>
        <td id="LC280" class="blob-code blob-code-inner js-file-line">		  (<span class="pl-k">cons</span></td>
      </tr>
      <tr>
        <td id="L281" class="blob-num js-line-number" data-line-number="281"></td>
        <td id="LC281" class="blob-code blob-code-inner js-file-line">		   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Keyword<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L282" class="blob-num js-line-number" data-line-number="282"></td>
        <td id="LC282" class="blob-code blob-code-inner js-file-line">		   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Markup<span class="pl-pds">&quot;</span></span>)))))</td>
      </tr>
      <tr>
        <td id="L283" class="blob-num js-line-number" data-line-number="283"></td>
        <td id="LC283" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L284" class="blob-num js-line-number" data-line-number="284"></td>
        <td id="LC284" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-tag-markup</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textbf{%s}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L285" class="blob-num js-line-number" data-line-number="285"></td>
        <td id="LC285" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Markup for tags, as a printf format.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L286" class="blob-num js-line-number" data-line-number="286"></td>
        <td id="LC286" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L287" class="blob-num js-line-number" data-line-number="287"></td>
        <td id="LC287" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L288" class="blob-num js-line-number" data-line-number="288"></td>
        <td id="LC288" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L289" class="blob-num js-line-number" data-line-number="289"></td>
        <td id="LC289" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L290" class="blob-num js-line-number" data-line-number="290"></td>
        <td id="LC290" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-timestamp-markup</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textit{%s}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L291" class="blob-num js-line-number" data-line-number="291"></td>
        <td id="LC291" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>A printf format string to be applied to time stamps.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L292" class="blob-num js-line-number" data-line-number="292"></td>
        <td id="LC292" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L293" class="blob-num js-line-number" data-line-number="293"></td>
        <td id="LC293" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L294" class="blob-num js-line-number" data-line-number="294"></td>
        <td id="LC294" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L295" class="blob-num js-line-number" data-line-number="295"></td>
        <td id="LC295" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-timestamp-inactive-markup</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textit{%s}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L296" class="blob-num js-line-number" data-line-number="296"></td>
        <td id="LC296" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>A printf format string to be applied to inactive time stamps.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L297" class="blob-num js-line-number" data-line-number="297"></td>
        <td id="LC297" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L298" class="blob-num js-line-number" data-line-number="298"></td>
        <td id="LC298" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L299" class="blob-num js-line-number" data-line-number="299"></td>
        <td id="LC299" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L300" class="blob-num js-line-number" data-line-number="300"></td>
        <td id="LC300" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L301" class="blob-num js-line-number" data-line-number="301"></td>
        <td id="LC301" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-timestamp-keyword-markup</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>texttt{%s}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L302" class="blob-num js-line-number" data-line-number="302"></td>
        <td id="LC302" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>A printf format string to be applied to time stamps.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L303" class="blob-num js-line-number" data-line-number="303"></td>
        <td id="LC303" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L304" class="blob-num js-line-number" data-line-number="304"></td>
        <td id="LC304" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L305" class="blob-num js-line-number" data-line-number="305"></td>
        <td id="LC305" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L306" class="blob-num js-line-number" data-line-number="306"></td>
        <td id="LC306" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-href-format</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>href{%s}{%s}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L307" class="blob-num js-line-number" data-line-number="307"></td>
        <td id="LC307" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>A printf format string to be applied to href links.</span></td>
      </tr>
      <tr>
        <td id="L308" class="blob-num js-line-number" data-line-number="308"></td>
        <td id="LC308" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The format must contain either two %s instances or just one.</span></td>
      </tr>
      <tr>
        <td id="L309" class="blob-num js-line-number" data-line-number="309"></td>
        <td id="LC309" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If it contains two %s instances, the first will be filled with</span></td>
      </tr>
      <tr>
        <td id="L310" class="blob-num js-line-number" data-line-number="310"></td>
        <td id="LC310" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the link, the second with the link description.  If it contains</span></td>
      </tr>
      <tr>
        <td id="L311" class="blob-num js-line-number" data-line-number="311"></td>
        <td id="LC311" class="blob-code blob-code-inner js-file-line"><span class="pl-s">only one, the %s will be filled with the link.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L312" class="blob-num js-line-number" data-line-number="312"></td>
        <td id="LC312" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L313" class="blob-num js-line-number" data-line-number="313"></td>
        <td id="LC313" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L314" class="blob-num js-line-number" data-line-number="314"></td>
        <td id="LC314" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L315" class="blob-num js-line-number" data-line-number="315"></td>
        <td id="LC315" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L316" class="blob-num js-line-number" data-line-number="316"></td>
        <td id="LC316" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-hyperref-format</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hyperref[%s]{%s}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L317" class="blob-num js-line-number" data-line-number="317"></td>
        <td id="LC317" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>A printf format string to be applied to hyperref links.</span></td>
      </tr>
      <tr>
        <td id="L318" class="blob-num js-line-number" data-line-number="318"></td>
        <td id="LC318" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The format must contain one or two %s instances.  The first one</span></td>
      </tr>
      <tr>
        <td id="L319" class="blob-num js-line-number" data-line-number="319"></td>
        <td id="LC319" class="blob-code blob-code-inner js-file-line"><span class="pl-s">will be filled with the link, the second with its description.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L320" class="blob-num js-line-number" data-line-number="320"></td>
        <td id="LC320" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L321" class="blob-num js-line-number" data-line-number="321"></td>
        <td id="LC321" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L322" class="blob-num js-line-number" data-line-number="322"></td>
        <td id="LC322" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L323" class="blob-num js-line-number" data-line-number="323"></td>
        <td id="LC323" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L324" class="blob-num js-line-number" data-line-number="324"></td>
        <td id="LC324" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-footnote-separator</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textsuperscript{,}<span class="pl-cce">\\</span>,<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L325" class="blob-num js-line-number" data-line-number="325"></td>
        <td id="LC325" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Text used to separate footnotes.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L326" class="blob-num js-line-number" data-line-number="326"></td>
        <td id="LC326" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L327" class="blob-num js-line-number" data-line-number="327"></td>
        <td id="LC327" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L328" class="blob-num js-line-number" data-line-number="328"></td>
        <td id="LC328" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L329" class="blob-num js-line-number" data-line-number="329"></td>
        <td id="LC329" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L330" class="blob-num js-line-number" data-line-number="330"></td>
        <td id="LC330" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-quotes</span></td>
      </tr>
      <tr>
        <td id="L331" class="blob-num js-line-number" data-line-number="331"></td>
        <td id="LC331" class="blob-code blob-code-inner js-file-line">  &#39;((<span class="pl-s"><span class="pl-pds">&quot;</span>fr<span class="pl-pds">&quot;</span></span> (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>s-<span class="pl-cce">\\</span>|[[(]<span class="pl-cce">\\</span>)<span class="pl-cce">\&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span>«~<span class="pl-pds">&quot;</span></span>) (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>S-<span class="pl-cce">\\</span>)<span class="pl-cce">\&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span>~»<span class="pl-pds">&quot;</span></span>) (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>s-<span class="pl-cce">\\</span>|(<span class="pl-cce">\\</span>)&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L332" class="blob-num js-line-number" data-line-number="332"></td>
        <td id="LC332" class="blob-code blob-code-inner js-file-line">    (<span class="pl-s"><span class="pl-pds">&quot;</span>en<span class="pl-pds">&quot;</span></span> (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>s-<span class="pl-cce">\\</span>|[[(]<span class="pl-cce">\\</span>)<span class="pl-cce">\&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span>``<span class="pl-pds">&quot;</span></span>) (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>S-<span class="pl-cce">\\</span>)<span class="pl-cce">\&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span>&#39;&#39;<span class="pl-pds">&quot;</span></span>) (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>s-<span class="pl-cce">\\</span>|(<span class="pl-cce">\\</span>)&#39;<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span>`<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L333" class="blob-num js-line-number" data-line-number="333"></td>
        <td id="LC333" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Alist for quotes to use when converting english double-quotes.</span></td>
      </tr>
      <tr>
        <td id="L334" class="blob-num js-line-number" data-line-number="334"></td>
        <td id="LC334" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L335" class="blob-num js-line-number" data-line-number="335"></td>
        <td id="LC335" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The CAR of each item in this alist is the language code.</span></td>
      </tr>
      <tr>
        <td id="L336" class="blob-num js-line-number" data-line-number="336"></td>
        <td id="LC336" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The CDR of each item in this alist is a list of three CONS:</span></td>
      </tr>
      <tr>
        <td id="L337" class="blob-num js-line-number" data-line-number="337"></td>
        <td id="LC337" class="blob-code blob-code-inner js-file-line"><span class="pl-s">- the first CONS defines the opening quote;</span></td>
      </tr>
      <tr>
        <td id="L338" class="blob-num js-line-number" data-line-number="338"></td>
        <td id="LC338" class="blob-code blob-code-inner js-file-line"><span class="pl-s">- the second CONS defines the closing quote;</span></td>
      </tr>
      <tr>
        <td id="L339" class="blob-num js-line-number" data-line-number="339"></td>
        <td id="LC339" class="blob-code blob-code-inner js-file-line"><span class="pl-s">- the last CONS defines single quotes.</span></td>
      </tr>
      <tr>
        <td id="L340" class="blob-num js-line-number" data-line-number="340"></td>
        <td id="LC340" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L341" class="blob-num js-line-number" data-line-number="341"></td>
        <td id="LC341" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For each item in a CONS, the first string is a regexp</span></td>
      </tr>
      <tr>
        <td id="L342" class="blob-num js-line-number" data-line-number="342"></td>
        <td id="LC342" class="blob-code blob-code-inner js-file-line"><span class="pl-s">for allowed characters before/after the quote, the second</span></td>
      </tr>
      <tr>
        <td id="L343" class="blob-num js-line-number" data-line-number="343"></td>
        <td id="LC343" class="blob-code blob-code-inner js-file-line"><span class="pl-s">string defines the replacement string for this quote.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L344" class="blob-num js-line-number" data-line-number="344"></td>
        <td id="LC344" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L345" class="blob-num js-line-number" data-line-number="345"></td>
        <td id="LC345" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L346" class="blob-num js-line-number" data-line-number="346"></td>
        <td id="LC346" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(<span class="pl-k">list</span></td>
      </tr>
      <tr>
        <td id="L347" class="blob-num js-line-number" data-line-number="347"></td>
        <td id="LC347" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">cons</span> <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Opening quote<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L348" class="blob-num js-line-number" data-line-number="348"></td>
        <td id="LC348" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Regexp for char before<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L349" class="blob-num js-line-number" data-line-number="349"></td>
        <td id="LC349" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Replacement quote     <span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L350" class="blob-num js-line-number" data-line-number="350"></td>
        <td id="LC350" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">cons</span> <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Closing quote<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L351" class="blob-num js-line-number" data-line-number="351"></td>
        <td id="LC351" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Regexp for char after <span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L352" class="blob-num js-line-number" data-line-number="352"></td>
        <td id="LC352" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Replacement quote     <span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L353" class="blob-num js-line-number" data-line-number="353"></td>
        <td id="LC353" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">cons</span> <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Single quote<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L354" class="blob-num js-line-number" data-line-number="354"></td>
        <td id="LC354" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Regexp for char before<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L355" class="blob-num js-line-number" data-line-number="355"></td>
        <td id="LC355" class="blob-code blob-code-inner js-file-line">		(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Replacement quote     <span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L356" class="blob-num js-line-number" data-line-number="356"></td>
        <td id="LC356" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L357" class="blob-num js-line-number" data-line-number="357"></td>
        <td id="LC357" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-tables-verbatim</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L358" class="blob-num js-line-number" data-line-number="358"></td>
        <td id="LC358" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>When non-nil, tables are exported verbatim.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L359" class="blob-num js-line-number" data-line-number="359"></td>
        <td id="LC359" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L360" class="blob-num js-line-number" data-line-number="360"></td>
        <td id="LC360" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;boolean</span>)</td>
      </tr>
      <tr>
        <td id="L361" class="blob-num js-line-number" data-line-number="361"></td>
        <td id="LC361" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L362" class="blob-num js-line-number" data-line-number="362"></td>
        <td id="LC362" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-tables-centered</span> <span class="pl-c1">t</span></td>
      </tr>
      <tr>
        <td id="L363" class="blob-num js-line-number" data-line-number="363"></td>
        <td id="LC363" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>When non-nil, tables are exported in a center environment.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L364" class="blob-num js-line-number" data-line-number="364"></td>
        <td id="LC364" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L365" class="blob-num js-line-number" data-line-number="365"></td>
        <td id="LC365" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;boolean</span>)</td>
      </tr>
      <tr>
        <td id="L366" class="blob-num js-line-number" data-line-number="366"></td>
        <td id="LC366" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L367" class="blob-num js-line-number" data-line-number="367"></td>
        <td id="LC367" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-table-caption-above</span> <span class="pl-c1">t</span></td>
      </tr>
      <tr>
        <td id="L368" class="blob-num js-line-number" data-line-number="368"></td>
        <td id="LC368" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>When non-nil, the caption is set above the table.  When nil,</span></td>
      </tr>
      <tr>
        <td id="L369" class="blob-num js-line-number" data-line-number="369"></td>
        <td id="LC369" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the caption is set below the table.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L370" class="blob-num js-line-number" data-line-number="370"></td>
        <td id="LC370" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L371" class="blob-num js-line-number" data-line-number="371"></td>
        <td id="LC371" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L372" class="blob-num js-line-number" data-line-number="372"></td>
        <td id="LC372" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;boolean</span>)</td>
      </tr>
      <tr>
        <td id="L373" class="blob-num js-line-number" data-line-number="373"></td>
        <td id="LC373" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L374" class="blob-num js-line-number" data-line-number="374"></td>
        <td id="LC374" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-tables-column-borders</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L375" class="blob-num js-line-number" data-line-number="375"></td>
        <td id="LC375" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>When non-nil, grouping columns can cause outer vertical lines in tables.</span></td>
      </tr>
      <tr>
        <td id="L376" class="blob-num js-line-number" data-line-number="376"></td>
        <td id="LC376" class="blob-code blob-code-inner js-file-line"><span class="pl-s">When nil, grouping causes only separation lines between groups.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L377" class="blob-num js-line-number" data-line-number="377"></td>
        <td id="LC377" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L378" class="blob-num js-line-number" data-line-number="378"></td>
        <td id="LC378" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;boolean</span>)</td>
      </tr>
      <tr>
        <td id="L379" class="blob-num js-line-number" data-line-number="379"></td>
        <td id="LC379" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L380" class="blob-num js-line-number" data-line-number="380"></td>
        <td id="LC380" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-tables-tstart</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L381" class="blob-num js-line-number" data-line-number="381"></td>
        <td id="LC381" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX command for top rule for tables.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L382" class="blob-num js-line-number" data-line-number="382"></td>
        <td id="LC382" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L383" class="blob-num js-line-number" data-line-number="383"></td>
        <td id="LC383" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L384" class="blob-num js-line-number" data-line-number="384"></td>
        <td id="LC384" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(choice</td>
      </tr>
      <tr>
        <td id="L385" class="blob-num js-line-number" data-line-number="385"></td>
        <td id="LC385" class="blob-code blob-code-inner js-file-line">          (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Nothing<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L386" class="blob-num js-line-number" data-line-number="386"></td>
        <td id="LC386" class="blob-code blob-code-inner js-file-line">          (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>String<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L387" class="blob-num js-line-number" data-line-number="387"></td>
        <td id="LC387" class="blob-code blob-code-inner js-file-line">          (const  <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Booktabs default: <span class="pl-cce">\\</span>toprule<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>toprule<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L388" class="blob-num js-line-number" data-line-number="388"></td>
        <td id="LC388" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L389" class="blob-num js-line-number" data-line-number="389"></td>
        <td id="LC389" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-tables-hline</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hline<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L390" class="blob-num js-line-number" data-line-number="390"></td>
        <td id="LC390" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX command to use for a rule somewhere in the middle of a table.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L391" class="blob-num js-line-number" data-line-number="391"></td>
        <td id="LC391" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L392" class="blob-num js-line-number" data-line-number="392"></td>
        <td id="LC392" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L393" class="blob-num js-line-number" data-line-number="393"></td>
        <td id="LC393" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(choice</td>
      </tr>
      <tr>
        <td id="L394" class="blob-num js-line-number" data-line-number="394"></td>
        <td id="LC394" class="blob-code blob-code-inner js-file-line">          (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>String<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L395" class="blob-num js-line-number" data-line-number="395"></td>
        <td id="LC395" class="blob-code blob-code-inner js-file-line">          (const  <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Standard: <span class="pl-cce">\\</span>hline<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hline<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L396" class="blob-num js-line-number" data-line-number="396"></td>
        <td id="LC396" class="blob-code blob-code-inner js-file-line">          (const  <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Booktabs default: <span class="pl-cce">\\</span>midrule<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>midrule<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L397" class="blob-num js-line-number" data-line-number="397"></td>
        <td id="LC397" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L398" class="blob-num js-line-number" data-line-number="398"></td>
        <td id="LC398" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-tables-tend</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L399" class="blob-num js-line-number" data-line-number="399"></td>
        <td id="LC399" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX command for bottom rule for tables.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L400" class="blob-num js-line-number" data-line-number="400"></td>
        <td id="LC400" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L401" class="blob-num js-line-number" data-line-number="401"></td>
        <td id="LC401" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L402" class="blob-num js-line-number" data-line-number="402"></td>
        <td id="LC402" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(choice</td>
      </tr>
      <tr>
        <td id="L403" class="blob-num js-line-number" data-line-number="403"></td>
        <td id="LC403" class="blob-code blob-code-inner js-file-line">          (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Nothing<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L404" class="blob-num js-line-number" data-line-number="404"></td>
        <td id="LC404" class="blob-code blob-code-inner js-file-line">          (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>String<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L405" class="blob-num js-line-number" data-line-number="405"></td>
        <td id="LC405" class="blob-code blob-code-inner js-file-line">          (const  <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Booktabs default: <span class="pl-cce">\\</span>bottomrule<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>bottomrule<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L406" class="blob-num js-line-number" data-line-number="406"></td>
        <td id="LC406" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L407" class="blob-num js-line-number" data-line-number="407"></td>
        <td id="LC407" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-low-levels</span> <span class="pl-c1">&#39;itemize</span></td>
      </tr>
      <tr>
        <td id="L408" class="blob-num js-line-number" data-line-number="408"></td>
        <td id="LC408" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>How to convert sections below the current level of sectioning.</span></td>
      </tr>
      <tr>
        <td id="L409" class="blob-num js-line-number" data-line-number="409"></td>
        <td id="LC409" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This is specified by the `org-export-headline-levels&#39; option or the</span></td>
      </tr>
      <tr>
        <td id="L410" class="blob-num js-line-number" data-line-number="410"></td>
        <td id="LC410" class="blob-code blob-code-inner js-file-line"><span class="pl-s">value of <span class="pl-cce">\&quot;</span>H:<span class="pl-cce">\&quot;</span> in Org&#39;s #+OPTION line.</span></td>
      </tr>
      <tr>
        <td id="L411" class="blob-num js-line-number" data-line-number="411"></td>
        <td id="LC411" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L412" class="blob-num js-line-number" data-line-number="412"></td>
        <td id="LC412" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This can be either nil (skip the sections), `description&#39;, `itemize&#39;,</span></td>
      </tr>
      <tr>
        <td id="L413" class="blob-num js-line-number" data-line-number="413"></td>
        <td id="LC413" class="blob-code blob-code-inner js-file-line"><span class="pl-s">or `enumerate&#39; (convert the sections as the corresponding list type), or</span></td>
      </tr>
      <tr>
        <td id="L414" class="blob-num js-line-number" data-line-number="414"></td>
        <td id="LC414" class="blob-code blob-code-inner js-file-line"><span class="pl-s">a string to be used instead of <span class="pl-cce">\\</span>section{%s}.  In this latter case,</span></td>
      </tr>
      <tr>
        <td id="L415" class="blob-num js-line-number" data-line-number="415"></td>
        <td id="LC415" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the %s stands here for the inserted headline and is mandatory.</span></td>
      </tr>
      <tr>
        <td id="L416" class="blob-num js-line-number" data-line-number="416"></td>
        <td id="LC416" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L417" class="blob-num js-line-number" data-line-number="417"></td>
        <td id="LC417" class="blob-code blob-code-inner js-file-line"><span class="pl-s">It may also be a list of three string to define a user-defined environment</span></td>
      </tr>
      <tr>
        <td id="L418" class="blob-num js-line-number" data-line-number="418"></td>
        <td id="LC418" class="blob-code blob-code-inner js-file-line"><span class="pl-s">that should be used.  The first string should be the like</span></td>
      </tr>
      <tr>
        <td id="L419" class="blob-num js-line-number" data-line-number="419"></td>
        <td id="LC419" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\&quot;\\</span>begin{itemize}<span class="pl-cce">\&quot;</span>, the second should be like <span class="pl-cce">\&quot;\\</span>item %s %s<span class="pl-cce">\&quot;</span> with up</span></td>
      </tr>
      <tr>
        <td id="L420" class="blob-num js-line-number" data-line-number="420"></td>
        <td id="LC420" class="blob-code blob-code-inner js-file-line"><span class="pl-s">to two occurrences of %s for the title and a label, respectively.  The third</span></td>
      </tr>
      <tr>
        <td id="L421" class="blob-num js-line-number" data-line-number="421"></td>
        <td id="LC421" class="blob-code blob-code-inner js-file-line"><span class="pl-s">string should be like <span class="pl-cce">\&quot;\\</span>end{itemize<span class="pl-cce">\&quot;</span>.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L422" class="blob-num js-line-number" data-line-number="422"></td>
        <td id="LC422" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L423" class="blob-num js-line-number" data-line-number="423"></td>
        <td id="LC423" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(choice (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Ignore<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L424" class="blob-num js-line-number" data-line-number="424"></td>
        <td id="LC424" class="blob-code blob-code-inner js-file-line">		 (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Convert as descriptive list<span class="pl-pds">&quot;</span></span> description)</td>
      </tr>
      <tr>
        <td id="L425" class="blob-num js-line-number" data-line-number="425"></td>
        <td id="LC425" class="blob-code blob-code-inner js-file-line">		 (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Convert as itemized list<span class="pl-pds">&quot;</span></span> itemize)</td>
      </tr>
      <tr>
        <td id="L426" class="blob-num js-line-number" data-line-number="426"></td>
        <td id="LC426" class="blob-code blob-code-inner js-file-line">		 (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Convert as enumerated list<span class="pl-pds">&quot;</span></span> enumerate)</td>
      </tr>
      <tr>
        <td id="L427" class="blob-num js-line-number" data-line-number="427"></td>
        <td id="LC427" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">list</span>  <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>User-defined environment<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L428" class="blob-num js-line-number" data-line-number="428"></td>
        <td id="LC428" class="blob-code blob-code-inner js-file-line">			<span class="pl-c1">:value</span> (<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{itemize}<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{itemize}<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>item %s<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L429" class="blob-num js-line-number" data-line-number="429"></td>
        <td id="LC429" class="blob-code blob-code-inner js-file-line">			(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Start<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L430" class="blob-num js-line-number" data-line-number="430"></td>
        <td id="LC430" class="blob-code blob-code-inner js-file-line">			(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>End<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L431" class="blob-num js-line-number" data-line-number="431"></td>
        <td id="LC431" class="blob-code blob-code-inner js-file-line">			(string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>item<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L432" class="blob-num js-line-number" data-line-number="432"></td>
        <td id="LC432" class="blob-code blob-code-inner js-file-line">		 (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Use a section string<span class="pl-pds">&quot;</span></span> <span class="pl-c1">:value</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>subparagraph{%s}<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L433" class="blob-num js-line-number" data-line-number="433"></td>
        <td id="LC433" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L434" class="blob-num js-line-number" data-line-number="434"></td>
        <td id="LC434" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-list-parameters</span></td>
      </tr>
      <tr>
        <td id="L435" class="blob-num js-line-number" data-line-number="435"></td>
        <td id="LC435" class="blob-code blob-code-inner js-file-line">  &#39;(<span class="pl-c1">:cbon</span> <span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-cce">\\</span>boxtimes$<span class="pl-pds">&quot;</span></span> <span class="pl-c1">:cboff</span> <span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-cce">\\</span>Box$<span class="pl-pds">&quot;</span></span> <span class="pl-c1">:cbtrans</span> <span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-cce">\\</span>boxminus$<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L436" class="blob-num js-line-number" data-line-number="436"></td>
        <td id="LC436" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Parameters for the LaTeX list exporter.</span></td>
      </tr>
      <tr>
        <td id="L437" class="blob-num js-line-number" data-line-number="437"></td>
        <td id="LC437" class="blob-code blob-code-inner js-file-line"><span class="pl-s">These parameters will be passed on to `org-list-to-latex&#39;, which in turn</span></td>
      </tr>
      <tr>
        <td id="L438" class="blob-num js-line-number" data-line-number="438"></td>
        <td id="LC438" class="blob-code blob-code-inner js-file-line"><span class="pl-s">will pass them (combined with the LaTeX default list parameters) to</span></td>
      </tr>
      <tr>
        <td id="L439" class="blob-num js-line-number" data-line-number="439"></td>
        <td id="LC439" class="blob-code blob-code-inner js-file-line"><span class="pl-s">`org-list-to-generic&#39;.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L440" class="blob-num js-line-number" data-line-number="440"></td>
        <td id="LC440" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L441" class="blob-num js-line-number" data-line-number="441"></td>
        <td id="LC441" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;plist</span>)</td>
      </tr>
      <tr>
        <td id="L442" class="blob-num js-line-number" data-line-number="442"></td>
        <td id="LC442" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L443" class="blob-num js-line-number" data-line-number="443"></td>
        <td id="LC443" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-verbatim-wrap</span></td>
      </tr>
      <tr>
        <td id="L444" class="blob-num js-line-number" data-line-number="444"></td>
        <td id="LC444" class="blob-code blob-code-inner js-file-line">  &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{verbatim}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{verbatim}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L445" class="blob-num js-line-number" data-line-number="445"></td>
        <td id="LC445" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Environment to be wrapped around a fixed-width section in LaTeX export.</span></td>
      </tr>
      <tr>
        <td id="L446" class="blob-num js-line-number" data-line-number="446"></td>
        <td id="LC446" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This is a cons with two strings, to be added before and after the</span></td>
      </tr>
      <tr>
        <td id="L447" class="blob-num js-line-number" data-line-number="447"></td>
        <td id="LC447" class="blob-code blob-code-inner js-file-line"><span class="pl-s">fixed-with text.</span></td>
      </tr>
      <tr>
        <td id="L448" class="blob-num js-line-number" data-line-number="448"></td>
        <td id="LC448" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L449" class="blob-num js-line-number" data-line-number="449"></td>
        <td id="LC449" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Defaults to <span class="pl-cce">\\</span>begin{verbatim} and <span class="pl-cce">\\</span>end{verbatim}.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L450" class="blob-num js-line-number" data-line-number="450"></td>
        <td id="LC450" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-translation</span></td>
      </tr>
      <tr>
        <td id="L451" class="blob-num js-line-number" data-line-number="451"></td>
        <td id="LC451" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L452" class="blob-num js-line-number" data-line-number="452"></td>
        <td id="LC452" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(<span class="pl-k">cons</span> (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Open<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L453" class="blob-num js-line-number" data-line-number="453"></td>
        <td id="LC453" class="blob-code blob-code-inner js-file-line">	       (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Close<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L454" class="blob-num js-line-number" data-line-number="454"></td>
        <td id="LC454" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L455" class="blob-num js-line-number" data-line-number="455"></td>
        <td id="LC455" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-listings</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L456" class="blob-num js-line-number" data-line-number="456"></td>
        <td id="LC456" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Non-nil means export source code using the listings package.</span></td>
      </tr>
      <tr>
        <td id="L457" class="blob-num js-line-number" data-line-number="457"></td>
        <td id="LC457" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This package will fontify source code, possibly even with color.</span></td>
      </tr>
      <tr>
        <td id="L458" class="blob-num js-line-number" data-line-number="458"></td>
        <td id="LC458" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If you want to use this, you also need to make LaTeX use the</span></td>
      </tr>
      <tr>
        <td id="L459" class="blob-num js-line-number" data-line-number="459"></td>
        <td id="LC459" class="blob-code blob-code-inner js-file-line"><span class="pl-s">listings package, and if you want to have color, the color</span></td>
      </tr>
      <tr>
        <td id="L460" class="blob-num js-line-number" data-line-number="460"></td>
        <td id="LC460" class="blob-code blob-code-inner js-file-line"><span class="pl-s">package.  Just add these to `org-export-latex-packages-alist&#39;,</span></td>
      </tr>
      <tr>
        <td id="L461" class="blob-num js-line-number" data-line-number="461"></td>
        <td id="LC461" class="blob-code blob-code-inner js-file-line"><span class="pl-s">for example using customize, or with something like</span></td>
      </tr>
      <tr>
        <td id="L462" class="blob-num js-line-number" data-line-number="462"></td>
        <td id="LC462" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L463" class="blob-num js-line-number" data-line-number="463"></td>
        <td id="LC463" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (require &#39;org-latex)</span></td>
      </tr>
      <tr>
        <td id="L464" class="blob-num js-line-number" data-line-number="464"></td>
        <td id="LC464" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (add-to-list &#39;org-export-latex-packages-alist &#39;(<span class="pl-cce">\&quot;\&quot;</span> <span class="pl-cce">\&quot;</span>listings<span class="pl-cce">\&quot;</span>))</span></td>
      </tr>
      <tr>
        <td id="L465" class="blob-num js-line-number" data-line-number="465"></td>
        <td id="LC465" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (add-to-list &#39;org-export-latex-packages-alist &#39;(<span class="pl-cce">\&quot;\&quot;</span> <span class="pl-cce">\&quot;</span>color<span class="pl-cce">\&quot;</span>))</span></td>
      </tr>
      <tr>
        <td id="L466" class="blob-num js-line-number" data-line-number="466"></td>
        <td id="LC466" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L467" class="blob-num js-line-number" data-line-number="467"></td>
        <td id="LC467" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Alternatively,</span></td>
      </tr>
      <tr>
        <td id="L468" class="blob-num js-line-number" data-line-number="468"></td>
        <td id="LC468" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L469" class="blob-num js-line-number" data-line-number="469"></td>
        <td id="LC469" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (setq org-export-latex-listings &#39;minted)</span></td>
      </tr>
      <tr>
        <td id="L470" class="blob-num js-line-number" data-line-number="470"></td>
        <td id="LC470" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L471" class="blob-num js-line-number" data-line-number="471"></td>
        <td id="LC471" class="blob-code blob-code-inner js-file-line"><span class="pl-s">causes source code to be exported using the minted package as</span></td>
      </tr>
      <tr>
        <td id="L472" class="blob-num js-line-number" data-line-number="472"></td>
        <td id="LC472" class="blob-code blob-code-inner js-file-line"><span class="pl-s">opposed to listings.  If you want to use minted, you need to add</span></td>
      </tr>
      <tr>
        <td id="L473" class="blob-num js-line-number" data-line-number="473"></td>
        <td id="LC473" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the minted package to `org-export-latex-packages-alist&#39;, for</span></td>
      </tr>
      <tr>
        <td id="L474" class="blob-num js-line-number" data-line-number="474"></td>
        <td id="LC474" class="blob-code blob-code-inner js-file-line"><span class="pl-s">example using customize, or with</span></td>
      </tr>
      <tr>
        <td id="L475" class="blob-num js-line-number" data-line-number="475"></td>
        <td id="LC475" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L476" class="blob-num js-line-number" data-line-number="476"></td>
        <td id="LC476" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (require &#39;org-latex)</span></td>
      </tr>
      <tr>
        <td id="L477" class="blob-num js-line-number" data-line-number="477"></td>
        <td id="LC477" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (add-to-list &#39;org-export-latex-packages-alist &#39;(<span class="pl-cce">\&quot;\&quot;</span> <span class="pl-cce">\&quot;</span>minted<span class="pl-cce">\&quot;</span>))</span></td>
      </tr>
      <tr>
        <td id="L478" class="blob-num js-line-number" data-line-number="478"></td>
        <td id="LC478" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L479" class="blob-num js-line-number" data-line-number="479"></td>
        <td id="LC479" class="blob-code blob-code-inner js-file-line"><span class="pl-s">In addition, it is necessary to install</span></td>
      </tr>
      <tr>
        <td id="L480" class="blob-num js-line-number" data-line-number="480"></td>
        <td id="LC480" class="blob-code blob-code-inner js-file-line"><span class="pl-s">pygments (http://pygments.org), and to configure the variable</span></td>
      </tr>
      <tr>
        <td id="L481" class="blob-num js-line-number" data-line-number="481"></td>
        <td id="LC481" class="blob-code blob-code-inner js-file-line"><span class="pl-s">`org-latex-to-pdf-process&#39; so that the -shell-escape option is</span></td>
      </tr>
      <tr>
        <td id="L482" class="blob-num js-line-number" data-line-number="482"></td>
        <td id="LC482" class="blob-code blob-code-inner js-file-line"><span class="pl-s">passed to pdflatex.</span></td>
      </tr>
      <tr>
        <td id="L483" class="blob-num js-line-number" data-line-number="483"></td>
        <td id="LC483" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L484" class="blob-num js-line-number" data-line-number="484"></td>
        <td id="LC484" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L485" class="blob-num js-line-number" data-line-number="485"></td>
        <td id="LC485" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;boolean</span>)</td>
      </tr>
      <tr>
        <td id="L486" class="blob-num js-line-number" data-line-number="486"></td>
        <td id="LC486" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L487" class="blob-num js-line-number" data-line-number="487"></td>
        <td id="LC487" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-listings-langs</span></td>
      </tr>
      <tr>
        <td id="L488" class="blob-num js-line-number" data-line-number="488"></td>
        <td id="LC488" class="blob-code blob-code-inner js-file-line">  &#39;((emacs-lisp <span class="pl-s"><span class="pl-pds">&quot;</span>Lisp<span class="pl-pds">&quot;</span></span>) (lisp <span class="pl-s"><span class="pl-pds">&quot;</span>Lisp<span class="pl-pds">&quot;</span></span>) (clojure <span class="pl-s"><span class="pl-pds">&quot;</span>Lisp<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L489" class="blob-num js-line-number" data-line-number="489"></td>
        <td id="LC489" class="blob-code blob-code-inner js-file-line">    (c <span class="pl-s"><span class="pl-pds">&quot;</span>C<span class="pl-pds">&quot;</span></span>) (cc <span class="pl-s"><span class="pl-pds">&quot;</span>C++<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L490" class="blob-num js-line-number" data-line-number="490"></td>
        <td id="LC490" class="blob-code blob-code-inner js-file-line">    (fortran <span class="pl-s"><span class="pl-pds">&quot;</span>fortran<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L491" class="blob-num js-line-number" data-line-number="491"></td>
        <td id="LC491" class="blob-code blob-code-inner js-file-line">    (perl <span class="pl-s"><span class="pl-pds">&quot;</span>Perl<span class="pl-pds">&quot;</span></span>) (cperl <span class="pl-s"><span class="pl-pds">&quot;</span>Perl<span class="pl-pds">&quot;</span></span>) (python <span class="pl-s"><span class="pl-pds">&quot;</span>Python<span class="pl-pds">&quot;</span></span>) (ruby <span class="pl-s"><span class="pl-pds">&quot;</span>Ruby<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L492" class="blob-num js-line-number" data-line-number="492"></td>
        <td id="LC492" class="blob-code blob-code-inner js-file-line">    (html <span class="pl-s"><span class="pl-pds">&quot;</span>HTML<span class="pl-pds">&quot;</span></span>) (xml <span class="pl-s"><span class="pl-pds">&quot;</span>XML<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L493" class="blob-num js-line-number" data-line-number="493"></td>
        <td id="LC493" class="blob-code blob-code-inner js-file-line">    (tex <span class="pl-s"><span class="pl-pds">&quot;</span>TeX<span class="pl-pds">&quot;</span></span>) (latex <span class="pl-s"><span class="pl-pds">&quot;</span>TeX<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L494" class="blob-num js-line-number" data-line-number="494"></td>
        <td id="LC494" class="blob-code blob-code-inner js-file-line">    (shell-script <span class="pl-s"><span class="pl-pds">&quot;</span>bash<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L495" class="blob-num js-line-number" data-line-number="495"></td>
        <td id="LC495" class="blob-code blob-code-inner js-file-line">    (gnuplot <span class="pl-s"><span class="pl-pds">&quot;</span>Gnuplot<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L496" class="blob-num js-line-number" data-line-number="496"></td>
        <td id="LC496" class="blob-code blob-code-inner js-file-line">    (ocaml <span class="pl-s"><span class="pl-pds">&quot;</span>Caml<span class="pl-pds">&quot;</span></span>) (caml <span class="pl-s"><span class="pl-pds">&quot;</span>Caml<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L497" class="blob-num js-line-number" data-line-number="497"></td>
        <td id="LC497" class="blob-code blob-code-inner js-file-line">    (sql <span class="pl-s"><span class="pl-pds">&quot;</span>SQL<span class="pl-pds">&quot;</span></span>) (sqlite <span class="pl-s"><span class="pl-pds">&quot;</span>sql<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L498" class="blob-num js-line-number" data-line-number="498"></td>
        <td id="LC498" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Alist mapping languages to their listing language counterpart.</span></td>
      </tr>
      <tr>
        <td id="L499" class="blob-num js-line-number" data-line-number="499"></td>
        <td id="LC499" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The key is a symbol, the major mode symbol without the <span class="pl-cce">\&quot;</span>-mode<span class="pl-cce">\&quot;</span>.</span></td>
      </tr>
      <tr>
        <td id="L500" class="blob-num js-line-number" data-line-number="500"></td>
        <td id="LC500" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The value is the string that should be inserted as the language parameter</span></td>
      </tr>
      <tr>
        <td id="L501" class="blob-num js-line-number" data-line-number="501"></td>
        <td id="LC501" class="blob-code blob-code-inner js-file-line"><span class="pl-s">for the listings package.  If the mode name and the listings name are</span></td>
      </tr>
      <tr>
        <td id="L502" class="blob-num js-line-number" data-line-number="502"></td>
        <td id="LC502" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the same, the language does not need an entry in this list - but it does not</span></td>
      </tr>
      <tr>
        <td id="L503" class="blob-num js-line-number" data-line-number="503"></td>
        <td id="LC503" class="blob-code blob-code-inner js-file-line"><span class="pl-s">hurt if it is present.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L504" class="blob-num js-line-number" data-line-number="504"></td>
        <td id="LC504" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L505" class="blob-num js-line-number" data-line-number="505"></td>
        <td id="LC505" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(repeat</td>
      </tr>
      <tr>
        <td id="L506" class="blob-num js-line-number" data-line-number="506"></td>
        <td id="LC506" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">list</span></td>
      </tr>
      <tr>
        <td id="L507" class="blob-num js-line-number" data-line-number="507"></td>
        <td id="LC507" class="blob-code blob-code-inner js-file-line">	   (symbol <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Major mode       <span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L508" class="blob-num js-line-number" data-line-number="508"></td>
        <td id="LC508" class="blob-code blob-code-inner js-file-line">	   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Listings language<span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L509" class="blob-num js-line-number" data-line-number="509"></td>
        <td id="LC509" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L510" class="blob-num js-line-number" data-line-number="510"></td>
        <td id="LC510" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-listings-w-names</span> <span class="pl-c1">t</span></td>
      </tr>
      <tr>
        <td id="L511" class="blob-num js-line-number" data-line-number="511"></td>
        <td id="LC511" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Non-nil means export names of named code blocks.</span></td>
      </tr>
      <tr>
        <td id="L512" class="blob-num js-line-number" data-line-number="512"></td>
        <td id="LC512" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Code blocks exported with the listings package (controlled by the</span></td>
      </tr>
      <tr>
        <td id="L513" class="blob-num js-line-number" data-line-number="513"></td>
        <td id="LC513" class="blob-code blob-code-inner js-file-line"><span class="pl-s">`org-export-latex-listings&#39; variable) can be named in the style</span></td>
      </tr>
      <tr>
        <td id="L514" class="blob-num js-line-number" data-line-number="514"></td>
        <td id="LC514" class="blob-code blob-code-inner js-file-line"><span class="pl-s">of noweb.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L515" class="blob-num js-line-number" data-line-number="515"></td>
        <td id="LC515" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L516" class="blob-num js-line-number" data-line-number="516"></td>
        <td id="LC516" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L517" class="blob-num js-line-number" data-line-number="517"></td>
        <td id="LC517" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;boolean</span>)</td>
      </tr>
      <tr>
        <td id="L518" class="blob-num js-line-number" data-line-number="518"></td>
        <td id="LC518" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L519" class="blob-num js-line-number" data-line-number="519"></td>
        <td id="LC519" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-minted-langs</span></td>
      </tr>
      <tr>
        <td id="L520" class="blob-num js-line-number" data-line-number="520"></td>
        <td id="LC520" class="blob-code blob-code-inner js-file-line">  &#39;((emacs-lisp <span class="pl-s"><span class="pl-pds">&quot;</span>common-lisp<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L521" class="blob-num js-line-number" data-line-number="521"></td>
        <td id="LC521" class="blob-code blob-code-inner js-file-line">    (cc <span class="pl-s"><span class="pl-pds">&quot;</span>c++<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L522" class="blob-num js-line-number" data-line-number="522"></td>
        <td id="LC522" class="blob-code blob-code-inner js-file-line">    (cperl <span class="pl-s"><span class="pl-pds">&quot;</span>perl<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L523" class="blob-num js-line-number" data-line-number="523"></td>
        <td id="LC523" class="blob-code blob-code-inner js-file-line">    (shell-script <span class="pl-s"><span class="pl-pds">&quot;</span>bash<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L524" class="blob-num js-line-number" data-line-number="524"></td>
        <td id="LC524" class="blob-code blob-code-inner js-file-line">    (caml <span class="pl-s"><span class="pl-pds">&quot;</span>ocaml<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L525" class="blob-num js-line-number" data-line-number="525"></td>
        <td id="LC525" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Alist mapping languages to their minted language counterpart.</span></td>
      </tr>
      <tr>
        <td id="L526" class="blob-num js-line-number" data-line-number="526"></td>
        <td id="LC526" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The key is a symbol, the major mode symbol without the <span class="pl-cce">\&quot;</span>-mode<span class="pl-cce">\&quot;</span>.</span></td>
      </tr>
      <tr>
        <td id="L527" class="blob-num js-line-number" data-line-number="527"></td>
        <td id="LC527" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The value is the string that should be inserted as the language parameter</span></td>
      </tr>
      <tr>
        <td id="L528" class="blob-num js-line-number" data-line-number="528"></td>
        <td id="LC528" class="blob-code blob-code-inner js-file-line"><span class="pl-s">for the minted package.  If the mode name and the listings name are</span></td>
      </tr>
      <tr>
        <td id="L529" class="blob-num js-line-number" data-line-number="529"></td>
        <td id="LC529" class="blob-code blob-code-inner js-file-line"><span class="pl-s">the same, the language does not need an entry in this list - but it does not</span></td>
      </tr>
      <tr>
        <td id="L530" class="blob-num js-line-number" data-line-number="530"></td>
        <td id="LC530" class="blob-code blob-code-inner js-file-line"><span class="pl-s">hurt if it is present.</span></td>
      </tr>
      <tr>
        <td id="L531" class="blob-num js-line-number" data-line-number="531"></td>
        <td id="LC531" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L532" class="blob-num js-line-number" data-line-number="532"></td>
        <td id="LC532" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Note that minted uses all lower case for language identifiers,</span></td>
      </tr>
      <tr>
        <td id="L533" class="blob-num js-line-number" data-line-number="533"></td>
        <td id="LC533" class="blob-code blob-code-inner js-file-line"><span class="pl-s">and that the full list of language identifiers can be obtained</span></td>
      </tr>
      <tr>
        <td id="L534" class="blob-num js-line-number" data-line-number="534"></td>
        <td id="LC534" class="blob-code blob-code-inner js-file-line"><span class="pl-s">with:</span></td>
      </tr>
      <tr>
        <td id="L535" class="blob-num js-line-number" data-line-number="535"></td>
        <td id="LC535" class="blob-code blob-code-inner js-file-line"><span class="pl-s">pygmentize -L lexers</span></td>
      </tr>
      <tr>
        <td id="L536" class="blob-num js-line-number" data-line-number="536"></td>
        <td id="LC536" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L537" class="blob-num js-line-number" data-line-number="537"></td>
        <td id="LC537" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L538" class="blob-num js-line-number" data-line-number="538"></td>
        <td id="LC538" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L539" class="blob-num js-line-number" data-line-number="539"></td>
        <td id="LC539" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(repeat</td>
      </tr>
      <tr>
        <td id="L540" class="blob-num js-line-number" data-line-number="540"></td>
        <td id="LC540" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">list</span></td>
      </tr>
      <tr>
        <td id="L541" class="blob-num js-line-number" data-line-number="541"></td>
        <td id="LC541" class="blob-code blob-code-inner js-file-line">	   (symbol <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Major mode       <span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L542" class="blob-num js-line-number" data-line-number="542"></td>
        <td id="LC542" class="blob-code blob-code-inner js-file-line">	   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Listings language<span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L543" class="blob-num js-line-number" data-line-number="543"></td>
        <td id="LC543" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L544" class="blob-num js-line-number" data-line-number="544"></td>
        <td id="LC544" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-listings-options</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L545" class="blob-num js-line-number" data-line-number="545"></td>
        <td id="LC545" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Association list of options for the latex listings package.</span></td>
      </tr>
      <tr>
        <td id="L546" class="blob-num js-line-number" data-line-number="546"></td>
        <td id="LC546" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L547" class="blob-num js-line-number" data-line-number="547"></td>
        <td id="LC547" class="blob-code blob-code-inner js-file-line"><span class="pl-s">These options are supplied as a comma-separated list to the</span></td>
      </tr>
      <tr>
        <td id="L548" class="blob-num js-line-number" data-line-number="548"></td>
        <td id="LC548" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>lstset command. Each element of the association list should be</span></td>
      </tr>
      <tr>
        <td id="L549" class="blob-num js-line-number" data-line-number="549"></td>
        <td id="LC549" class="blob-code blob-code-inner js-file-line"><span class="pl-s">a list containing two strings: the name of the option, and the</span></td>
      </tr>
      <tr>
        <td id="L550" class="blob-num js-line-number" data-line-number="550"></td>
        <td id="LC550" class="blob-code blob-code-inner js-file-line"><span class="pl-s">value. For example,</span></td>
      </tr>
      <tr>
        <td id="L551" class="blob-num js-line-number" data-line-number="551"></td>
        <td id="LC551" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L552" class="blob-num js-line-number" data-line-number="552"></td>
        <td id="LC552" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (setq org-export-latex-listings-options</span></td>
      </tr>
      <tr>
        <td id="L553" class="blob-num js-line-number" data-line-number="553"></td>
        <td id="LC553" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    &#39;((<span class="pl-cce">\&quot;</span>basicstyle<span class="pl-cce">\&quot;</span> <span class="pl-cce">\&quot;\\</span>small<span class="pl-cce">\&quot;</span>)</span></td>
      </tr>
      <tr>
        <td id="L554" class="blob-num js-line-number" data-line-number="554"></td>
        <td id="LC554" class="blob-code blob-code-inner js-file-line"><span class="pl-s">      (<span class="pl-cce">\&quot;</span>keywordstyle<span class="pl-cce">\&quot;</span> <span class="pl-cce">\&quot;\\</span>color{black}<span class="pl-cce">\\</span>bfseries<span class="pl-cce">\\</span>underbar<span class="pl-cce">\&quot;</span>)))</span></td>
      </tr>
      <tr>
        <td id="L555" class="blob-num js-line-number" data-line-number="555"></td>
        <td id="LC555" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L556" class="blob-num js-line-number" data-line-number="556"></td>
        <td id="LC556" class="blob-code blob-code-inner js-file-line"><span class="pl-s">will typeset the code in a small size font with underlined, bold</span></td>
      </tr>
      <tr>
        <td id="L557" class="blob-num js-line-number" data-line-number="557"></td>
        <td id="LC557" class="blob-code blob-code-inner js-file-line"><span class="pl-s">black keywords.</span></td>
      </tr>
      <tr>
        <td id="L558" class="blob-num js-line-number" data-line-number="558"></td>
        <td id="LC558" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L559" class="blob-num js-line-number" data-line-number="559"></td>
        <td id="LC559" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Note that the same options will be applied to blocks of all</span></td>
      </tr>
      <tr>
        <td id="L560" class="blob-num js-line-number" data-line-number="560"></td>
        <td id="LC560" class="blob-code blob-code-inner js-file-line"><span class="pl-s">languages.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L561" class="blob-num js-line-number" data-line-number="561"></td>
        <td id="LC561" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L562" class="blob-num js-line-number" data-line-number="562"></td>
        <td id="LC562" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L563" class="blob-num js-line-number" data-line-number="563"></td>
        <td id="LC563" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(repeat</td>
      </tr>
      <tr>
        <td id="L564" class="blob-num js-line-number" data-line-number="564"></td>
        <td id="LC564" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">list</span></td>
      </tr>
      <tr>
        <td id="L565" class="blob-num js-line-number" data-line-number="565"></td>
        <td id="LC565" class="blob-code blob-code-inner js-file-line">	   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Listings option name <span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L566" class="blob-num js-line-number" data-line-number="566"></td>
        <td id="LC566" class="blob-code blob-code-inner js-file-line">	   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Listings option value<span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L567" class="blob-num js-line-number" data-line-number="567"></td>
        <td id="LC567" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L568" class="blob-num js-line-number" data-line-number="568"></td>
        <td id="LC568" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-minted-options</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L569" class="blob-num js-line-number" data-line-number="569"></td>
        <td id="LC569" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Association list of options for the latex minted package.</span></td>
      </tr>
      <tr>
        <td id="L570" class="blob-num js-line-number" data-line-number="570"></td>
        <td id="LC570" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L571" class="blob-num js-line-number" data-line-number="571"></td>
        <td id="LC571" class="blob-code blob-code-inner js-file-line"><span class="pl-s">These options are supplied within square brackets in</span></td>
      </tr>
      <tr>
        <td id="L572" class="blob-num js-line-number" data-line-number="572"></td>
        <td id="LC572" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>begin{minted} environments. Each element of the alist should be</span></td>
      </tr>
      <tr>
        <td id="L573" class="blob-num js-line-number" data-line-number="573"></td>
        <td id="LC573" class="blob-code blob-code-inner js-file-line"><span class="pl-s">a list containing two strings: the name of the option, and the</span></td>
      </tr>
      <tr>
        <td id="L574" class="blob-num js-line-number" data-line-number="574"></td>
        <td id="LC574" class="blob-code blob-code-inner js-file-line"><span class="pl-s">value. For example,</span></td>
      </tr>
      <tr>
        <td id="L575" class="blob-num js-line-number" data-line-number="575"></td>
        <td id="LC575" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L576" class="blob-num js-line-number" data-line-number="576"></td>
        <td id="LC576" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (setq org-export-latex-minted-options</span></td>
      </tr>
      <tr>
        <td id="L577" class="blob-num js-line-number" data-line-number="577"></td>
        <td id="LC577" class="blob-code blob-code-inner js-file-line"><span class="pl-s">    &#39;((<span class="pl-cce">\&quot;</span>bgcolor<span class="pl-cce">\&quot;</span> <span class="pl-cce">\&quot;</span>bg<span class="pl-cce">\&quot;</span>) (<span class="pl-cce">\&quot;</span>frame<span class="pl-cce">\&quot;</span> <span class="pl-cce">\&quot;</span>lines<span class="pl-cce">\&quot;</span>)))</span></td>
      </tr>
      <tr>
        <td id="L578" class="blob-num js-line-number" data-line-number="578"></td>
        <td id="LC578" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L579" class="blob-num js-line-number" data-line-number="579"></td>
        <td id="LC579" class="blob-code blob-code-inner js-file-line"><span class="pl-s">will result in src blocks being exported with</span></td>
      </tr>
      <tr>
        <td id="L580" class="blob-num js-line-number" data-line-number="580"></td>
        <td id="LC580" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L581" class="blob-num js-line-number" data-line-number="581"></td>
        <td id="LC581" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>begin{minted}[bgcolor=bg,frame=lines]{&lt;LANG&gt;}</span></td>
      </tr>
      <tr>
        <td id="L582" class="blob-num js-line-number" data-line-number="582"></td>
        <td id="LC582" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L583" class="blob-num js-line-number" data-line-number="583"></td>
        <td id="LC583" class="blob-code blob-code-inner js-file-line"><span class="pl-s">as the start of the minted environment. Note that the same</span></td>
      </tr>
      <tr>
        <td id="L584" class="blob-num js-line-number" data-line-number="584"></td>
        <td id="LC584" class="blob-code blob-code-inner js-file-line"><span class="pl-s">options will be applied to blocks of all languages.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L585" class="blob-num js-line-number" data-line-number="585"></td>
        <td id="LC585" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L586" class="blob-num js-line-number" data-line-number="586"></td>
        <td id="LC586" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L587" class="blob-num js-line-number" data-line-number="587"></td>
        <td id="LC587" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(repeat</td>
      </tr>
      <tr>
        <td id="L588" class="blob-num js-line-number" data-line-number="588"></td>
        <td id="LC588" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">list</span></td>
      </tr>
      <tr>
        <td id="L589" class="blob-num js-line-number" data-line-number="589"></td>
        <td id="LC589" class="blob-code blob-code-inner js-file-line">	   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Minted option name <span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L590" class="blob-num js-line-number" data-line-number="590"></td>
        <td id="LC590" class="blob-code blob-code-inner js-file-line">	   (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Minted option value<span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L591" class="blob-num js-line-number" data-line-number="591"></td>
        <td id="LC591" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L592" class="blob-num js-line-number" data-line-number="592"></td>
        <td id="LC592" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-custom-lang-environments</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L593" class="blob-num js-line-number" data-line-number="593"></td>
        <td id="LC593" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Association list mapping languages to language-specific latex</span></td>
      </tr>
      <tr>
        <td id="L594" class="blob-num js-line-number" data-line-number="594"></td>
        <td id="LC594" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  environments used during export of src blocks by the listings</span></td>
      </tr>
      <tr>
        <td id="L595" class="blob-num js-line-number" data-line-number="595"></td>
        <td id="LC595" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  and minted latex packages. For example,</span></td>
      </tr>
      <tr>
        <td id="L596" class="blob-num js-line-number" data-line-number="596"></td>
        <td id="LC596" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L597" class="blob-num js-line-number" data-line-number="597"></td>
        <td id="LC597" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (setq org-export-latex-custom-lang-environments</span></td>
      </tr>
      <tr>
        <td id="L598" class="blob-num js-line-number" data-line-number="598"></td>
        <td id="LC598" class="blob-code blob-code-inner js-file-line"><span class="pl-s">     &#39;((python <span class="pl-cce">\&quot;</span>pythoncode<span class="pl-cce">\&quot;</span>)))</span></td>
      </tr>
      <tr>
        <td id="L599" class="blob-num js-line-number" data-line-number="599"></td>
        <td id="LC599" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L600" class="blob-num js-line-number" data-line-number="600"></td>
        <td id="LC600" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  would have the effect that if org encounters begin_src python</span></td>
      </tr>
      <tr>
        <td id="L601" class="blob-num js-line-number" data-line-number="601"></td>
        <td id="LC601" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  during latex export it will output</span></td>
      </tr>
      <tr>
        <td id="L602" class="blob-num js-line-number" data-line-number="602"></td>
        <td id="LC602" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L603" class="blob-num js-line-number" data-line-number="603"></td>
        <td id="LC603" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  <span class="pl-cce">\\</span>begin{pythoncode}</span></td>
      </tr>
      <tr>
        <td id="L604" class="blob-num js-line-number" data-line-number="604"></td>
        <td id="LC604" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  &lt;src block body&gt;</span></td>
      </tr>
      <tr>
        <td id="L605" class="blob-num js-line-number" data-line-number="605"></td>
        <td id="LC605" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  <span class="pl-cce">\\</span>end{pythoncode}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L606" class="blob-num js-line-number" data-line-number="606"></td>
        <td id="LC606" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L607" class="blob-num js-line-number" data-line-number="607"></td>
        <td id="LC607" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-remove-from-headlines</span></td>
      </tr>
      <tr>
        <td id="L608" class="blob-num js-line-number" data-line-number="608"></td>
        <td id="LC608" class="blob-code blob-code-inner js-file-line">  &#39;(<span class="pl-c1">:todo</span> <span class="pl-c1">nil</span> <span class="pl-c1">:priority</span> <span class="pl-c1">nil</span> <span class="pl-c1">:tags</span> <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L609" class="blob-num js-line-number" data-line-number="609"></td>
        <td id="LC609" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>A plist of keywords to remove from headlines.  OBSOLETE.</span></td>
      </tr>
      <tr>
        <td id="L610" class="blob-num js-line-number" data-line-number="610"></td>
        <td id="LC610" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Non-nil means remove this keyword type from the headline.</span></td>
      </tr>
      <tr>
        <td id="L611" class="blob-num js-line-number" data-line-number="611"></td>
        <td id="LC611" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L612" class="blob-num js-line-number" data-line-number="612"></td>
        <td id="LC612" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Don&#39;t remove the keys, just change their values.</span></td>
      </tr>
      <tr>
        <td id="L613" class="blob-num js-line-number" data-line-number="613"></td>
        <td id="LC613" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L614" class="blob-num js-line-number" data-line-number="614"></td>
        <td id="LC614" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Obsolete, this variable is no longer used.  Use the separate</span></td>
      </tr>
      <tr>
        <td id="L615" class="blob-num js-line-number" data-line-number="615"></td>
        <td id="LC615" class="blob-code blob-code-inner js-file-line"><span class="pl-s">variables `org-export-with-todo-keywords&#39;, `org-export-with-priority&#39;,</span></td>
      </tr>
      <tr>
        <td id="L616" class="blob-num js-line-number" data-line-number="616"></td>
        <td id="LC616" class="blob-code blob-code-inner js-file-line"><span class="pl-s">and `org-export-with-tags&#39; instead.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L617" class="blob-num js-line-number" data-line-number="617"></td>
        <td id="LC617" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;plist</span></td>
      </tr>
      <tr>
        <td id="L618" class="blob-num js-line-number" data-line-number="618"></td>
        <td id="LC618" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span>)</td>
      </tr>
      <tr>
        <td id="L619" class="blob-num js-line-number" data-line-number="619"></td>
        <td id="LC619" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L620" class="blob-num js-line-number" data-line-number="620"></td>
        <td id="LC620" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-image-default-option</span> <span class="pl-s"><span class="pl-pds">&quot;</span>width=.9<span class="pl-cce">\\</span>linewidth<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L621" class="blob-num js-line-number" data-line-number="621"></td>
        <td id="LC621" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Default option for images.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L622" class="blob-num js-line-number" data-line-number="622"></td>
        <td id="LC622" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L623" class="blob-num js-line-number" data-line-number="623"></td>
        <td id="LC623" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L624" class="blob-num js-line-number" data-line-number="624"></td>
        <td id="LC624" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L625" class="blob-num js-line-number" data-line-number="625"></td>
        <td id="LC625" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-latex-default-figure-position</span> <span class="pl-s"><span class="pl-pds">&quot;</span>htb<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L626" class="blob-num js-line-number" data-line-number="626"></td>
        <td id="LC626" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Default position for latex figures.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L627" class="blob-num js-line-number" data-line-number="627"></td>
        <td id="LC627" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L628" class="blob-num js-line-number" data-line-number="628"></td>
        <td id="LC628" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L629" class="blob-num js-line-number" data-line-number="629"></td>
        <td id="LC629" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L630" class="blob-num js-line-number" data-line-number="630"></td>
        <td id="LC630" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L631" class="blob-num js-line-number" data-line-number="631"></td>
        <td id="LC631" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-tabular-environment</span> <span class="pl-s"><span class="pl-pds">&quot;</span>tabular<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L632" class="blob-num js-line-number" data-line-number="632"></td>
        <td id="LC632" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Default environment used to build tables.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L633" class="blob-num js-line-number" data-line-number="633"></td>
        <td id="LC633" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L634" class="blob-num js-line-number" data-line-number="634"></td>
        <td id="LC634" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L635" class="blob-num js-line-number" data-line-number="635"></td>
        <td id="LC635" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L636" class="blob-num js-line-number" data-line-number="636"></td>
        <td id="LC636" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L637" class="blob-num js-line-number" data-line-number="637"></td>
        <td id="LC637" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-link-with-unknown-path-format</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>texttt{%s}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L638" class="blob-num js-line-number" data-line-number="638"></td>
        <td id="LC638" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Format string for links with unknown path type.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L639" class="blob-num js-line-number" data-line-number="639"></td>
        <td id="LC639" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L640" class="blob-num js-line-number" data-line-number="640"></td>
        <td id="LC640" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.2<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L641" class="blob-num js-line-number" data-line-number="641"></td>
        <td id="LC641" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L642" class="blob-num js-line-number" data-line-number="642"></td>
        <td id="LC642" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L643" class="blob-num js-line-number" data-line-number="643"></td>
        <td id="LC643" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-inline-image-extensions</span></td>
      </tr>
      <tr>
        <td id="L644" class="blob-num js-line-number" data-line-number="644"></td>
        <td id="LC644" class="blob-code blob-code-inner js-file-line">  &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>pdf<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>jpeg<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>jpg<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>png<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>ps<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>eps<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L645" class="blob-num js-line-number" data-line-number="645"></td>
        <td id="LC645" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Extensions of image files that can be inlined into LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L646" class="blob-num js-line-number" data-line-number="646"></td>
        <td id="LC646" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Note that the image extension *actually* allowed depend on the way the</span></td>
      </tr>
      <tr>
        <td id="L647" class="blob-num js-line-number" data-line-number="647"></td>
        <td id="LC647" class="blob-code blob-code-inner js-file-line"><span class="pl-s">LaTeX file is processed.  When used with pdflatex, pdf, jpg and png images</span></td>
      </tr>
      <tr>
        <td id="L648" class="blob-num js-line-number" data-line-number="648"></td>
        <td id="LC648" class="blob-code blob-code-inner js-file-line"><span class="pl-s">are OK.  When processing through dvi to Postscript, only ps and eps are</span></td>
      </tr>
      <tr>
        <td id="L649" class="blob-num js-line-number" data-line-number="649"></td>
        <td id="LC649" class="blob-code blob-code-inner js-file-line"><span class="pl-s">allowed.  The default we use here encompasses both.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L650" class="blob-num js-line-number" data-line-number="650"></td>
        <td id="LC650" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L651" class="blob-num js-line-number" data-line-number="651"></td>
        <td id="LC651" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(repeat (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Extension<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L652" class="blob-num js-line-number" data-line-number="652"></td>
        <td id="LC652" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L653" class="blob-num js-line-number" data-line-number="653"></td>
        <td id="LC653" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-latex-coding-system</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L654" class="blob-num js-line-number" data-line-number="654"></td>
        <td id="LC654" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Coding system for the exported LaTeX file.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L655" class="blob-num js-line-number" data-line-number="655"></td>
        <td id="LC655" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L656" class="blob-num js-line-number" data-line-number="656"></td>
        <td id="LC656" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;coding-system</span>)</td>
      </tr>
      <tr>
        <td id="L657" class="blob-num js-line-number" data-line-number="657"></td>
        <td id="LC657" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L658" class="blob-num js-line-number" data-line-number="658"></td>
        <td id="LC658" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defgroup</span> <span class="pl-en">org-export-pdf</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L659" class="blob-num js-line-number" data-line-number="659"></td>
        <td id="LC659" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Options for exporting Org-mode files to PDF, via LaTeX.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L660" class="blob-num js-line-number" data-line-number="660"></td>
        <td id="LC660" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Org Export PDF<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L661" class="blob-num js-line-number" data-line-number="661"></td>
        <td id="LC661" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-latex</span></td>
      </tr>
      <tr>
        <td id="L662" class="blob-num js-line-number" data-line-number="662"></td>
        <td id="LC662" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export</span>)</td>
      </tr>
      <tr>
        <td id="L663" class="blob-num js-line-number" data-line-number="663"></td>
        <td id="LC663" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L664" class="blob-num js-line-number" data-line-number="664"></td>
        <td id="LC664" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-latex-to-pdf-process</span></td>
      </tr>
      <tr>
        <td id="L665" class="blob-num js-line-number" data-line-number="665"></td>
        <td id="LC665" class="blob-code blob-code-inner js-file-line">  &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L666" class="blob-num js-line-number" data-line-number="666"></td>
        <td id="LC666" class="blob-code blob-code-inner js-file-line">    <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L667" class="blob-num js-line-number" data-line-number="667"></td>
        <td id="LC667" class="blob-code blob-code-inner js-file-line">    <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L668" class="blob-num js-line-number" data-line-number="668"></td>
        <td id="LC668" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Commands to process a LaTeX file to a PDF file and process latex</span></td>
      </tr>
      <tr>
        <td id="L669" class="blob-num js-line-number" data-line-number="669"></td>
        <td id="LC669" class="blob-code blob-code-inner js-file-line"><span class="pl-s">fragments to pdf files.By default,this is a list of strings,and each of</span></td>
      </tr>
      <tr>
        <td id="L670" class="blob-num js-line-number" data-line-number="670"></td>
        <td id="LC670" class="blob-code blob-code-inner js-file-line"><span class="pl-s">strings will be given to the shell as a command. %f in the command will</span></td>
      </tr>
      <tr>
        <td id="L671" class="blob-num js-line-number" data-line-number="671"></td>
        <td id="LC671" class="blob-code blob-code-inner js-file-line"><span class="pl-s">be replaced by the full file name, %b by the file base name (i.e. without</span></td>
      </tr>
      <tr>
        <td id="L672" class="blob-num js-line-number" data-line-number="672"></td>
        <td id="LC672" class="blob-code blob-code-inner js-file-line"><span class="pl-s">extension) and %o by the base directory of the file.</span></td>
      </tr>
      <tr>
        <td id="L673" class="blob-num js-line-number" data-line-number="673"></td>
        <td id="LC673" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L674" class="blob-num js-line-number" data-line-number="674"></td>
        <td id="LC674" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If you set `org-create-formula-image-program&#39;</span></td>
      </tr>
      <tr>
        <td id="L675" class="blob-num js-line-number" data-line-number="675"></td>
        <td id="LC675" class="blob-code blob-code-inner js-file-line"><span class="pl-s">`org-export-with-LaTeX-fragments&#39; to &#39;imagemagick, you can add a</span></td>
      </tr>
      <tr>
        <td id="L676" class="blob-num js-line-number" data-line-number="676"></td>
        <td id="LC676" class="blob-code blob-code-inner js-file-line"><span class="pl-s">sublist which contains your own command(s) for LaTeX fragments</span></td>
      </tr>
      <tr>
        <td id="L677" class="blob-num js-line-number" data-line-number="677"></td>
        <td id="LC677" class="blob-code blob-code-inner js-file-line"><span class="pl-s">previewing, like this:</span></td>
      </tr>
      <tr>
        <td id="L678" class="blob-num js-line-number" data-line-number="678"></td>
        <td id="LC678" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L679" class="blob-num js-line-number" data-line-number="679"></td>
        <td id="LC679" class="blob-code blob-code-inner js-file-line"><span class="pl-s">   &#39;(<span class="pl-cce">\&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-cce">\&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L680" class="blob-num js-line-number" data-line-number="680"></td>
        <td id="LC680" class="blob-code blob-code-inner js-file-line"><span class="pl-s">     <span class="pl-cce">\&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-cce">\&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L681" class="blob-num js-line-number" data-line-number="681"></td>
        <td id="LC681" class="blob-code blob-code-inner js-file-line"><span class="pl-s">     ;; use below command(s) to convert latex fragments</span></td>
      </tr>
      <tr>
        <td id="L682" class="blob-num js-line-number" data-line-number="682"></td>
        <td id="LC682" class="blob-code blob-code-inner js-file-line"><span class="pl-s">     (<span class="pl-cce">\&quot;</span>xelatex %f<span class="pl-cce">\&quot;</span>))</span></td>
      </tr>
      <tr>
        <td id="L683" class="blob-num js-line-number" data-line-number="683"></td>
        <td id="LC683" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L684" class="blob-num js-line-number" data-line-number="684"></td>
        <td id="LC684" class="blob-code blob-code-inner js-file-line"><span class="pl-s">With no such sublist, the default command used to convert LaTeX</span></td>
      </tr>
      <tr>
        <td id="L685" class="blob-num js-line-number" data-line-number="685"></td>
        <td id="LC685" class="blob-code blob-code-inner js-file-line"><span class="pl-s">fragments will be the first string in the list.</span></td>
      </tr>
      <tr>
        <td id="L686" class="blob-num js-line-number" data-line-number="686"></td>
        <td id="LC686" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L687" class="blob-num js-line-number" data-line-number="687"></td>
        <td id="LC687" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The reason why this is a list is that it usually takes several runs of</span></td>
      </tr>
      <tr>
        <td id="L688" class="blob-num js-line-number" data-line-number="688"></td>
        <td id="LC688" class="blob-code blob-code-inner js-file-line"><span class="pl-s">`pdflatex&#39;, maybe mixed with a call to `bibtex&#39;.  Org does not have a clever</span></td>
      </tr>
      <tr>
        <td id="L689" class="blob-num js-line-number" data-line-number="689"></td>
        <td id="LC689" class="blob-code blob-code-inner js-file-line"><span class="pl-s">mechanism to detect which of these commands have to be run to get to a stable</span></td>
      </tr>
      <tr>
        <td id="L690" class="blob-num js-line-number" data-line-number="690"></td>
        <td id="LC690" class="blob-code blob-code-inner js-file-line"><span class="pl-s">result, and it also does not do any error checking.</span></td>
      </tr>
      <tr>
        <td id="L691" class="blob-num js-line-number" data-line-number="691"></td>
        <td id="LC691" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L692" class="blob-num js-line-number" data-line-number="692"></td>
        <td id="LC692" class="blob-code blob-code-inner js-file-line"><span class="pl-s">By default, Org uses 3 runs of `pdflatex&#39; to do the processing.  If you</span></td>
      </tr>
      <tr>
        <td id="L693" class="blob-num js-line-number" data-line-number="693"></td>
        <td id="LC693" class="blob-code blob-code-inner js-file-line"><span class="pl-s">have texi2dvi on your system and if that does not cause the infamous</span></td>
      </tr>
      <tr>
        <td id="L694" class="blob-num js-line-number" data-line-number="694"></td>
        <td id="LC694" class="blob-code blob-code-inner js-file-line"><span class="pl-s">egrep/locale bug:</span></td>
      </tr>
      <tr>
        <td id="L695" class="blob-num js-line-number" data-line-number="695"></td>
        <td id="LC695" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L696" class="blob-num js-line-number" data-line-number="696"></td>
        <td id="LC696" class="blob-code blob-code-inner js-file-line"><span class="pl-s">     http://lists.gnu.org/archive/html/bug-texinfo/2010-03/msg00031.html</span></td>
      </tr>
      <tr>
        <td id="L697" class="blob-num js-line-number" data-line-number="697"></td>
        <td id="LC697" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L698" class="blob-num js-line-number" data-line-number="698"></td>
        <td id="LC698" class="blob-code blob-code-inner js-file-line"><span class="pl-s">then `texi2dvi&#39; is the superior choice.  Org does offer it as one</span></td>
      </tr>
      <tr>
        <td id="L699" class="blob-num js-line-number" data-line-number="699"></td>
        <td id="LC699" class="blob-code blob-code-inner js-file-line"><span class="pl-s">of the customize options.</span></td>
      </tr>
      <tr>
        <td id="L700" class="blob-num js-line-number" data-line-number="700"></td>
        <td id="LC700" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L701" class="blob-num js-line-number" data-line-number="701"></td>
        <td id="LC701" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Alternatively, this may be a Lisp function that does the processing, so you</span></td>
      </tr>
      <tr>
        <td id="L702" class="blob-num js-line-number" data-line-number="702"></td>
        <td id="LC702" class="blob-code blob-code-inner js-file-line"><span class="pl-s">could use this to apply the machinery of AUCTeX or the Emacs LaTeX mode.</span></td>
      </tr>
      <tr>
        <td id="L703" class="blob-num js-line-number" data-line-number="703"></td>
        <td id="LC703" class="blob-code blob-code-inner js-file-line"><span class="pl-s">This function should accept the file name as its single argument.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L704" class="blob-num js-line-number" data-line-number="704"></td>
        <td id="LC704" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-pdf</span></td>
      </tr>
      <tr>
        <td id="L705" class="blob-num js-line-number" data-line-number="705"></td>
        <td id="LC705" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(choice</td>
      </tr>
      <tr>
        <td id="L706" class="blob-num js-line-number" data-line-number="706"></td>
        <td id="LC706" class="blob-code blob-code-inner js-file-line">	  (repeat <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Shell command sequence<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L707" class="blob-num js-line-number" data-line-number="707"></td>
        <td id="LC707" class="blob-code blob-code-inner js-file-line">		  (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Shell command<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L708" class="blob-num js-line-number" data-line-number="708"></td>
        <td id="LC708" class="blob-code blob-code-inner js-file-line">	  (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>2 runs of pdflatex<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L709" class="blob-num js-line-number" data-line-number="709"></td>
        <td id="LC709" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L710" class="blob-num js-line-number" data-line-number="710"></td>
        <td id="LC710" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L711" class="blob-num js-line-number" data-line-number="711"></td>
        <td id="LC711" class="blob-code blob-code-inner js-file-line">	  (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>3 runs of pdflatex<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L712" class="blob-num js-line-number" data-line-number="712"></td>
        <td id="LC712" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L713" class="blob-num js-line-number" data-line-number="713"></td>
        <td id="LC713" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L714" class="blob-num js-line-number" data-line-number="714"></td>
        <td id="LC714" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L715" class="blob-num js-line-number" data-line-number="715"></td>
        <td id="LC715" class="blob-code blob-code-inner js-file-line">	  (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex,bibtex,pdflatex,pdflatex<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L716" class="blob-num js-line-number" data-line-number="716"></td>
        <td id="LC716" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L717" class="blob-num js-line-number" data-line-number="717"></td>
        <td id="LC717" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>bibtex %b<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L718" class="blob-num js-line-number" data-line-number="718"></td>
        <td id="LC718" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L719" class="blob-num js-line-number" data-line-number="719"></td>
        <td id="LC719" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L720" class="blob-num js-line-number" data-line-number="720"></td>
        <td id="LC720" class="blob-code blob-code-inner js-file-line">	  (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>2 runs of xelatex<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L721" class="blob-num js-line-number" data-line-number="721"></td>
        <td id="LC721" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-s"><span class="pl-pds">&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L722" class="blob-num js-line-number" data-line-number="722"></td>
        <td id="LC722" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L723" class="blob-num js-line-number" data-line-number="723"></td>
        <td id="LC723" class="blob-code blob-code-inner js-file-line">	  (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>3 runs of xelatex<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L724" class="blob-num js-line-number" data-line-number="724"></td>
        <td id="LC724" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-s"><span class="pl-pds">&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L725" class="blob-num js-line-number" data-line-number="725"></td>
        <td id="LC725" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L726" class="blob-num js-line-number" data-line-number="726"></td>
        <td id="LC726" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L727" class="blob-num js-line-number" data-line-number="727"></td>
        <td id="LC727" class="blob-code blob-code-inner js-file-line">	  (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>xelatex,bibtex,xelatex,xelatex<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L728" class="blob-num js-line-number" data-line-number="728"></td>
        <td id="LC728" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-s"><span class="pl-pds">&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L729" class="blob-num js-line-number" data-line-number="729"></td>
        <td id="LC729" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>bibtex %b<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L730" class="blob-num js-line-number" data-line-number="730"></td>
        <td id="LC730" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L731" class="blob-num js-line-number" data-line-number="731"></td>
        <td id="LC731" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span>xelatex -interaction nonstopmode -output-directory %o %f<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L732" class="blob-num js-line-number" data-line-number="732"></td>
        <td id="LC732" class="blob-code blob-code-inner js-file-line">	  (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>texi2dvi<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L733" class="blob-num js-line-number" data-line-number="733"></td>
        <td id="LC733" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-s"><span class="pl-pds">&quot;</span>texi2dvi -p -b -c -V %f<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L734" class="blob-num js-line-number" data-line-number="734"></td>
        <td id="LC734" class="blob-code blob-code-inner js-file-line">	  (const <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>rubber<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L735" class="blob-num js-line-number" data-line-number="735"></td>
        <td id="LC735" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-s"><span class="pl-pds">&quot;</span>rubber -d --into %o %f<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L736" class="blob-num js-line-number" data-line-number="736"></td>
        <td id="LC736" class="blob-code blob-code-inner js-file-line">	  (function)))</td>
      </tr>
      <tr>
        <td id="L737" class="blob-num js-line-number" data-line-number="737"></td>
        <td id="LC737" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L738" class="blob-num js-line-number" data-line-number="738"></td>
        <td id="LC738" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-pdf-logfiles</span></td>
      </tr>
      <tr>
        <td id="L739" class="blob-num js-line-number" data-line-number="739"></td>
        <td id="LC739" class="blob-code blob-code-inner js-file-line">  &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>aux<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>idx<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>log<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>out<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>toc<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>nav<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>snm<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>vrb<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L740" class="blob-num js-line-number" data-line-number="740"></td>
        <td id="LC740" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The list of file extensions to consider as LaTeX logfiles.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L741" class="blob-num js-line-number" data-line-number="741"></td>
        <td id="LC741" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-pdf</span></td>
      </tr>
      <tr>
        <td id="L742" class="blob-num js-line-number" data-line-number="742"></td>
        <td id="LC742" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:version</span> <span class="pl-s"><span class="pl-pds">&quot;</span>24.1<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L743" class="blob-num js-line-number" data-line-number="743"></td>
        <td id="LC743" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> &#39;(repeat (string <span class="pl-c1">:tag</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Extension<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L744" class="blob-num js-line-number" data-line-number="744"></td>
        <td id="LC744" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L745" class="blob-num js-line-number" data-line-number="745"></td>
        <td id="LC745" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defcustom</span> <span class="pl-en">org-export-pdf-remove-logfiles</span> <span class="pl-c1">t</span></td>
      </tr>
      <tr>
        <td id="L746" class="blob-num js-line-number" data-line-number="746"></td>
        <td id="LC746" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Non-nil means remove the logfiles produced by PDF production.</span></td>
      </tr>
      <tr>
        <td id="L747" class="blob-num js-line-number" data-line-number="747"></td>
        <td id="LC747" class="blob-code blob-code-inner js-file-line"><span class="pl-s">These are the .aux, .log, .out, and .toc files.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L748" class="blob-num js-line-number" data-line-number="748"></td>
        <td id="LC748" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:group</span> <span class="pl-c1">&#39;org-export-pdf</span></td>
      </tr>
      <tr>
        <td id="L749" class="blob-num js-line-number" data-line-number="749"></td>
        <td id="LC749" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">:type</span> <span class="pl-c1">&#39;boolean</span>)</td>
      </tr>
      <tr>
        <td id="L750" class="blob-num js-line-number" data-line-number="750"></td>
        <td id="LC750" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L751" class="blob-num js-line-number" data-line-number="751"></td>
        <td id="LC751" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Hooks</span></td>
      </tr>
      <tr>
        <td id="L752" class="blob-num js-line-number" data-line-number="752"></td>
        <td id="LC752" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L753" class="blob-num js-line-number" data-line-number="753"></td>
        <td id="LC753" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-after-initial-vars-hook</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L754" class="blob-num js-line-number" data-line-number="754"></td>
        <td id="LC754" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Hook run before LaTeX export.</span></td>
      </tr>
      <tr>
        <td id="L755" class="blob-num js-line-number" data-line-number="755"></td>
        <td id="LC755" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The exact moment is after the initial variables like org-export-latex-class</span></td>
      </tr>
      <tr>
        <td id="L756" class="blob-num js-line-number" data-line-number="756"></td>
        <td id="LC756" class="blob-code blob-code-inner js-file-line"><span class="pl-s">have been determined from the environment.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L757" class="blob-num js-line-number" data-line-number="757"></td>
        <td id="LC757" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L758" class="blob-num js-line-number" data-line-number="758"></td>
        <td id="LC758" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-after-blockquotes-hook</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L759" class="blob-num js-line-number" data-line-number="759"></td>
        <td id="LC759" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Hook run during LaTeX export, after blockquote, verse, center are done.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L760" class="blob-num js-line-number" data-line-number="760"></td>
        <td id="LC760" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L761" class="blob-num js-line-number" data-line-number="761"></td>
        <td id="LC761" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-final-hook</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L762" class="blob-num js-line-number" data-line-number="762"></td>
        <td id="LC762" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Hook run in the finalized LaTeX buffer.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L763" class="blob-num js-line-number" data-line-number="763"></td>
        <td id="LC763" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L764" class="blob-num js-line-number" data-line-number="764"></td>
        <td id="LC764" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-after-save-hook</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L765" class="blob-num js-line-number" data-line-number="765"></td>
        <td id="LC765" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Hook run in the finalized LaTeX buffer, after it has been saved.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L766" class="blob-num js-line-number" data-line-number="766"></td>
        <td id="LC766" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L767" class="blob-num js-line-number" data-line-number="767"></td>
        <td id="LC767" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Autoload functions:</span></td>
      </tr>
      <tr>
        <td id="L768" class="blob-num js-line-number" data-line-number="768"></td>
        <td id="LC768" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L769" class="blob-num js-line-number" data-line-number="769"></td>
        <td id="LC769" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L770" class="blob-num js-line-number" data-line-number="770"></td>
        <td id="LC770" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-as-latex-batch</span> ()</td>
      </tr>
      <tr>
        <td id="L771" class="blob-num js-line-number" data-line-number="771"></td>
        <td id="LC771" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Call `org-export-as-latex&#39;, may be used in batch processing.</span></td>
      </tr>
      <tr>
        <td id="L772" class="blob-num js-line-number" data-line-number="772"></td>
        <td id="LC772" class="blob-code blob-code-inner js-file-line"><span class="pl-s">For example:</span></td>
      </tr>
      <tr>
        <td id="L773" class="blob-num js-line-number" data-line-number="773"></td>
        <td id="LC773" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L774" class="blob-num js-line-number" data-line-number="774"></td>
        <td id="LC774" class="blob-code blob-code-inner js-file-line"><span class="pl-s">emacs   --batch</span></td>
      </tr>
      <tr>
        <td id="L775" class="blob-num js-line-number" data-line-number="775"></td>
        <td id="LC775" class="blob-code blob-code-inner js-file-line"><span class="pl-s">        --load=$HOME/lib/emacs/org.el</span></td>
      </tr>
      <tr>
        <td id="L776" class="blob-num js-line-number" data-line-number="776"></td>
        <td id="LC776" class="blob-code blob-code-inner js-file-line"><span class="pl-s">        --eval <span class="pl-cce">\&quot;</span>(setq org-export-headline-levels 2)<span class="pl-cce">\&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L777" class="blob-num js-line-number" data-line-number="777"></td>
        <td id="LC777" class="blob-code blob-code-inner js-file-line"><span class="pl-s">        --visit=MyFile --funcall org-export-as-latex-batch<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L778" class="blob-num js-line-number" data-line-number="778"></td>
        <td id="LC778" class="blob-code blob-code-inner js-file-line">  (org-export-as-latex org-export-headline-levels <span class="pl-c1">&#39;hidden</span>))</td>
      </tr>
      <tr>
        <td id="L779" class="blob-num js-line-number" data-line-number="779"></td>
        <td id="LC779" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L780" class="blob-num js-line-number" data-line-number="780"></td>
        <td id="LC780" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L781" class="blob-num js-line-number" data-line-number="781"></td>
        <td id="LC781" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-as-latex-to-buffer</span> (<span class="pl-v">arg</span>)</td>
      </tr>
      <tr>
        <td id="L782" class="blob-num js-line-number" data-line-number="782"></td>
        <td id="LC782" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Call `org-export-as-latex` with output to a temporary buffer.</span></td>
      </tr>
      <tr>
        <td id="L783" class="blob-num js-line-number" data-line-number="783"></td>
        <td id="LC783" class="blob-code blob-code-inner js-file-line"><span class="pl-s">No file is created.  The prefix ARG is passed through to `org-export-as-latex&#39;.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L784" class="blob-num js-line-number" data-line-number="784"></td>
        <td id="LC784" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">interactive</span> <span class="pl-s"><span class="pl-pds">&quot;</span>P<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L785" class="blob-num js-line-number" data-line-number="785"></td>
        <td id="LC785" class="blob-code blob-code-inner js-file-line">  (org-export-as-latex arg <span class="pl-c1">nil</span> <span class="pl-c1">nil</span> <span class="pl-s"><span class="pl-pds">&quot;</span>*Org LaTeX Export*<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L786" class="blob-num js-line-number" data-line-number="786"></td>
        <td id="LC786" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">when</span> org-export-show-temporary-export-buffer</td>
      </tr>
      <tr>
        <td id="L787" class="blob-num js-line-number" data-line-number="787"></td>
        <td id="LC787" class="blob-code blob-code-inner js-file-line">    (switch-to-buffer-other-window <span class="pl-s"><span class="pl-pds">&quot;</span>*Org LaTeX Export*<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L788" class="blob-num js-line-number" data-line-number="788"></td>
        <td id="LC788" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L789" class="blob-num js-line-number" data-line-number="789"></td>
        <td id="LC789" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L790" class="blob-num js-line-number" data-line-number="790"></td>
        <td id="LC790" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-replace-region-by-latex</span> (<span class="pl-v">beg</span> <span class="pl-v">end</span>)</td>
      </tr>
      <tr>
        <td id="L791" class="blob-num js-line-number" data-line-number="791"></td>
        <td id="LC791" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Replace the region from BEG to END with its LaTeX export.</span></td>
      </tr>
      <tr>
        <td id="L792" class="blob-num js-line-number" data-line-number="792"></td>
        <td id="LC792" class="blob-code blob-code-inner js-file-line"><span class="pl-s">It assumes the region has `org-mode&#39; syntax, and then convert it to</span></td>
      </tr>
      <tr>
        <td id="L793" class="blob-num js-line-number" data-line-number="793"></td>
        <td id="LC793" class="blob-code blob-code-inner js-file-line"><span class="pl-s">LaTeX.  This can be used in any buffer.  For example, you could</span></td>
      </tr>
      <tr>
        <td id="L794" class="blob-num js-line-number" data-line-number="794"></td>
        <td id="LC794" class="blob-code blob-code-inner js-file-line"><span class="pl-s">write an itemized list in `org-mode&#39; syntax in an LaTeX buffer and</span></td>
      </tr>
      <tr>
        <td id="L795" class="blob-num js-line-number" data-line-number="795"></td>
        <td id="LC795" class="blob-code blob-code-inner js-file-line"><span class="pl-s">then use this command to convert it.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L796" class="blob-num js-line-number" data-line-number="796"></td>
        <td id="LC796" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">interactive</span> <span class="pl-s"><span class="pl-pds">&quot;</span>r<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L797" class="blob-num js-line-number" data-line-number="797"></td>
        <td id="LC797" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> (reg latex buf)</td>
      </tr>
      <tr>
        <td id="L798" class="blob-num js-line-number" data-line-number="798"></td>
        <td id="LC798" class="blob-code blob-code-inner js-file-line">    (save-window-excursion</td>
      </tr>
      <tr>
        <td id="L799" class="blob-num js-line-number" data-line-number="799"></td>
        <td id="LC799" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (derived-mode-p <span class="pl-c1">&#39;org-mode</span>)</td>
      </tr>
      <tr>
        <td id="L800" class="blob-num js-line-number" data-line-number="800"></td>
        <td id="LC800" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> latex (org-export-region-as-latex</td>
      </tr>
      <tr>
        <td id="L801" class="blob-num js-line-number" data-line-number="801"></td>
        <td id="LC801" class="blob-code blob-code-inner js-file-line">		       beg end <span class="pl-c1">t</span> <span class="pl-c1">&#39;string</span>))</td>
      </tr>
      <tr>
        <td id="L802" class="blob-num js-line-number" data-line-number="802"></td>
        <td id="LC802" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> reg (buffer-substring beg end)</td>
      </tr>
      <tr>
        <td id="L803" class="blob-num js-line-number" data-line-number="803"></td>
        <td id="LC803" class="blob-code blob-code-inner js-file-line">	      buf (get-buffer-create <span class="pl-s"><span class="pl-pds">&quot;</span>*Org tmp*<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L804" class="blob-num js-line-number" data-line-number="804"></td>
        <td id="LC804" class="blob-code blob-code-inner js-file-line">	(with-current-buffer buf</td>
      </tr>
      <tr>
        <td id="L805" class="blob-num js-line-number" data-line-number="805"></td>
        <td id="LC805" class="blob-code blob-code-inner js-file-line">	  (erase-buffer)</td>
      </tr>
      <tr>
        <td id="L806" class="blob-num js-line-number" data-line-number="806"></td>
        <td id="LC806" class="blob-code blob-code-inner js-file-line">	  (insert reg)</td>
      </tr>
      <tr>
        <td id="L807" class="blob-num js-line-number" data-line-number="807"></td>
        <td id="LC807" class="blob-code blob-code-inner js-file-line">	  (org-mode)</td>
      </tr>
      <tr>
        <td id="L808" class="blob-num js-line-number" data-line-number="808"></td>
        <td id="LC808" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> latex (org-export-region-as-latex</td>
      </tr>
      <tr>
        <td id="L809" class="blob-num js-line-number" data-line-number="809"></td>
        <td id="LC809" class="blob-code blob-code-inner js-file-line">		       (point-min) (point-max) <span class="pl-c1">t</span> <span class="pl-c1">&#39;string</span>)))</td>
      </tr>
      <tr>
        <td id="L810" class="blob-num js-line-number" data-line-number="810"></td>
        <td id="LC810" class="blob-code blob-code-inner js-file-line">	(kill-buffer buf)))</td>
      </tr>
      <tr>
        <td id="L811" class="blob-num js-line-number" data-line-number="811"></td>
        <td id="LC811" class="blob-code blob-code-inner js-file-line">    (delete-region beg end)</td>
      </tr>
      <tr>
        <td id="L812" class="blob-num js-line-number" data-line-number="812"></td>
        <td id="LC812" class="blob-code blob-code-inner js-file-line">    (insert latex)))</td>
      </tr>
      <tr>
        <td id="L813" class="blob-num js-line-number" data-line-number="813"></td>
        <td id="LC813" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L814" class="blob-num js-line-number" data-line-number="814"></td>
        <td id="LC814" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L815" class="blob-num js-line-number" data-line-number="815"></td>
        <td id="LC815" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-region-as-latex</span> (<span class="pl-v">beg</span> <span class="pl-v">end</span> <span class="pl-c1">&amp;optional</span> <span class="pl-v">body-only</span> <span class="pl-v">buffer</span>)</td>
      </tr>
      <tr>
        <td id="L816" class="blob-num js-line-number" data-line-number="816"></td>
        <td id="LC816" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert region from BEG to END in `org-mode&#39; buffer to LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L817" class="blob-num js-line-number" data-line-number="817"></td>
        <td id="LC817" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If prefix arg BODY-ONLY is set, omit file header, footer, and table of</span></td>
      </tr>
      <tr>
        <td id="L818" class="blob-num js-line-number" data-line-number="818"></td>
        <td id="LC818" class="blob-code blob-code-inner js-file-line"><span class="pl-s">contents, and only produce the region of converted text, useful for</span></td>
      </tr>
      <tr>
        <td id="L819" class="blob-num js-line-number" data-line-number="819"></td>
        <td id="LC819" class="blob-code blob-code-inner js-file-line"><span class="pl-s">cut-and-paste operations.</span></td>
      </tr>
      <tr>
        <td id="L820" class="blob-num js-line-number" data-line-number="820"></td>
        <td id="LC820" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If BUFFER is a buffer or a string, use/create that buffer as a target</span></td>
      </tr>
      <tr>
        <td id="L821" class="blob-num js-line-number" data-line-number="821"></td>
        <td id="LC821" class="blob-code blob-code-inner js-file-line"><span class="pl-s">of the converted LaTeX.  If BUFFER is the symbol `string&#39;, return the</span></td>
      </tr>
      <tr>
        <td id="L822" class="blob-num js-line-number" data-line-number="822"></td>
        <td id="LC822" class="blob-code blob-code-inner js-file-line"><span class="pl-s">produced LaTeX as a string and leave no buffer behind.  For example,</span></td>
      </tr>
      <tr>
        <td id="L823" class="blob-num js-line-number" data-line-number="823"></td>
        <td id="LC823" class="blob-code blob-code-inner js-file-line"><span class="pl-s">a Lisp program could call this function in the following way:</span></td>
      </tr>
      <tr>
        <td id="L824" class="blob-num js-line-number" data-line-number="824"></td>
        <td id="LC824" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L825" class="blob-num js-line-number" data-line-number="825"></td>
        <td id="LC825" class="blob-code blob-code-inner js-file-line"><span class="pl-s">  (setq latex (org-export-region-as-latex beg end t &#39;string))</span></td>
      </tr>
      <tr>
        <td id="L826" class="blob-num js-line-number" data-line-number="826"></td>
        <td id="LC826" class="blob-code blob-code-inner js-file-line"><span class="pl-s"></span></td>
      </tr>
      <tr>
        <td id="L827" class="blob-num js-line-number" data-line-number="827"></td>
        <td id="LC827" class="blob-code blob-code-inner js-file-line"><span class="pl-s">When called interactively, the output buffer is selected, and shown</span></td>
      </tr>
      <tr>
        <td id="L828" class="blob-num js-line-number" data-line-number="828"></td>
        <td id="LC828" class="blob-code blob-code-inner js-file-line"><span class="pl-s">in a window.  A non-interactive call will only return the buffer.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L829" class="blob-num js-line-number" data-line-number="829"></td>
        <td id="LC829" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">interactive</span> <span class="pl-s"><span class="pl-pds">&quot;</span>r<span class="pl-cce">\n</span>P<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L830" class="blob-num js-line-number" data-line-number="830"></td>
        <td id="LC830" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">when</span> (org-called-interactively-p <span class="pl-c1">&#39;any</span>)</td>
      </tr>
      <tr>
        <td id="L831" class="blob-num js-line-number" data-line-number="831"></td>
        <td id="LC831" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> buffer <span class="pl-s"><span class="pl-pds">&quot;</span>*Org LaTeX Export*<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L832" class="blob-num js-line-number" data-line-number="832"></td>
        <td id="LC832" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((transient-mark-mode <span class="pl-c1">t</span>) (zmacs-regions <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L833" class="blob-num js-line-number" data-line-number="833"></td>
        <td id="LC833" class="blob-code blob-code-inner js-file-line">	ext-plist rtn)</td>
      </tr>
      <tr>
        <td id="L834" class="blob-num js-line-number" data-line-number="834"></td>
        <td id="LC834" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> ext-plist (plist-put ext-plist <span class="pl-c1">:ignore-subtree-p</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L835" class="blob-num js-line-number" data-line-number="835"></td>
        <td id="LC835" class="blob-code blob-code-inner js-file-line">    (goto-char end)</td>
      </tr>
      <tr>
        <td id="L836" class="blob-num js-line-number" data-line-number="836"></td>
        <td id="LC836" class="blob-code blob-code-inner js-file-line">    (set-mark (point)) <span class="pl-c">;; to activate the region</span></td>
      </tr>
      <tr>
        <td id="L837" class="blob-num js-line-number" data-line-number="837"></td>
        <td id="LC837" class="blob-code blob-code-inner js-file-line">    (goto-char beg)</td>
      </tr>
      <tr>
        <td id="L838" class="blob-num js-line-number" data-line-number="838"></td>
        <td id="LC838" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> rtn (org-export-as-latex</td>
      </tr>
      <tr>
        <td id="L839" class="blob-num js-line-number" data-line-number="839"></td>
        <td id="LC839" class="blob-code blob-code-inner js-file-line">	       <span class="pl-c1">nil</span> <span class="pl-c1">nil</span> ext-plist</td>
      </tr>
      <tr>
        <td id="L840" class="blob-num js-line-number" data-line-number="840"></td>
        <td id="LC840" class="blob-code blob-code-inner js-file-line">	       buffer body-only))</td>
      </tr>
      <tr>
        <td id="L841" class="blob-num js-line-number" data-line-number="841"></td>
        <td id="LC841" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> (fboundp <span class="pl-c1">&#39;deactivate-mark</span>) (deactivate-mark))</td>
      </tr>
      <tr>
        <td id="L842" class="blob-num js-line-number" data-line-number="842"></td>
        <td id="LC842" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> (<span class="pl-k">and</span> (org-called-interactively-p <span class="pl-c1">&#39;any</span>) (bufferp rtn))</td>
      </tr>
      <tr>
        <td id="L843" class="blob-num js-line-number" data-line-number="843"></td>
        <td id="LC843" class="blob-code blob-code-inner js-file-line">	(switch-to-buffer-other-window rtn)</td>
      </tr>
      <tr>
        <td id="L844" class="blob-num js-line-number" data-line-number="844"></td>
        <td id="LC844" class="blob-code blob-code-inner js-file-line">      rtn)))</td>
      </tr>
      <tr>
        <td id="L845" class="blob-num js-line-number" data-line-number="845"></td>
        <td id="LC845" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L846" class="blob-num js-line-number" data-line-number="846"></td>
        <td id="LC846" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L847" class="blob-num js-line-number" data-line-number="847"></td>
        <td id="LC847" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-as-latex</span> (<span class="pl-v">arg</span> <span class="pl-c1">&amp;optional</span> <span class="pl-v">hidden</span> <span class="pl-v">ext-plist</span></td>
      </tr>
      <tr>
        <td id="L848" class="blob-num js-line-number" data-line-number="848"></td>
        <td id="LC848" class="blob-code blob-code-inner js-file-line">				<span class="pl-v">to-buffer</span> <span class="pl-v">body-only</span> <span class="pl-v">pub-dir</span>)</td>
      </tr>
      <tr>
        <td id="L849" class="blob-num js-line-number" data-line-number="849"></td>
        <td id="LC849" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export current buffer to a LaTeX file.</span></td>
      </tr>
      <tr>
        <td id="L850" class="blob-num js-line-number" data-line-number="850"></td>
        <td id="LC850" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If there is an active region, export only the region.  The prefix</span></td>
      </tr>
      <tr>
        <td id="L851" class="blob-num js-line-number" data-line-number="851"></td>
        <td id="LC851" class="blob-code blob-code-inner js-file-line"><span class="pl-s">ARG specifies how many levels of the outline should become</span></td>
      </tr>
      <tr>
        <td id="L852" class="blob-num js-line-number" data-line-number="852"></td>
        <td id="LC852" class="blob-code blob-code-inner js-file-line"><span class="pl-s">headlines.  The default is 3.  Lower levels will be exported</span></td>
      </tr>
      <tr>
        <td id="L853" class="blob-num js-line-number" data-line-number="853"></td>
        <td id="LC853" class="blob-code blob-code-inner js-file-line"><span class="pl-s">depending on `org-export-latex-low-levels&#39;.  The default is to</span></td>
      </tr>
      <tr>
        <td id="L854" class="blob-num js-line-number" data-line-number="854"></td>
        <td id="LC854" class="blob-code blob-code-inner js-file-line"><span class="pl-s">convert them as description lists.</span></td>
      </tr>
      <tr>
        <td id="L855" class="blob-num js-line-number" data-line-number="855"></td>
        <td id="LC855" class="blob-code blob-code-inner js-file-line"><span class="pl-s">HIDDEN is obsolete and does nothing.</span></td>
      </tr>
      <tr>
        <td id="L856" class="blob-num js-line-number" data-line-number="856"></td>
        <td id="LC856" class="blob-code blob-code-inner js-file-line"><span class="pl-s">EXT-PLIST is a property list with</span></td>
      </tr>
      <tr>
        <td id="L857" class="blob-num js-line-number" data-line-number="857"></td>
        <td id="LC857" class="blob-code blob-code-inner js-file-line"><span class="pl-s">external parameters overriding org-mode&#39;s default settings, but</span></td>
      </tr>
      <tr>
        <td id="L858" class="blob-num js-line-number" data-line-number="858"></td>
        <td id="LC858" class="blob-code blob-code-inner js-file-line"><span class="pl-s">still inferior to file-local settings.  When TO-BUFFER is</span></td>
      </tr>
      <tr>
        <td id="L859" class="blob-num js-line-number" data-line-number="859"></td>
        <td id="LC859" class="blob-code blob-code-inner js-file-line"><span class="pl-s">non-nil, create a buffer with that name and export to that</span></td>
      </tr>
      <tr>
        <td id="L860" class="blob-num js-line-number" data-line-number="860"></td>
        <td id="LC860" class="blob-code blob-code-inner js-file-line"><span class="pl-s">buffer.  If TO-BUFFER is the symbol `string&#39;, don&#39;t leave any</span></td>
      </tr>
      <tr>
        <td id="L861" class="blob-num js-line-number" data-line-number="861"></td>
        <td id="LC861" class="blob-code blob-code-inner js-file-line"><span class="pl-s">buffer behind but just return the resulting LaTeX as a string.</span></td>
      </tr>
      <tr>
        <td id="L862" class="blob-num js-line-number" data-line-number="862"></td>
        <td id="LC862" class="blob-code blob-code-inner js-file-line"><span class="pl-s">When BODY-ONLY is set, don&#39;t produce the file header and footer,</span></td>
      </tr>
      <tr>
        <td id="L863" class="blob-num js-line-number" data-line-number="863"></td>
        <td id="LC863" class="blob-code blob-code-inner js-file-line"><span class="pl-s">simply return the content of <span class="pl-cce">\\</span>begin{document}...<span class="pl-cce">\\</span>end{document},</span></td>
      </tr>
      <tr>
        <td id="L864" class="blob-num js-line-number" data-line-number="864"></td>
        <td id="LC864" class="blob-code blob-code-inner js-file-line"><span class="pl-s">without even the <span class="pl-cce">\\</span>begin{document} and <span class="pl-cce">\\</span>end{document} commands.</span></td>
      </tr>
      <tr>
        <td id="L865" class="blob-num js-line-number" data-line-number="865"></td>
        <td id="LC865" class="blob-code blob-code-inner js-file-line"><span class="pl-s">when PUB-DIR is set, use this as the publishing directory.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L866" class="blob-num js-line-number" data-line-number="866"></td>
        <td id="LC866" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">interactive</span> <span class="pl-s"><span class="pl-pds">&quot;</span>P<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L867" class="blob-num js-line-number" data-line-number="867"></td>
        <td id="LC867" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">when</span> (<span class="pl-k">and</span> (<span class="pl-k">not</span> body-only) arg (<span class="pl-k">listp</span> arg)) (<span class="pl-k">setq</span> body-only <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L868" class="blob-num js-line-number" data-line-number="868"></td>
        <td id="LC868" class="blob-code blob-code-inner js-file-line">  (run-hooks <span class="pl-c1">&#39;org-export-first-hook</span>)</td>
      </tr>
      <tr>
        <td id="L869" class="blob-num js-line-number" data-line-number="869"></td>
        <td id="LC869" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L870" class="blob-num js-line-number" data-line-number="870"></td>
        <td id="LC870" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Make sure we have a file name when we need it.</span></td>
      </tr>
      <tr>
        <td id="L871" class="blob-num js-line-number" data-line-number="871"></td>
        <td id="LC871" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">when</span> (<span class="pl-k">and</span> (<span class="pl-k">not</span> (<span class="pl-k">or</span> to-buffer body-only))</td>
      </tr>
      <tr>
        <td id="L872" class="blob-num js-line-number" data-line-number="872"></td>
        <td id="LC872" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">not</span> buffer-file-name))</td>
      </tr>
      <tr>
        <td id="L873" class="blob-num js-line-number" data-line-number="873"></td>
        <td id="LC873" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> (buffer-base-buffer)</td>
      </tr>
      <tr>
        <td id="L874" class="blob-num js-line-number" data-line-number="874"></td>
        <td id="LC874" class="blob-code blob-code-inner js-file-line">	(org-set-local <span class="pl-c1">&#39;buffer-file-name</span></td>
      </tr>
      <tr>
        <td id="L875" class="blob-num js-line-number" data-line-number="875"></td>
        <td id="LC875" class="blob-code blob-code-inner js-file-line">		       (with-current-buffer (buffer-base-buffer)</td>
      </tr>
      <tr>
        <td id="L876" class="blob-num js-line-number" data-line-number="876"></td>
        <td id="LC876" class="blob-code blob-code-inner js-file-line">			 buffer-file-name))</td>
      </tr>
      <tr>
        <td id="L877" class="blob-num js-line-number" data-line-number="877"></td>
        <td id="LC877" class="blob-code blob-code-inner js-file-line">      (<span class="pl-c1">error</span> <span class="pl-pds">&quot;</span><span class="pl-s">Need a file name to be able to export</span><span class="pl-pds">&quot;</span>)))</td>
      </tr>
      <tr>
        <td id="L878" class="blob-num js-line-number" data-line-number="878"></td>
        <td id="LC878" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L879" class="blob-num js-line-number" data-line-number="879"></td>
        <td id="LC879" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">message</span> <span class="pl-pds">&quot;</span><span class="pl-s">Exporting to LaTeX...</span><span class="pl-pds">&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L880" class="blob-num js-line-number" data-line-number="880"></td>
        <td id="LC880" class="blob-code blob-code-inner js-file-line">  (org-unmodified</td>
      </tr>
      <tr>
        <td id="L881" class="blob-num js-line-number" data-line-number="881"></td>
        <td id="LC881" class="blob-code blob-code-inner js-file-line">   (<span class="pl-k">let</span> ((inhibit-read-only <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L882" class="blob-num js-line-number" data-line-number="882"></td>
        <td id="LC882" class="blob-code blob-code-inner js-file-line">     (remove-text-properties (point-min) (point-max)</td>
      </tr>
      <tr>
        <td id="L883" class="blob-num js-line-number" data-line-number="883"></td>
        <td id="LC883" class="blob-code blob-code-inner js-file-line">			     &#39;(<span class="pl-c1">:org-license-to-kill</span> <span class="pl-c1">nil</span>))))</td>
      </tr>
      <tr>
        <td id="L884" class="blob-num js-line-number" data-line-number="884"></td>
        <td id="LC884" class="blob-code blob-code-inner js-file-line">  (org-update-radio-target-regexp)</td>
      </tr>
      <tr>
        <td id="L885" class="blob-num js-line-number" data-line-number="885"></td>
        <td id="LC885" class="blob-code blob-code-inner js-file-line">  (org-export-latex-set-initial-vars ext-plist arg)</td>
      </tr>
      <tr>
        <td id="L886" class="blob-num js-line-number" data-line-number="886"></td>
        <td id="LC886" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">setq</span> org-export-opt-plist org-export-latex-options-plist</td>
      </tr>
      <tr>
        <td id="L887" class="blob-num js-line-number" data-line-number="887"></td>
        <td id="LC887" class="blob-code blob-code-inner js-file-line">	org-export-footnotes-data (org-footnote-all-labels <span class="pl-c1">&#39;with-defs</span>)</td>
      </tr>
      <tr>
        <td id="L888" class="blob-num js-line-number" data-line-number="888"></td>
        <td id="LC888" class="blob-code blob-code-inner js-file-line">	org-export-footnotes-seen <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L889" class="blob-num js-line-number" data-line-number="889"></td>
        <td id="LC889" class="blob-code blob-code-inner js-file-line">	org-export-latex-footmark-seen <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L890" class="blob-num js-line-number" data-line-number="890"></td>
        <td id="LC890" class="blob-code blob-code-inner js-file-line">  (org-install-letbind)</td>
      </tr>
      <tr>
        <td id="L891" class="blob-num js-line-number" data-line-number="891"></td>
        <td id="LC891" class="blob-code blob-code-inner js-file-line">  (run-hooks <span class="pl-c1">&#39;org-export-latex-after-initial-vars-hook</span>)</td>
      </tr>
      <tr>
        <td id="L892" class="blob-num js-line-number" data-line-number="892"></td>
        <td id="LC892" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let*</span> ((wcf (current-window-configuration))</td>
      </tr>
      <tr>
        <td id="L893" class="blob-num js-line-number" data-line-number="893"></td>
        <td id="LC893" class="blob-code blob-code-inner js-file-line">	 (opt-plist</td>
      </tr>
      <tr>
        <td id="L894" class="blob-num js-line-number" data-line-number="894"></td>
        <td id="LC894" class="blob-code blob-code-inner js-file-line">	  (org-export-process-option-filters org-export-latex-options-plist))</td>
      </tr>
      <tr>
        <td id="L895" class="blob-num js-line-number" data-line-number="895"></td>
        <td id="LC895" class="blob-code blob-code-inner js-file-line">	 (region-p (org-region-active-p))</td>
      </tr>
      <tr>
        <td id="L896" class="blob-num js-line-number" data-line-number="896"></td>
        <td id="LC896" class="blob-code blob-code-inner js-file-line">	 (rbeg (<span class="pl-k">and</span> region-p (region-beginning)))</td>
      </tr>
      <tr>
        <td id="L897" class="blob-num js-line-number" data-line-number="897"></td>
        <td id="LC897" class="blob-code blob-code-inner js-file-line">	 (rend (<span class="pl-k">and</span> region-p (region-end)))</td>
      </tr>
      <tr>
        <td id="L898" class="blob-num js-line-number" data-line-number="898"></td>
        <td id="LC898" class="blob-code blob-code-inner js-file-line">	 (subtree-p</td>
      </tr>
      <tr>
        <td id="L899" class="blob-num js-line-number" data-line-number="899"></td>
        <td id="LC899" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">if</span> (plist-get opt-plist <span class="pl-c1">:ignore-subtree-p</span>)</td>
      </tr>
      <tr>
        <td id="L900" class="blob-num js-line-number" data-line-number="900"></td>
        <td id="LC900" class="blob-code blob-code-inner js-file-line">	      <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L901" class="blob-num js-line-number" data-line-number="901"></td>
        <td id="LC901" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">when</span> region-p</td>
      </tr>
      <tr>
        <td id="L902" class="blob-num js-line-number" data-line-number="902"></td>
        <td id="LC902" class="blob-code blob-code-inner js-file-line">	      (save-excursion</td>
      </tr>
      <tr>
        <td id="L903" class="blob-num js-line-number" data-line-number="903"></td>
        <td id="LC903" class="blob-code blob-code-inner js-file-line">		(goto-char rbeg)</td>
      </tr>
      <tr>
        <td id="L904" class="blob-num js-line-number" data-line-number="904"></td>
        <td id="LC904" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">and</span> (org-at-heading-p)</td>
      </tr>
      <tr>
        <td id="L905" class="blob-num js-line-number" data-line-number="905"></td>
        <td id="LC905" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">&gt;</span>= (org-end-of-subtree <span class="pl-c1">t</span> <span class="pl-c1">t</span>) rend))))))</td>
      </tr>
      <tr>
        <td id="L906" class="blob-num js-line-number" data-line-number="906"></td>
        <td id="LC906" class="blob-code blob-code-inner js-file-line">	 (opt-plist (<span class="pl-k">setq</span> org-export-opt-plist</td>
      </tr>
      <tr>
        <td id="L907" class="blob-num js-line-number" data-line-number="907"></td>
        <td id="LC907" class="blob-code blob-code-inner js-file-line">			  (<span class="pl-k">if</span> subtree-p</td>
      </tr>
      <tr>
        <td id="L908" class="blob-num js-line-number" data-line-number="908"></td>
        <td id="LC908" class="blob-code blob-code-inner js-file-line">			      (org-export-add-subtree-options opt-plist rbeg)</td>
      </tr>
      <tr>
        <td id="L909" class="blob-num js-line-number" data-line-number="909"></td>
        <td id="LC909" class="blob-code blob-code-inner js-file-line">			    opt-plist)))</td>
      </tr>
      <tr>
        <td id="L910" class="blob-num js-line-number" data-line-number="910"></td>
        <td id="LC910" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c">;; Make sure the variable contains the updated values.</span></td>
      </tr>
      <tr>
        <td id="L911" class="blob-num js-line-number" data-line-number="911"></td>
        <td id="LC911" class="blob-code blob-code-inner js-file-line">	 (org-export-latex-options-plist (<span class="pl-k">setq</span> org-export-opt-plist opt-plist))</td>
      </tr>
      <tr>
        <td id="L912" class="blob-num js-line-number" data-line-number="912"></td>
        <td id="LC912" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c">;; The following two are dynamically scoped into other</span></td>
      </tr>
      <tr>
        <td id="L913" class="blob-num js-line-number" data-line-number="913"></td>
        <td id="LC913" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c">;; routines below.</span></td>
      </tr>
      <tr>
        <td id="L914" class="blob-num js-line-number" data-line-number="914"></td>
        <td id="LC914" class="blob-code blob-code-inner js-file-line">	 (org-current-export-dir</td>
      </tr>
      <tr>
        <td id="L915" class="blob-num js-line-number" data-line-number="915"></td>
        <td id="LC915" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">or</span> pub-dir (org-export-directory <span class="pl-c1">:html</span> opt-plist)))</td>
      </tr>
      <tr>
        <td id="L916" class="blob-num js-line-number" data-line-number="916"></td>
        <td id="LC916" class="blob-code blob-code-inner js-file-line">	 (org-current-export-file buffer-file-name)</td>
      </tr>
      <tr>
        <td id="L917" class="blob-num js-line-number" data-line-number="917"></td>
        <td id="LC917" class="blob-code blob-code-inner js-file-line">	 (title (<span class="pl-k">or</span> (<span class="pl-k">and</span> subtree-p (org-export-get-title-from-subtree))</td>
      </tr>
      <tr>
        <td id="L918" class="blob-num js-line-number" data-line-number="918"></td>
        <td id="LC918" class="blob-code blob-code-inner js-file-line">		    (plist-get opt-plist <span class="pl-c1">:title</span>)</td>
      </tr>
      <tr>
        <td id="L919" class="blob-num js-line-number" data-line-number="919"></td>
        <td id="LC919" class="blob-code blob-code-inner js-file-line">		    (<span class="pl-k">and</span> (<span class="pl-k">not</span></td>
      </tr>
      <tr>
        <td id="L920" class="blob-num js-line-number" data-line-number="920"></td>
        <td id="LC920" class="blob-code blob-code-inner js-file-line">			  (plist-get opt-plist <span class="pl-c1">:skip-before-1st-heading</span>))</td>
      </tr>
      <tr>
        <td id="L921" class="blob-num js-line-number" data-line-number="921"></td>
        <td id="LC921" class="blob-code blob-code-inner js-file-line">			 (org-export-grab-title-from-buffer))</td>
      </tr>
      <tr>
        <td id="L922" class="blob-num js-line-number" data-line-number="922"></td>
        <td id="LC922" class="blob-code blob-code-inner js-file-line">		    (<span class="pl-k">and</span> buffer-file-name</td>
      </tr>
      <tr>
        <td id="L923" class="blob-num js-line-number" data-line-number="923"></td>
        <td id="LC923" class="blob-code blob-code-inner js-file-line">			 (file-name-sans-extension</td>
      </tr>
      <tr>
        <td id="L924" class="blob-num js-line-number" data-line-number="924"></td>
        <td id="LC924" class="blob-code blob-code-inner js-file-line">			  (file-name-nondirectory buffer-file-name)))</td>
      </tr>
      <tr>
        <td id="L925" class="blob-num js-line-number" data-line-number="925"></td>
        <td id="LC925" class="blob-code blob-code-inner js-file-line">		    <span class="pl-s"><span class="pl-pds">&quot;</span>No Title<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L926" class="blob-num js-line-number" data-line-number="926"></td>
        <td id="LC926" class="blob-code blob-code-inner js-file-line">	 (filename</td>
      </tr>
      <tr>
        <td id="L927" class="blob-num js-line-number" data-line-number="927"></td>
        <td id="LC927" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">and</span> (<span class="pl-k">not</span> to-buffer)</td>
      </tr>
      <tr>
        <td id="L928" class="blob-num js-line-number" data-line-number="928"></td>
        <td id="LC928" class="blob-code blob-code-inner js-file-line">	       (concat</td>
      </tr>
      <tr>
        <td id="L929" class="blob-num js-line-number" data-line-number="929"></td>
        <td id="LC929" class="blob-code blob-code-inner js-file-line">		(file-name-as-directory</td>
      </tr>
      <tr>
        <td id="L930" class="blob-num js-line-number" data-line-number="930"></td>
        <td id="LC930" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">or</span> pub-dir</td>
      </tr>
      <tr>
        <td id="L931" class="blob-num js-line-number" data-line-number="931"></td>
        <td id="LC931" class="blob-code blob-code-inner js-file-line">		     (org-export-directory <span class="pl-c1">:LaTeX</span> org-export-latex-options-plist)))</td>
      </tr>
      <tr>
        <td id="L932" class="blob-num js-line-number" data-line-number="932"></td>
        <td id="LC932" class="blob-code blob-code-inner js-file-line">		(file-name-sans-extension</td>
      </tr>
      <tr>
        <td id="L933" class="blob-num js-line-number" data-line-number="933"></td>
        <td id="LC933" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">or</span> (<span class="pl-k">and</span> subtree-p</td>
      </tr>
      <tr>
        <td id="L934" class="blob-num js-line-number" data-line-number="934"></td>
        <td id="LC934" class="blob-code blob-code-inner js-file-line">			  (org-entry-get rbeg <span class="pl-s"><span class="pl-pds">&quot;</span>EXPORT_FILE_NAME<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L935" class="blob-num js-line-number" data-line-number="935"></td>
        <td id="LC935" class="blob-code blob-code-inner js-file-line">		     (file-name-nondirectory <span class="pl-c">;sans-extension</span></td>
      </tr>
      <tr>
        <td id="L936" class="blob-num js-line-number" data-line-number="936"></td>
        <td id="LC936" class="blob-code blob-code-inner js-file-line">		      (<span class="pl-k">or</span> buffer-file-name</td>
      </tr>
      <tr>
        <td id="L937" class="blob-num js-line-number" data-line-number="937"></td>
        <td id="LC937" class="blob-code blob-code-inner js-file-line">			  (<span class="pl-c1">error</span> <span class="pl-pds">&quot;</span><span class="pl-s">Don&#39;t know which export file to use</span><span class="pl-pds">&quot;</span>)))))</td>
      </tr>
      <tr>
        <td id="L938" class="blob-num js-line-number" data-line-number="938"></td>
        <td id="LC938" class="blob-code blob-code-inner js-file-line">		<span class="pl-s"><span class="pl-pds">&quot;</span>.tex<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L939" class="blob-num js-line-number" data-line-number="939"></td>
        <td id="LC939" class="blob-code blob-code-inner js-file-line">	 (filename</td>
      </tr>
      <tr>
        <td id="L940" class="blob-num js-line-number" data-line-number="940"></td>
        <td id="LC940" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">and</span> filename</td>
      </tr>
      <tr>
        <td id="L941" class="blob-num js-line-number" data-line-number="941"></td>
        <td id="LC941" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">if</span> (<span class="pl-k">equal</span> (file-truename filename)</td>
      </tr>
      <tr>
        <td id="L942" class="blob-num js-line-number" data-line-number="942"></td>
        <td id="LC942" class="blob-code blob-code-inner js-file-line">			  (file-truename (<span class="pl-k">or</span> buffer-file-name <span class="pl-s"><span class="pl-pds">&quot;</span>dummy.org<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L943" class="blob-num js-line-number" data-line-number="943"></td>
        <td id="LC943" class="blob-code blob-code-inner js-file-line">		   (concat filename <span class="pl-s"><span class="pl-pds">&quot;</span>.tex<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L944" class="blob-num js-line-number" data-line-number="944"></td>
        <td id="LC944" class="blob-code blob-code-inner js-file-line">		 filename)))</td>
      </tr>
      <tr>
        <td id="L945" class="blob-num js-line-number" data-line-number="945"></td>
        <td id="LC945" class="blob-code blob-code-inner js-file-line">	 (auto-insert <span class="pl-c1">nil</span>)<span class="pl-c">; Avoid any auto-insert stuff for the new file</span></td>
      </tr>
      <tr>
        <td id="L946" class="blob-num js-line-number" data-line-number="946"></td>
        <td id="LC946" class="blob-code blob-code-inner js-file-line">	 (TeX-master (boundp <span class="pl-c1">&#39;TeX-master</span>))</td>
      </tr>
      <tr>
        <td id="L947" class="blob-num js-line-number" data-line-number="947"></td>
        <td id="LC947" class="blob-code blob-code-inner js-file-line">	 (buffer (<span class="pl-k">if</span> to-buffer</td>
      </tr>
      <tr>
        <td id="L948" class="blob-num js-line-number" data-line-number="948"></td>
        <td id="LC948" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">cond</span></td>
      </tr>
      <tr>
        <td id="L949" class="blob-num js-line-number" data-line-number="949"></td>
        <td id="LC949" class="blob-code blob-code-inner js-file-line">		      ((<span class="pl-k">eq</span> to-buffer <span class="pl-c1">&#39;string</span>) (get-buffer-create</td>
      </tr>
      <tr>
        <td id="L950" class="blob-num js-line-number" data-line-number="950"></td>
        <td id="LC950" class="blob-code blob-code-inner js-file-line">					       <span class="pl-s"><span class="pl-pds">&quot;</span>*Org LaTeX Export*<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L951" class="blob-num js-line-number" data-line-number="951"></td>
        <td id="LC951" class="blob-code blob-code-inner js-file-line">		      (<span class="pl-c1">t</span> (get-buffer-create to-buffer)))</td>
      </tr>
      <tr>
        <td id="L952" class="blob-num js-line-number" data-line-number="952"></td>
        <td id="LC952" class="blob-code blob-code-inner js-file-line">		   (find-file-noselect filename)))</td>
      </tr>
      <tr>
        <td id="L953" class="blob-num js-line-number" data-line-number="953"></td>
        <td id="LC953" class="blob-code blob-code-inner js-file-line">	 (odd org-odd-levels-only)</td>
      </tr>
      <tr>
        <td id="L954" class="blob-num js-line-number" data-line-number="954"></td>
        <td id="LC954" class="blob-code blob-code-inner js-file-line">	 (header (org-export-latex-make-header title opt-plist))</td>
      </tr>
      <tr>
        <td id="L955" class="blob-num js-line-number" data-line-number="955"></td>
        <td id="LC955" class="blob-code blob-code-inner js-file-line">	 (skip (<span class="pl-k">cond</span> (subtree-p <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L956" class="blob-num js-line-number" data-line-number="956"></td>
        <td id="LC956" class="blob-code blob-code-inner js-file-line">		     (region-p <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L957" class="blob-num js-line-number" data-line-number="957"></td>
        <td id="LC957" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-c1">t</span> (plist-get opt-plist <span class="pl-c1">:skip-before-1st-heading</span>))))</td>
      </tr>
      <tr>
        <td id="L958" class="blob-num js-line-number" data-line-number="958"></td>
        <td id="LC958" class="blob-code blob-code-inner js-file-line">	 (text (plist-get opt-plist <span class="pl-c1">:text</span>))</td>
      </tr>
      <tr>
        <td id="L959" class="blob-num js-line-number" data-line-number="959"></td>
        <td id="LC959" class="blob-code blob-code-inner js-file-line">	 (org-export-preprocess-hook</td>
      </tr>
      <tr>
        <td id="L960" class="blob-num js-line-number" data-line-number="960"></td>
        <td id="LC960" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">cons</span></td>
      </tr>
      <tr>
        <td id="L961" class="blob-num js-line-number" data-line-number="961"></td>
        <td id="LC961" class="blob-code blob-code-inner js-file-line">	   `(lambda () (org-set-local <span class="pl-c1">&#39;org-complex-heading-regexp</span></td>
      </tr>
      <tr>
        <td id="L962" class="blob-num js-line-number" data-line-number="962"></td>
        <td id="LC962" class="blob-code blob-code-inner js-file-line">				      ,org-export-latex-complex-heading-re))</td>
      </tr>
      <tr>
        <td id="L963" class="blob-num js-line-number" data-line-number="963"></td>
        <td id="LC963" class="blob-code blob-code-inner js-file-line">	   org-export-preprocess-hook))</td>
      </tr>
      <tr>
        <td id="L964" class="blob-num js-line-number" data-line-number="964"></td>
        <td id="LC964" class="blob-code blob-code-inner js-file-line">	 (first-lines (<span class="pl-k">if</span> skip <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> (org-export-latex-first-lines</td>
      </tr>
      <tr>
        <td id="L965" class="blob-num js-line-number" data-line-number="965"></td>
        <td id="LC965" class="blob-code blob-code-inner js-file-line">				   opt-plist</td>
      </tr>
      <tr>
        <td id="L966" class="blob-num js-line-number" data-line-number="966"></td>
        <td id="LC966" class="blob-code blob-code-inner js-file-line">				   (<span class="pl-k">if</span> subtree-p</td>
      </tr>
      <tr>
        <td id="L967" class="blob-num js-line-number" data-line-number="967"></td>
        <td id="LC967" class="blob-code blob-code-inner js-file-line">				       (save-excursion</td>
      </tr>
      <tr>
        <td id="L968" class="blob-num js-line-number" data-line-number="968"></td>
        <td id="LC968" class="blob-code blob-code-inner js-file-line">					 (goto-char rbeg)</td>
      </tr>
      <tr>
        <td id="L969" class="blob-num js-line-number" data-line-number="969"></td>
        <td id="LC969" class="blob-code blob-code-inner js-file-line">					 (point-at-bol <span class="pl-c1">2</span>))</td>
      </tr>
      <tr>
        <td id="L970" class="blob-num js-line-number" data-line-number="970"></td>
        <td id="LC970" class="blob-code blob-code-inner js-file-line">				     rbeg)</td>
      </tr>
      <tr>
        <td id="L971" class="blob-num js-line-number" data-line-number="971"></td>
        <td id="LC971" class="blob-code blob-code-inner js-file-line">				   (<span class="pl-k">if</span> region-p rend))))</td>
      </tr>
      <tr>
        <td id="L972" class="blob-num js-line-number" data-line-number="972"></td>
        <td id="LC972" class="blob-code blob-code-inner js-file-line">	 (coding-system (<span class="pl-k">and</span> (boundp <span class="pl-c1">&#39;buffer-file-coding-system</span>)</td>
      </tr>
      <tr>
        <td id="L973" class="blob-num js-line-number" data-line-number="973"></td>
        <td id="LC973" class="blob-code blob-code-inner js-file-line">			     buffer-file-coding-system))</td>
      </tr>
      <tr>
        <td id="L974" class="blob-num js-line-number" data-line-number="974"></td>
        <td id="LC974" class="blob-code blob-code-inner js-file-line">	 (coding-system-for-write (<span class="pl-k">or</span> org-export-latex-coding-system</td>
      </tr>
      <tr>
        <td id="L975" class="blob-num js-line-number" data-line-number="975"></td>
        <td id="LC975" class="blob-code blob-code-inner js-file-line">				      coding-system))</td>
      </tr>
      <tr>
        <td id="L976" class="blob-num js-line-number" data-line-number="976"></td>
        <td id="LC976" class="blob-code blob-code-inner js-file-line">	 (save-buffer-coding-system (<span class="pl-k">or</span> org-export-latex-coding-system</td>
      </tr>
      <tr>
        <td id="L977" class="blob-num js-line-number" data-line-number="977"></td>
        <td id="LC977" class="blob-code blob-code-inner js-file-line">					coding-system))</td>
      </tr>
      <tr>
        <td id="L978" class="blob-num js-line-number" data-line-number="978"></td>
        <td id="LC978" class="blob-code blob-code-inner js-file-line">	 (region (buffer-substring</td>
      </tr>
      <tr>
        <td id="L979" class="blob-num js-line-number" data-line-number="979"></td>
        <td id="LC979" class="blob-code blob-code-inner js-file-line">		  (<span class="pl-k">if</span> region-p (region-beginning) (point-min))</td>
      </tr>
      <tr>
        <td id="L980" class="blob-num js-line-number" data-line-number="980"></td>
        <td id="LC980" class="blob-code blob-code-inner js-file-line">		  (<span class="pl-k">if</span> region-p (region-end) (point-max))))</td>
      </tr>
      <tr>
        <td id="L981" class="blob-num js-line-number" data-line-number="981"></td>
        <td id="LC981" class="blob-code blob-code-inner js-file-line">	 (text</td>
      </tr>
      <tr>
        <td id="L982" class="blob-num js-line-number" data-line-number="982"></td>
        <td id="LC982" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">and</span> text (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>S-<span class="pl-pds">&quot;</span></span> text)</td>
      </tr>
      <tr>
        <td id="L983" class="blob-num js-line-number" data-line-number="983"></td>
        <td id="LC983" class="blob-code blob-code-inner js-file-line">	       (org-export-preprocess-string</td>
      </tr>
      <tr>
        <td id="L984" class="blob-num js-line-number" data-line-number="984"></td>
        <td id="LC984" class="blob-code blob-code-inner js-file-line">		text</td>
      </tr>
      <tr>
        <td id="L985" class="blob-num js-line-number" data-line-number="985"></td>
        <td id="LC985" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:emph-multiline</span> <span class="pl-c1">t</span></td>
      </tr>
      <tr>
        <td id="L986" class="blob-num js-line-number" data-line-number="986"></td>
        <td id="LC986" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:for-backend</span> <span class="pl-c1">&#39;latex</span></td>
      </tr>
      <tr>
        <td id="L987" class="blob-num js-line-number" data-line-number="987"></td>
        <td id="LC987" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:comments</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L988" class="blob-num js-line-number" data-line-number="988"></td>
        <td id="LC988" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:tags</span> (plist-get opt-plist <span class="pl-c1">:tags</span>)</td>
      </tr>
      <tr>
        <td id="L989" class="blob-num js-line-number" data-line-number="989"></td>
        <td id="LC989" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:priority</span> (plist-get opt-plist <span class="pl-c1">:priority</span>)</td>
      </tr>
      <tr>
        <td id="L990" class="blob-num js-line-number" data-line-number="990"></td>
        <td id="LC990" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:footnotes</span> (plist-get opt-plist <span class="pl-c1">:footnotes</span>)</td>
      </tr>
      <tr>
        <td id="L991" class="blob-num js-line-number" data-line-number="991"></td>
        <td id="LC991" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:drawers</span> (plist-get opt-plist <span class="pl-c1">:drawers</span>)</td>
      </tr>
      <tr>
        <td id="L992" class="blob-num js-line-number" data-line-number="992"></td>
        <td id="LC992" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:timestamps</span> (plist-get opt-plist <span class="pl-c1">:timestamps</span>)</td>
      </tr>
      <tr>
        <td id="L993" class="blob-num js-line-number" data-line-number="993"></td>
        <td id="LC993" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:todo-keywords</span> (plist-get opt-plist <span class="pl-c1">:todo-keywords</span>)</td>
      </tr>
      <tr>
        <td id="L994" class="blob-num js-line-number" data-line-number="994"></td>
        <td id="LC994" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:tasks</span> (plist-get opt-plist <span class="pl-c1">:tasks</span>)</td>
      </tr>
      <tr>
        <td id="L995" class="blob-num js-line-number" data-line-number="995"></td>
        <td id="LC995" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:add-text</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L996" class="blob-num js-line-number" data-line-number="996"></td>
        <td id="LC996" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:skip-before-1st-heading</span> skip</td>
      </tr>
      <tr>
        <td id="L997" class="blob-num js-line-number" data-line-number="997"></td>
        <td id="LC997" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:select-tags</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L998" class="blob-num js-line-number" data-line-number="998"></td>
        <td id="LC998" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:exclude-tags</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L999" class="blob-num js-line-number" data-line-number="999"></td>
        <td id="LC999" class="blob-code blob-code-inner js-file-line">		<span class="pl-c1">:LaTeX-fragments</span> <span class="pl-c1">nil</span>)))</td>
      </tr>
      <tr>
        <td id="L1000" class="blob-num js-line-number" data-line-number="1000"></td>
        <td id="LC1000" class="blob-code blob-code-inner js-file-line">	 (string-for-export</td>
      </tr>
      <tr>
        <td id="L1001" class="blob-num js-line-number" data-line-number="1001"></td>
        <td id="LC1001" class="blob-code blob-code-inner js-file-line">	  (org-export-preprocess-string</td>
      </tr>
      <tr>
        <td id="L1002" class="blob-num js-line-number" data-line-number="1002"></td>
        <td id="LC1002" class="blob-code blob-code-inner js-file-line">	   region</td>
      </tr>
      <tr>
        <td id="L1003" class="blob-num js-line-number" data-line-number="1003"></td>
        <td id="LC1003" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:emph-multiline</span> <span class="pl-c1">t</span></td>
      </tr>
      <tr>
        <td id="L1004" class="blob-num js-line-number" data-line-number="1004"></td>
        <td id="LC1004" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:for-backend</span> <span class="pl-c1">&#39;latex</span></td>
      </tr>
      <tr>
        <td id="L1005" class="blob-num js-line-number" data-line-number="1005"></td>
        <td id="LC1005" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:comments</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L1006" class="blob-num js-line-number" data-line-number="1006"></td>
        <td id="LC1006" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:tags</span> (plist-get opt-plist <span class="pl-c1">:tags</span>)</td>
      </tr>
      <tr>
        <td id="L1007" class="blob-num js-line-number" data-line-number="1007"></td>
        <td id="LC1007" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:priority</span> (plist-get opt-plist <span class="pl-c1">:priority</span>)</td>
      </tr>
      <tr>
        <td id="L1008" class="blob-num js-line-number" data-line-number="1008"></td>
        <td id="LC1008" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:footnotes</span> (plist-get opt-plist <span class="pl-c1">:footnotes</span>)</td>
      </tr>
      <tr>
        <td id="L1009" class="blob-num js-line-number" data-line-number="1009"></td>
        <td id="LC1009" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:drawers</span> (plist-get opt-plist <span class="pl-c1">:drawers</span>)</td>
      </tr>
      <tr>
        <td id="L1010" class="blob-num js-line-number" data-line-number="1010"></td>
        <td id="LC1010" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:timestamps</span> (plist-get opt-plist <span class="pl-c1">:timestamps</span>)</td>
      </tr>
      <tr>
        <td id="L1011" class="blob-num js-line-number" data-line-number="1011"></td>
        <td id="LC1011" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:todo-keywords</span> (plist-get opt-plist <span class="pl-c1">:todo-keywords</span>)</td>
      </tr>
      <tr>
        <td id="L1012" class="blob-num js-line-number" data-line-number="1012"></td>
        <td id="LC1012" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:tasks</span> (plist-get opt-plist <span class="pl-c1">:tasks</span>)</td>
      </tr>
      <tr>
        <td id="L1013" class="blob-num js-line-number" data-line-number="1013"></td>
        <td id="LC1013" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:add-text</span> (<span class="pl-k">if</span> (<span class="pl-k">eq</span> to-buffer <span class="pl-c1">&#39;string</span>) <span class="pl-c1">nil</span> text)</td>
      </tr>
      <tr>
        <td id="L1014" class="blob-num js-line-number" data-line-number="1014"></td>
        <td id="LC1014" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:skip-before-1st-heading</span> skip</td>
      </tr>
      <tr>
        <td id="L1015" class="blob-num js-line-number" data-line-number="1015"></td>
        <td id="LC1015" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:select-tags</span> (plist-get opt-plist <span class="pl-c1">:select-tags</span>)</td>
      </tr>
      <tr>
        <td id="L1016" class="blob-num js-line-number" data-line-number="1016"></td>
        <td id="LC1016" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:exclude-tags</span> (plist-get opt-plist <span class="pl-c1">:exclude-tags</span>)</td>
      </tr>
      <tr>
        <td id="L1017" class="blob-num js-line-number" data-line-number="1017"></td>
        <td id="LC1017" class="blob-code blob-code-inner js-file-line">	   <span class="pl-c1">:LaTeX-fragments</span> <span class="pl-c1">nil</span>)))</td>
      </tr>
      <tr>
        <td id="L1018" class="blob-num js-line-number" data-line-number="1018"></td>
        <td id="LC1018" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1019" class="blob-num js-line-number" data-line-number="1019"></td>
        <td id="LC1019" class="blob-code blob-code-inner js-file-line">    (set-buffer buffer)</td>
      </tr>
      <tr>
        <td id="L1020" class="blob-num js-line-number" data-line-number="1020"></td>
        <td id="LC1020" class="blob-code blob-code-inner js-file-line">    (erase-buffer)</td>
      </tr>
      <tr>
        <td id="L1021" class="blob-num js-line-number" data-line-number="1021"></td>
        <td id="LC1021" class="blob-code blob-code-inner js-file-line">    (org-install-letbind)</td>
      </tr>
      <tr>
        <td id="L1022" class="blob-num js-line-number" data-line-number="1022"></td>
        <td id="LC1022" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1023" class="blob-num js-line-number" data-line-number="1023"></td>
        <td id="LC1023" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">and</span> (fboundp <span class="pl-c1">&#39;set-buffer-file-coding-system</span>)</td>
      </tr>
      <tr>
        <td id="L1024" class="blob-num js-line-number" data-line-number="1024"></td>
        <td id="LC1024" class="blob-code blob-code-inner js-file-line">	 (set-buffer-file-coding-system coding-system-for-write))</td>
      </tr>
      <tr>
        <td id="L1025" class="blob-num js-line-number" data-line-number="1025"></td>
        <td id="LC1025" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1026" class="blob-num js-line-number" data-line-number="1026"></td>
        <td id="LC1026" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; insert the header and initial document commands</span></td>
      </tr>
      <tr>
        <td id="L1027" class="blob-num js-line-number" data-line-number="1027"></td>
        <td id="LC1027" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (<span class="pl-k">or</span> (<span class="pl-k">eq</span> to-buffer <span class="pl-c1">&#39;string</span>) body-only)</td>
      </tr>
      <tr>
        <td id="L1028" class="blob-num js-line-number" data-line-number="1028"></td>
        <td id="LC1028" class="blob-code blob-code-inner js-file-line">      (insert header))</td>
      </tr>
      <tr>
        <td id="L1029" class="blob-num js-line-number" data-line-number="1029"></td>
        <td id="LC1029" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1030" class="blob-num js-line-number" data-line-number="1030"></td>
        <td id="LC1030" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; insert text found in #+TEXT</span></td>
      </tr>
      <tr>
        <td id="L1031" class="blob-num js-line-number" data-line-number="1031"></td>
        <td id="LC1031" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (<span class="pl-k">and</span> text (<span class="pl-k">not</span> (<span class="pl-k">eq</span> to-buffer <span class="pl-c1">&#39;string</span>)))</td>
      </tr>
      <tr>
        <td id="L1032" class="blob-num js-line-number" data-line-number="1032"></td>
        <td id="LC1032" class="blob-code blob-code-inner js-file-line">      (insert (org-export-latex-content</td>
      </tr>
      <tr>
        <td id="L1033" class="blob-num js-line-number" data-line-number="1033"></td>
        <td id="LC1033" class="blob-code blob-code-inner js-file-line">	       text &#39;(lists tables fixed-width keywords))</td>
      </tr>
      <tr>
        <td id="L1034" class="blob-num js-line-number" data-line-number="1034"></td>
        <td id="LC1034" class="blob-code blob-code-inner js-file-line">	       <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1035" class="blob-num js-line-number" data-line-number="1035"></td>
        <td id="LC1035" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1036" class="blob-num js-line-number" data-line-number="1036"></td>
        <td id="LC1036" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; insert lines before the first headline</span></td>
      </tr>
      <tr>
        <td id="L1037" class="blob-num js-line-number" data-line-number="1037"></td>
        <td id="LC1037" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (<span class="pl-k">or</span> skip (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>*<span class="pl-pds">&quot;</span></span> first-lines))</td>
      </tr>
      <tr>
        <td id="L1038" class="blob-num js-line-number" data-line-number="1038"></td>
        <td id="LC1038" class="blob-code blob-code-inner js-file-line">      (insert first-lines))</td>
      </tr>
      <tr>
        <td id="L1039" class="blob-num js-line-number" data-line-number="1039"></td>
        <td id="LC1039" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1040" class="blob-num js-line-number" data-line-number="1040"></td>
        <td id="LC1040" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; export the content of headlines</span></td>
      </tr>
      <tr>
        <td id="L1041" class="blob-num js-line-number" data-line-number="1041"></td>
        <td id="LC1041" class="blob-code blob-code-inner js-file-line">    (org-export-latex-global</td>
      </tr>
      <tr>
        <td id="L1042" class="blob-num js-line-number" data-line-number="1042"></td>
        <td id="LC1042" class="blob-code blob-code-inner js-file-line">     (with-temp-buffer</td>
      </tr>
      <tr>
        <td id="L1043" class="blob-num js-line-number" data-line-number="1043"></td>
        <td id="LC1043" class="blob-code blob-code-inner js-file-line">       (insert string-for-export)</td>
      </tr>
      <tr>
        <td id="L1044" class="blob-num js-line-number" data-line-number="1044"></td>
        <td id="LC1044" class="blob-code blob-code-inner js-file-line">       (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1045" class="blob-num js-line-number" data-line-number="1045"></td>
        <td id="LC1045" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">when</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>*+<span class="pl-cce">\\</span>) <span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1046" class="blob-num js-line-number" data-line-number="1046"></td>
        <td id="LC1046" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">let*</span> ((asters (<span class="pl-k">length</span> (match-string <span class="pl-c1">1</span>)))</td>
      </tr>
      <tr>
        <td id="L1047" class="blob-num js-line-number" data-line-number="1047"></td>
        <td id="LC1047" class="blob-code blob-code-inner js-file-line">		(level (<span class="pl-k">if</span> odd (<span class="pl-k">-</span> asters <span class="pl-c1">2</span>) (<span class="pl-k">-</span> asters <span class="pl-c1">1</span>))))</td>
      </tr>
      <tr>
        <td id="L1048" class="blob-num js-line-number" data-line-number="1048"></td>
        <td id="LC1048" class="blob-code blob-code-inner js-file-line">	   (<span class="pl-k">setq</span> org-export-latex-add-level</td>
      </tr>
      <tr>
        <td id="L1049" class="blob-num js-line-number" data-line-number="1049"></td>
        <td id="LC1049" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">if</span> odd (1- (<span class="pl-k">/</span> (1+ asters) <span class="pl-c1">2</span>)) (1- asters)))</td>
      </tr>
      <tr>
        <td id="L1050" class="blob-num js-line-number" data-line-number="1050"></td>
        <td id="LC1050" class="blob-code blob-code-inner js-file-line">	   (org-export-latex-parse-global level odd)))))</td>
      </tr>
      <tr>
        <td id="L1051" class="blob-num js-line-number" data-line-number="1051"></td>
        <td id="LC1051" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1052" class="blob-num js-line-number" data-line-number="1052"></td>
        <td id="LC1052" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; finalization</span></td>
      </tr>
      <tr>
        <td id="L1053" class="blob-num js-line-number" data-line-number="1053"></td>
        <td id="LC1053" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> body-only (insert <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\\</span>end{document}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1054" class="blob-num js-line-number" data-line-number="1054"></td>
        <td id="LC1054" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1055" class="blob-num js-line-number" data-line-number="1055"></td>
        <td id="LC1055" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; Attach description terms to the \item macro</span></td>
      </tr>
      <tr>
        <td id="L1056" class="blob-num js-line-number" data-line-number="1056"></td>
        <td id="LC1056" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1057" class="blob-num js-line-number" data-line-number="1057"></td>
        <td id="LC1057" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\\\</span>item<span class="pl-cce">\\</span>([ <span class="pl-cce">\t</span>]+<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>[<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1058" class="blob-num js-line-number" data-line-number="1058"></td>
        <td id="LC1058" class="blob-code blob-code-inner js-file-line">      (delete-region (match-beginning <span class="pl-c1">1</span>) (match-end <span class="pl-c1">1</span>)))</td>
      </tr>
      <tr>
        <td id="L1059" class="blob-num js-line-number" data-line-number="1059"></td>
        <td id="LC1059" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1060" class="blob-num js-line-number" data-line-number="1060"></td>
        <td id="LC1060" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; Relocate the table of contents</span></td>
      </tr>
      <tr>
        <td id="L1061" class="blob-num js-line-number" data-line-number="1061"></td>
        <td id="LC1061" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1062" class="blob-num js-line-number" data-line-number="1062"></td>
        <td id="LC1062" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>[TABLE-OF-CONTENTS<span class="pl-cce">\\</span>]<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1063" class="blob-num js-line-number" data-line-number="1063"></td>
        <td id="LC1063" class="blob-code blob-code-inner js-file-line">      (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1064" class="blob-num js-line-number" data-line-number="1064"></td>
        <td id="LC1064" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\</span>tableofcontents<span class="pl-cce">\\</span>&gt;[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\n</span>?<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1065" class="blob-num js-line-number" data-line-number="1065"></td>
        <td id="LC1065" class="blob-code blob-code-inner js-file-line">	(replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1066" class="blob-num js-line-number" data-line-number="1066"></td>
        <td id="LC1066" class="blob-code blob-code-inner js-file-line">      (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1067" class="blob-num js-line-number" data-line-number="1067"></td>
        <td id="LC1067" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">and</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>[TABLE-OF-CONTENTS<span class="pl-cce">\\</span>]<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1068" class="blob-num js-line-number" data-line-number="1068"></td>
        <td id="LC1068" class="blob-code blob-code-inner js-file-line">	   (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>tableofcontents<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L1069" class="blob-num js-line-number" data-line-number="1069"></td>
        <td id="LC1069" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1070" class="blob-num js-line-number" data-line-number="1070"></td>
        <td id="LC1070" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; Cleanup forced line ends in items where they are not needed</span></td>
      </tr>
      <tr>
        <td id="L1071" class="blob-num js-line-number" data-line-number="1071"></td>
        <td id="LC1071" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1072" class="blob-num js-line-number" data-line-number="1072"></td>
        <td id="LC1072" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (re-search-forward</td>
      </tr>
      <tr>
        <td id="L1073" class="blob-num js-line-number" data-line-number="1073"></td>
        <td id="LC1073" class="blob-code blob-code-inner js-file-line">	    <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\\\</span>item<span class="pl-cce">\\</span>&gt;.*<span class="pl-cce">\\</span>(<span class="pl-cce">\\\\\\\\\\</span>)[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>(<span class="pl-cce">\n\\\\</span>label.*<span class="pl-cce">\\</span>)*<span class="pl-cce">\n\\\\</span>begin<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1074" class="blob-num js-line-number" data-line-number="1074"></td>
        <td id="LC1074" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1075" class="blob-num js-line-number" data-line-number="1075"></td>
        <td id="LC1075" class="blob-code blob-code-inner js-file-line">      (delete-region (match-beginning <span class="pl-c1">1</span>) (match-end <span class="pl-c1">1</span>)))</td>
      </tr>
      <tr>
        <td id="L1076" class="blob-num js-line-number" data-line-number="1076"></td>
        <td id="LC1076" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1077" class="blob-num js-line-number" data-line-number="1077"></td>
        <td id="LC1077" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (re-search-forward</td>
      </tr>
      <tr>
        <td id="L1078" class="blob-num js-line-number" data-line-number="1078"></td>
        <td id="LC1078" class="blob-code blob-code-inner js-file-line">	    <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\\\</span>item<span class="pl-cce">\\</span>&gt;.*<span class="pl-cce">\\</span>(<span class="pl-cce">\\\\\\\\\\</span>)[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>(<span class="pl-cce">\n\\\\</span>label.*<span class="pl-cce">\\</span>)*<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1079" class="blob-num js-line-number" data-line-number="1079"></td>
        <td id="LC1079" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1080" class="blob-num js-line-number" data-line-number="1080"></td>
        <td id="LC1080" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-cce">\n</span> <span class="pl-cce">\t</span>]+<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1081" class="blob-num js-line-number" data-line-number="1081"></td>
        <td id="LC1081" class="blob-code blob-code-inner js-file-line">	  (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1082" class="blob-num js-line-number" data-line-number="1082"></td>
        <td id="LC1082" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1083" class="blob-num js-line-number" data-line-number="1083"></td>
        <td id="LC1083" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; Ensure we have a final newline</span></td>
      </tr>
      <tr>
        <td id="L1084" class="blob-num js-line-number" data-line-number="1084"></td>
        <td id="LC1084" class="blob-code blob-code-inner js-file-line">    (goto-char (point-max))</td>
      </tr>
      <tr>
        <td id="L1085" class="blob-num js-line-number" data-line-number="1085"></td>
        <td id="LC1085" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">or</span> (<span class="pl-k">eq</span> (char-before) <span class="pl-c1">?\n</span>)</td>
      </tr>
      <tr>
        <td id="L1086" class="blob-num js-line-number" data-line-number="1086"></td>
        <td id="LC1086" class="blob-code blob-code-inner js-file-line">	(insert <span class="pl-c1">?\n</span>))</td>
      </tr>
      <tr>
        <td id="L1087" class="blob-num js-line-number" data-line-number="1087"></td>
        <td id="LC1087" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1088" class="blob-num js-line-number" data-line-number="1088"></td>
        <td id="LC1088" class="blob-code blob-code-inner js-file-line">    (run-hooks <span class="pl-c1">&#39;org-export-latex-final-hook</span>)</td>
      </tr>
      <tr>
        <td id="L1089" class="blob-num js-line-number" data-line-number="1089"></td>
        <td id="LC1089" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> to-buffer</td>
      </tr>
      <tr>
        <td id="L1090" class="blob-num js-line-number" data-line-number="1090"></td>
        <td id="LC1090" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">unless</span> (<span class="pl-k">eq</span> major-mode <span class="pl-c1">&#39;latex-mode</span>) (latex-mode))</td>
      </tr>
      <tr>
        <td id="L1091" class="blob-num js-line-number" data-line-number="1091"></td>
        <td id="LC1091" class="blob-code blob-code-inner js-file-line">      (save-buffer))</td>
      </tr>
      <tr>
        <td id="L1092" class="blob-num js-line-number" data-line-number="1092"></td>
        <td id="LC1092" class="blob-code blob-code-inner js-file-line">    (org-export-latex-fix-inputenc)</td>
      </tr>
      <tr>
        <td id="L1093" class="blob-num js-line-number" data-line-number="1093"></td>
        <td id="LC1093" class="blob-code blob-code-inner js-file-line">    (run-hooks <span class="pl-c1">&#39;org-export-latex-after-save-hook</span>)</td>
      </tr>
      <tr>
        <td id="L1094" class="blob-num js-line-number" data-line-number="1094"></td>
        <td id="LC1094" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1095" class="blob-num js-line-number" data-line-number="1095"></td>
        <td id="LC1095" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">or</span> (org-export-push-to-kill-ring <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1096" class="blob-num js-line-number" data-line-number="1096"></td>
        <td id="LC1096" class="blob-code blob-code-inner js-file-line">	(<span class="pl-c1">message</span> <span class="pl-pds">&quot;</span><span class="pl-s">Exporting to LaTeX...done</span><span class="pl-pds">&quot;</span>))</td>
      </tr>
      <tr>
        <td id="L1097" class="blob-num js-line-number" data-line-number="1097"></td>
        <td id="LC1097" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">prog1</span></td>
      </tr>
      <tr>
        <td id="L1098" class="blob-num js-line-number" data-line-number="1098"></td>
        <td id="LC1098" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">if</span> (<span class="pl-k">eq</span> to-buffer <span class="pl-c1">&#39;string</span>)</td>
      </tr>
      <tr>
        <td id="L1099" class="blob-num js-line-number" data-line-number="1099"></td>
        <td id="LC1099" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">prog1</span> (buffer-substring (point-min) (point-max))</td>
      </tr>
      <tr>
        <td id="L1100" class="blob-num js-line-number" data-line-number="1100"></td>
        <td id="LC1100" class="blob-code blob-code-inner js-file-line">	      (kill-buffer (current-buffer)))</td>
      </tr>
      <tr>
        <td id="L1101" class="blob-num js-line-number" data-line-number="1101"></td>
        <td id="LC1101" class="blob-code blob-code-inner js-file-line">	  (current-buffer))</td>
      </tr>
      <tr>
        <td id="L1102" class="blob-num js-line-number" data-line-number="1102"></td>
        <td id="LC1102" class="blob-code blob-code-inner js-file-line">      (set-window-configuration wcf))))</td>
      </tr>
      <tr>
        <td id="L1103" class="blob-num js-line-number" data-line-number="1103"></td>
        <td id="LC1103" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1104" class="blob-num js-line-number" data-line-number="1104"></td>
        <td id="LC1104" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L1105" class="blob-num js-line-number" data-line-number="1105"></td>
        <td id="LC1105" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-as-pdf</span> (<span class="pl-v">arg</span> <span class="pl-c1">&amp;optional</span> <span class="pl-v">hidden</span> <span class="pl-v">ext-plist</span></td>
      </tr>
      <tr>
        <td id="L1106" class="blob-num js-line-number" data-line-number="1106"></td>
        <td id="LC1106" class="blob-code blob-code-inner js-file-line">			      <span class="pl-v">to-buffer</span> <span class="pl-v">body-only</span> <span class="pl-v">pub-dir</span>)</td>
      </tr>
      <tr>
        <td id="L1107" class="blob-num js-line-number" data-line-number="1107"></td>
        <td id="LC1107" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export as LaTeX, then process through to PDF.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1108" class="blob-num js-line-number" data-line-number="1108"></td>
        <td id="LC1108" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">interactive</span> <span class="pl-s"><span class="pl-pds">&quot;</span>P<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1109" class="blob-num js-line-number" data-line-number="1109"></td>
        <td id="LC1109" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">message</span> <span class="pl-pds">&quot;</span><span class="pl-s">Exporting to PDF...</span><span class="pl-pds">&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L1110" class="blob-num js-line-number" data-line-number="1110"></td>
        <td id="LC1110" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let*</span> ((wconfig (current-window-configuration))</td>
      </tr>
      <tr>
        <td id="L1111" class="blob-num js-line-number" data-line-number="1111"></td>
        <td id="LC1111" class="blob-code blob-code-inner js-file-line">	 (lbuf (org-export-as-latex arg hidden ext-plist</td>
      </tr>
      <tr>
        <td id="L1112" class="blob-num js-line-number" data-line-number="1112"></td>
        <td id="LC1112" class="blob-code blob-code-inner js-file-line">				    to-buffer body-only pub-dir))</td>
      </tr>
      <tr>
        <td id="L1113" class="blob-num js-line-number" data-line-number="1113"></td>
        <td id="LC1113" class="blob-code blob-code-inner js-file-line">	 (file (buffer-file-name lbuf))</td>
      </tr>
      <tr>
        <td id="L1114" class="blob-num js-line-number" data-line-number="1114"></td>
        <td id="LC1114" class="blob-code blob-code-inner js-file-line">	 (base (file-name-sans-extension (buffer-file-name lbuf)))</td>
      </tr>
      <tr>
        <td id="L1115" class="blob-num js-line-number" data-line-number="1115"></td>
        <td id="LC1115" class="blob-code blob-code-inner js-file-line">	 (pdffile (concat base <span class="pl-s"><span class="pl-pds">&quot;</span>.pdf<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1116" class="blob-num js-line-number" data-line-number="1116"></td>
        <td id="LC1116" class="blob-code blob-code-inner js-file-line">	 (cmds (<span class="pl-k">if</span> (<span class="pl-k">eq</span> org-export-latex-listings <span class="pl-c1">&#39;minted</span>)</td>
      </tr>
      <tr>
        <td id="L1117" class="blob-num js-line-number" data-line-number="1117"></td>
        <td id="LC1117" class="blob-code blob-code-inner js-file-line">		   <span class="pl-c">;; automatically add -shell-escape when needed</span></td>
      </tr>
      <tr>
        <td id="L1118" class="blob-num js-line-number" data-line-number="1118"></td>
        <td id="LC1118" class="blob-code blob-code-inner js-file-line">		   (<span class="pl-k">mapcar</span> (<span class="pl-k">lambda</span> (<span class="pl-v">cmd</span>)</td>
      </tr>
      <tr>
        <td id="L1119" class="blob-num js-line-number" data-line-number="1119"></td>
        <td id="LC1119" class="blob-code blob-code-inner js-file-line">			     (replace-regexp-in-string</td>
      </tr>
      <tr>
        <td id="L1120" class="blob-num js-line-number" data-line-number="1120"></td>
        <td id="LC1120" class="blob-code blob-code-inner js-file-line">			      <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex <span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>pdflatex -shell-escape <span class="pl-pds">&quot;</span></span> cmd))</td>
      </tr>
      <tr>
        <td id="L1121" class="blob-num js-line-number" data-line-number="1121"></td>
        <td id="LC1121" class="blob-code blob-code-inner js-file-line">			   org-latex-to-pdf-process)</td>
      </tr>
      <tr>
        <td id="L1122" class="blob-num js-line-number" data-line-number="1122"></td>
        <td id="LC1122" class="blob-code blob-code-inner js-file-line">		 org-latex-to-pdf-process))</td>
      </tr>
      <tr>
        <td id="L1123" class="blob-num js-line-number" data-line-number="1123"></td>
        <td id="LC1123" class="blob-code blob-code-inner js-file-line">	 (outbuf (get-buffer-create <span class="pl-s"><span class="pl-pds">&quot;</span>*Org PDF LaTeX Output*<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1124" class="blob-num js-line-number" data-line-number="1124"></td>
        <td id="LC1124" class="blob-code blob-code-inner js-file-line">	 (bibtex-p (with-current-buffer lbuf</td>
      </tr>
      <tr>
        <td id="L1125" class="blob-num js-line-number" data-line-number="1125"></td>
        <td id="LC1125" class="blob-code blob-code-inner js-file-line">		     (save-excursion</td>
      </tr>
      <tr>
        <td id="L1126" class="blob-num js-line-number" data-line-number="1126"></td>
        <td id="LC1126" class="blob-code blob-code-inner js-file-line">		       (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1127" class="blob-num js-line-number" data-line-number="1127"></td>
        <td id="LC1127" class="blob-code blob-code-inner js-file-line">		       (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\</span>bibliography{<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>))))</td>
      </tr>
      <tr>
        <td id="L1128" class="blob-num js-line-number" data-line-number="1128"></td>
        <td id="LC1128" class="blob-code blob-code-inner js-file-line">	 cmd output-dir errors)</td>
      </tr>
      <tr>
        <td id="L1129" class="blob-num js-line-number" data-line-number="1129"></td>
        <td id="LC1129" class="blob-code blob-code-inner js-file-line">    (with-current-buffer outbuf (erase-buffer))</td>
      </tr>
      <tr>
        <td id="L1130" class="blob-num js-line-number" data-line-number="1130"></td>
        <td id="LC1130" class="blob-code blob-code-inner js-file-line">    (<span class="pl-c1">message</span> (concat <span class="pl-s"><span class="pl-pds">&quot;</span>Processing LaTeX file <span class="pl-pds">&quot;</span></span> file <span class="pl-s"><span class="pl-pds">&quot;</span>...<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1131" class="blob-num js-line-number" data-line-number="1131"></td>
        <td id="LC1131" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> output-dir (file-name-directory file))</td>
      </tr>
      <tr>
        <td id="L1132" class="blob-num js-line-number" data-line-number="1132"></td>
        <td id="LC1132" class="blob-code blob-code-inner js-file-line">    (with-current-buffer lbuf</td>
      </tr>
      <tr>
        <td id="L1133" class="blob-num js-line-number" data-line-number="1133"></td>
        <td id="LC1133" class="blob-code blob-code-inner js-file-line">      (save-excursion</td>
      </tr>
      <tr>
        <td id="L1134" class="blob-num js-line-number" data-line-number="1134"></td>
        <td id="LC1134" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">if</span> (<span class="pl-k">and</span> cmds (symbolp cmds))</td>
      </tr>
      <tr>
        <td id="L1135" class="blob-num js-line-number" data-line-number="1135"></td>
        <td id="LC1135" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">funcall</span> cmds (shell-quote-argument file))</td>
      </tr>
      <tr>
        <td id="L1136" class="blob-num js-line-number" data-line-number="1136"></td>
        <td id="LC1136" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">while</span> cmds</td>
      </tr>
      <tr>
        <td id="L1137" class="blob-num js-line-number" data-line-number="1137"></td>
        <td id="LC1137" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> cmd (<span class="pl-k">pop</span> cmds))</td>
      </tr>
      <tr>
        <td id="L1138" class="blob-num js-line-number" data-line-number="1138"></td>
        <td id="LC1138" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">cond</span></td>
      </tr>
      <tr>
        <td id="L1139" class="blob-num js-line-number" data-line-number="1139"></td>
        <td id="LC1139" class="blob-code blob-code-inner js-file-line">	     ((<span class="pl-k">not</span> (<span class="pl-k">listp</span> cmd))</td>
      </tr>
      <tr>
        <td id="L1140" class="blob-num js-line-number" data-line-number="1140"></td>
        <td id="LC1140" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">while</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>%b<span class="pl-pds">&quot;</span></span> cmd)</td>
      </tr>
      <tr>
        <td id="L1141" class="blob-num js-line-number" data-line-number="1141"></td>
        <td id="LC1141" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">setq</span> cmd (replace-match</td>
      </tr>
      <tr>
        <td id="L1142" class="blob-num js-line-number" data-line-number="1142"></td>
        <td id="LC1142" class="blob-code blob-code-inner js-file-line">			   (save-match-data</td>
      </tr>
      <tr>
        <td id="L1143" class="blob-num js-line-number" data-line-number="1143"></td>
        <td id="LC1143" class="blob-code blob-code-inner js-file-line">			     (shell-quote-argument base))</td>
      </tr>
      <tr>
        <td id="L1144" class="blob-num js-line-number" data-line-number="1144"></td>
        <td id="LC1144" class="blob-code blob-code-inner js-file-line">			   <span class="pl-c1">t</span> <span class="pl-c1">t</span> cmd)))</td>
      </tr>
      <tr>
        <td id="L1145" class="blob-num js-line-number" data-line-number="1145"></td>
        <td id="LC1145" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">while</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>%f<span class="pl-pds">&quot;</span></span> cmd)</td>
      </tr>
      <tr>
        <td id="L1146" class="blob-num js-line-number" data-line-number="1146"></td>
        <td id="LC1146" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">setq</span> cmd (replace-match</td>
      </tr>
      <tr>
        <td id="L1147" class="blob-num js-line-number" data-line-number="1147"></td>
        <td id="LC1147" class="blob-code blob-code-inner js-file-line">			   (save-match-data</td>
      </tr>
      <tr>
        <td id="L1148" class="blob-num js-line-number" data-line-number="1148"></td>
        <td id="LC1148" class="blob-code blob-code-inner js-file-line">			     (shell-quote-argument file))</td>
      </tr>
      <tr>
        <td id="L1149" class="blob-num js-line-number" data-line-number="1149"></td>
        <td id="LC1149" class="blob-code blob-code-inner js-file-line">			   <span class="pl-c1">t</span> <span class="pl-c1">t</span> cmd)))</td>
      </tr>
      <tr>
        <td id="L1150" class="blob-num js-line-number" data-line-number="1150"></td>
        <td id="LC1150" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">while</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>%o<span class="pl-pds">&quot;</span></span> cmd)</td>
      </tr>
      <tr>
        <td id="L1151" class="blob-num js-line-number" data-line-number="1151"></td>
        <td id="LC1151" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">setq</span> cmd (replace-match</td>
      </tr>
      <tr>
        <td id="L1152" class="blob-num js-line-number" data-line-number="1152"></td>
        <td id="LC1152" class="blob-code blob-code-inner js-file-line">			   (save-match-data</td>
      </tr>
      <tr>
        <td id="L1153" class="blob-num js-line-number" data-line-number="1153"></td>
        <td id="LC1153" class="blob-code blob-code-inner js-file-line">			     (shell-quote-argument output-dir))</td>
      </tr>
      <tr>
        <td id="L1154" class="blob-num js-line-number" data-line-number="1154"></td>
        <td id="LC1154" class="blob-code blob-code-inner js-file-line">			   <span class="pl-c1">t</span> <span class="pl-c1">t</span> cmd)))</td>
      </tr>
      <tr>
        <td id="L1155" class="blob-num js-line-number" data-line-number="1155"></td>
        <td id="LC1155" class="blob-code blob-code-inner js-file-line">	      (shell-command cmd outbuf)))))))</td>
      </tr>
      <tr>
        <td id="L1156" class="blob-num js-line-number" data-line-number="1156"></td>
        <td id="LC1156" class="blob-code blob-code-inner js-file-line">    (<span class="pl-c1">message</span> (concat <span class="pl-s"><span class="pl-pds">&quot;</span>Processing LaTeX file <span class="pl-pds">&quot;</span></span> file <span class="pl-s"><span class="pl-pds">&quot;</span>...done<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1157" class="blob-num js-line-number" data-line-number="1157"></td>
        <td id="LC1157" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> errors (org-export-latex-get-error outbuf))</td>
      </tr>
      <tr>
        <td id="L1158" class="blob-num js-line-number" data-line-number="1158"></td>
        <td id="LC1158" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> (<span class="pl-k">not</span> (file-exists-p pdffile))</td>
      </tr>
      <tr>
        <td id="L1159" class="blob-num js-line-number" data-line-number="1159"></td>
        <td id="LC1159" class="blob-code blob-code-inner js-file-line">	(<span class="pl-c1">error</span> (concat <span class="pl-s"><span class="pl-pds">&quot;</span>PDF file <span class="pl-pds">&quot;</span></span> pdffile <span class="pl-s"><span class="pl-pds">&quot;</span> was not produced<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1160" class="blob-num js-line-number" data-line-number="1160"></td>
        <td id="LC1160" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-k">if</span> errors (concat <span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span> errors <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1161" class="blob-num js-line-number" data-line-number="1161"></td>
        <td id="LC1161" class="blob-code blob-code-inner js-file-line">      (set-window-configuration wconfig)</td>
      </tr>
      <tr>
        <td id="L1162" class="blob-num js-line-number" data-line-number="1162"></td>
        <td id="LC1162" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">when</span> org-export-pdf-remove-logfiles</td>
      </tr>
      <tr>
        <td id="L1163" class="blob-num js-line-number" data-line-number="1163"></td>
        <td id="LC1163" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">dolist</span> (ext org-export-pdf-logfiles)</td>
      </tr>
      <tr>
        <td id="L1164" class="blob-num js-line-number" data-line-number="1164"></td>
        <td id="LC1164" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> file (concat base <span class="pl-s"><span class="pl-pds">&quot;</span>.<span class="pl-pds">&quot;</span></span> ext))</td>
      </tr>
      <tr>
        <td id="L1165" class="blob-num js-line-number" data-line-number="1165"></td>
        <td id="LC1165" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">and</span> (file-exists-p file) (delete-file file))))</td>
      </tr>
      <tr>
        <td id="L1166" class="blob-num js-line-number" data-line-number="1166"></td>
        <td id="LC1166" class="blob-code blob-code-inner js-file-line">      (<span class="pl-c1">message</span> (concat</td>
      </tr>
      <tr>
        <td id="L1167" class="blob-num js-line-number" data-line-number="1167"></td>
        <td id="LC1167" class="blob-code blob-code-inner js-file-line">		<span class="pl-s"><span class="pl-pds">&quot;</span>Exporting to PDF...done<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1168" class="blob-num js-line-number" data-line-number="1168"></td>
        <td id="LC1168" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">if</span> errors</td>
      </tr>
      <tr>
        <td id="L1169" class="blob-num js-line-number" data-line-number="1169"></td>
        <td id="LC1169" class="blob-code blob-code-inner js-file-line">		    (concat <span class="pl-s"><span class="pl-pds">&quot;</span>, with some errors:<span class="pl-pds">&quot;</span></span> errors)</td>
      </tr>
      <tr>
        <td id="L1170" class="blob-num js-line-number" data-line-number="1170"></td>
        <td id="LC1170" class="blob-code blob-code-inner js-file-line">		  <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1171" class="blob-num js-line-number" data-line-number="1171"></td>
        <td id="LC1171" class="blob-code blob-code-inner js-file-line">      pdffile)))</td>
      </tr>
      <tr>
        <td id="L1172" class="blob-num js-line-number" data-line-number="1172"></td>
        <td id="LC1172" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1173" class="blob-num js-line-number" data-line-number="1173"></td>
        <td id="LC1173" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-get-error</span> (<span class="pl-v">buf</span>)</td>
      </tr>
      <tr>
        <td id="L1174" class="blob-num js-line-number" data-line-number="1174"></td>
        <td id="LC1174" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Collect the kinds of errors that remain in pdflatex processing.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1175" class="blob-num js-line-number" data-line-number="1175"></td>
        <td id="LC1175" class="blob-code blob-code-inner js-file-line">  (with-current-buffer buf</td>
      </tr>
      <tr>
        <td id="L1176" class="blob-num js-line-number" data-line-number="1176"></td>
        <td id="LC1176" class="blob-code blob-code-inner js-file-line">    (save-excursion</td>
      </tr>
      <tr>
        <td id="L1177" class="blob-num js-line-number" data-line-number="1177"></td>
        <td id="LC1177" class="blob-code blob-code-inner js-file-line">      (goto-char (point-max))</td>
      </tr>
      <tr>
        <td id="L1178" class="blob-num js-line-number" data-line-number="1178"></td>
        <td id="LC1178" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">when</span> (re-search-backward <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*This is pdf.*?TeX.*?Version<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1179" class="blob-num js-line-number" data-line-number="1179"></td>
        <td id="LC1179" class="blob-code blob-code-inner js-file-line">	<span class="pl-c">;; OK, we are at the location of the final run</span></td>
      </tr>
      <tr>
        <td id="L1180" class="blob-num js-line-number" data-line-number="1180"></td>
        <td id="LC1180" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">let</span> ((pos (point)) (errors <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>) (case-fold-search <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L1181" class="blob-num js-line-number" data-line-number="1181"></td>
        <td id="LC1181" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">if</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>Reference.*?undefined<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1182" class="blob-num js-line-number" data-line-number="1182"></td>
        <td id="LC1182" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">setq</span> errors (concat errors <span class="pl-s"><span class="pl-pds">&quot;</span> [undefined reference]<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1183" class="blob-num js-line-number" data-line-number="1183"></td>
        <td id="LC1183" class="blob-code blob-code-inner js-file-line">	  (goto-char pos)</td>
      </tr>
      <tr>
        <td id="L1184" class="blob-num js-line-number" data-line-number="1184"></td>
        <td id="LC1184" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">if</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>Citation.*?undefined<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1185" class="blob-num js-line-number" data-line-number="1185"></td>
        <td id="LC1185" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">setq</span> errors (concat errors <span class="pl-s"><span class="pl-pds">&quot;</span> [undefined citation]<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1186" class="blob-num js-line-number" data-line-number="1186"></td>
        <td id="LC1186" class="blob-code blob-code-inner js-file-line">	  (goto-char pos)</td>
      </tr>
      <tr>
        <td id="L1187" class="blob-num js-line-number" data-line-number="1187"></td>
        <td id="LC1187" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">if</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>Undefined control sequence<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1188" class="blob-num js-line-number" data-line-number="1188"></td>
        <td id="LC1188" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">setq</span> errors (concat errors <span class="pl-s"><span class="pl-pds">&quot;</span> [undefined control sequence]<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1189" class="blob-num js-line-number" data-line-number="1189"></td>
        <td id="LC1189" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">and</span> (org-string-nw-p errors) errors))))))</td>
      </tr>
      <tr>
        <td id="L1190" class="blob-num js-line-number" data-line-number="1190"></td>
        <td id="LC1190" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1191" class="blob-num js-line-number" data-line-number="1191"></td>
        <td id="LC1191" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;;###autoload</span></td>
      </tr>
      <tr>
        <td id="L1192" class="blob-num js-line-number" data-line-number="1192"></td>
        <td id="LC1192" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-as-pdf-and-open</span> (<span class="pl-v">arg</span>)</td>
      </tr>
      <tr>
        <td id="L1193" class="blob-num js-line-number" data-line-number="1193"></td>
        <td id="LC1193" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export as LaTeX, then process through to PDF, and open.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1194" class="blob-num js-line-number" data-line-number="1194"></td>
        <td id="LC1194" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">interactive</span> <span class="pl-s"><span class="pl-pds">&quot;</span>P<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1195" class="blob-num js-line-number" data-line-number="1195"></td>
        <td id="LC1195" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((pdffile (org-export-as-pdf arg)))</td>
      </tr>
      <tr>
        <td id="L1196" class="blob-num js-line-number" data-line-number="1196"></td>
        <td id="LC1196" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> pdffile</td>
      </tr>
      <tr>
        <td id="L1197" class="blob-num js-line-number" data-line-number="1197"></td>
        <td id="LC1197" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">progn</span></td>
      </tr>
      <tr>
        <td id="L1198" class="blob-num js-line-number" data-line-number="1198"></td>
        <td id="LC1198" class="blob-code blob-code-inner js-file-line">	  (org-open-file pdffile)</td>
      </tr>
      <tr>
        <td id="L1199" class="blob-num js-line-number" data-line-number="1199"></td>
        <td id="LC1199" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">when</span> org-export-kill-product-buffer-when-displayed</td>
      </tr>
      <tr>
        <td id="L1200" class="blob-num js-line-number" data-line-number="1200"></td>
        <td id="LC1200" class="blob-code blob-code-inner js-file-line">	    (kill-buffer (find-buffer-visiting</td>
      </tr>
      <tr>
        <td id="L1201" class="blob-num js-line-number" data-line-number="1201"></td>
        <td id="LC1201" class="blob-code blob-code-inner js-file-line">			  (concat (file-name-sans-extension (buffer-file-name))</td>
      </tr>
      <tr>
        <td id="L1202" class="blob-num js-line-number" data-line-number="1202"></td>
        <td id="LC1202" class="blob-code blob-code-inner js-file-line">				  <span class="pl-s"><span class="pl-pds">&quot;</span>.tex<span class="pl-pds">&quot;</span></span>)))))</td>
      </tr>
      <tr>
        <td id="L1203" class="blob-num js-line-number" data-line-number="1203"></td>
        <td id="LC1203" class="blob-code blob-code-inner js-file-line">      (<span class="pl-c1">error</span> <span class="pl-pds">&quot;</span><span class="pl-s">PDF file was not produced</span><span class="pl-pds">&quot;</span>))))</td>
      </tr>
      <tr>
        <td id="L1204" class="blob-num js-line-number" data-line-number="1204"></td>
        <td id="LC1204" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1205" class="blob-num js-line-number" data-line-number="1205"></td>
        <td id="LC1205" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Parsing functions:</span></td>
      </tr>
      <tr>
        <td id="L1206" class="blob-num js-line-number" data-line-number="1206"></td>
        <td id="LC1206" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1207" class="blob-num js-line-number" data-line-number="1207"></td>
        <td id="LC1207" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-parse-global</span> (<span class="pl-v">level</span> <span class="pl-v">odd</span>)</td>
      </tr>
      <tr>
        <td id="L1208" class="blob-num js-line-number" data-line-number="1208"></td>
        <td id="LC1208" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Parse the current buffer recursively, starting at LEVEL.</span></td>
      </tr>
      <tr>
        <td id="L1209" class="blob-num js-line-number" data-line-number="1209"></td>
        <td id="LC1209" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If ODD is non-nil, assume the buffer only contains odd sections.</span></td>
      </tr>
      <tr>
        <td id="L1210" class="blob-num js-line-number" data-line-number="1210"></td>
        <td id="LC1210" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Return a list reflecting the document structure.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1211" class="blob-num js-line-number" data-line-number="1211"></td>
        <td id="LC1211" class="blob-code blob-code-inner js-file-line">  (save-excursion</td>
      </tr>
      <tr>
        <td id="L1212" class="blob-num js-line-number" data-line-number="1212"></td>
        <td id="LC1212" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1213" class="blob-num js-line-number" data-line-number="1213"></td>
        <td id="LC1213" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">let*</span> ((cnt <span class="pl-c1">0</span>) output</td>
      </tr>
      <tr>
        <td id="L1214" class="blob-num js-line-number" data-line-number="1214"></td>
        <td id="LC1214" class="blob-code blob-code-inner js-file-line">	   (depth org-export-latex-sectioning-depth))</td>
      </tr>
      <tr>
        <td id="L1215" class="blob-num js-line-number" data-line-number="1215"></td>
        <td id="LC1215" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">while</span> (org-re-search-forward-unprotected</td>
      </tr>
      <tr>
        <td id="L1216" class="blob-num js-line-number" data-line-number="1216"></td>
        <td id="LC1216" class="blob-code blob-code-inner js-file-line">	      (concat <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>(?:<span class="pl-cce">\\</span>*<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>{<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1217" class="blob-num js-line-number" data-line-number="1217"></td>
        <td id="LC1217" class="blob-code blob-code-inner js-file-line">		      (number-to-string (<span class="pl-k">+</span> (<span class="pl-k">if</span> odd <span class="pl-c1">2</span> <span class="pl-c1">1</span>) level))</td>
      </tr>
      <tr>
        <td id="L1218" class="blob-num js-line-number" data-line-number="1218"></td>
        <td id="LC1218" class="blob-code blob-code-inner js-file-line">		      <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>}<span class="pl-cce">\\</span>) <span class="pl-cce">\\</span>(.*<span class="pl-cce">\\</span>)$<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1219" class="blob-num js-line-number" data-line-number="1219"></td>
        <td id="LC1219" class="blob-code blob-code-inner js-file-line">	      <span class="pl-c">;; make sure that there is no upper heading</span></td>
      </tr>
      <tr>
        <td id="L1220" class="blob-num js-line-number" data-line-number="1220"></td>
        <td id="LC1220" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">when</span> (<span class="pl-k">&gt;</span> level <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L1221" class="blob-num js-line-number" data-line-number="1221"></td>
        <td id="LC1221" class="blob-code blob-code-inner js-file-line">		(save-excursion</td>
      </tr>
      <tr>
        <td id="L1222" class="blob-num js-line-number" data-line-number="1222"></td>
        <td id="LC1222" class="blob-code blob-code-inner js-file-line">		  (save-match-data</td>
      </tr>
      <tr>
        <td id="L1223" class="blob-num js-line-number" data-line-number="1223"></td>
        <td id="LC1223" class="blob-code blob-code-inner js-file-line">		    (org-re-search-forward-unprotected</td>
      </tr>
      <tr>
        <td id="L1224" class="blob-num js-line-number" data-line-number="1224"></td>
        <td id="LC1224" class="blob-code blob-code-inner js-file-line">		     (concat <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>(?:<span class="pl-cce">\\</span>*<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>{<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1225" class="blob-num js-line-number" data-line-number="1225"></td>
        <td id="LC1225" class="blob-code blob-code-inner js-file-line">			     (number-to-string level)</td>
      </tr>
      <tr>
        <td id="L1226" class="blob-num js-line-number" data-line-number="1226"></td>
        <td id="LC1226" class="blob-code blob-code-inner js-file-line">			     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>}<span class="pl-cce">\\</span>) <span class="pl-cce">\\</span>(.*<span class="pl-cce">\\</span>)$<span class="pl-pds">&quot;</span></span>) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)))) <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1227" class="blob-num js-line-number" data-line-number="1227"></td>
        <td id="LC1227" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> cnt (1+ cnt))</td>
      </tr>
      <tr>
        <td id="L1228" class="blob-num js-line-number" data-line-number="1228"></td>
        <td id="LC1228" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">let*</span> ((pos (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1229" class="blob-num js-line-number" data-line-number="1229"></td>
        <td id="LC1229" class="blob-code blob-code-inner js-file-line">	       (heading (match-string <span class="pl-c1">2</span>))</td>
      </tr>
      <tr>
        <td id="L1230" class="blob-num js-line-number" data-line-number="1230"></td>
        <td id="LC1230" class="blob-code blob-code-inner js-file-line">	       (nlevel (<span class="pl-k">if</span> odd (<span class="pl-k">/</span> (<span class="pl-k">+</span> <span class="pl-c1">3</span> level) <span class="pl-c1">2</span>) (1+ level))))</td>
      </tr>
      <tr>
        <td id="L1231" class="blob-num js-line-number" data-line-number="1231"></td>
        <td id="LC1231" class="blob-code blob-code-inner js-file-line">	  (save-excursion</td>
      </tr>
      <tr>
        <td id="L1232" class="blob-num js-line-number" data-line-number="1232"></td>
        <td id="LC1232" class="blob-code blob-code-inner js-file-line">	    (narrow-to-region</td>
      </tr>
      <tr>
        <td id="L1233" class="blob-num js-line-number" data-line-number="1233"></td>
        <td id="LC1233" class="blob-code blob-code-inner js-file-line">	     (point)</td>
      </tr>
      <tr>
        <td id="L1234" class="blob-num js-line-number" data-line-number="1234"></td>
        <td id="LC1234" class="blob-code blob-code-inner js-file-line">	     (save-match-data</td>
      </tr>
      <tr>
        <td id="L1235" class="blob-num js-line-number" data-line-number="1235"></td>
        <td id="LC1235" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">if</span> (org-re-search-forward-unprotected</td>
      </tr>
      <tr>
        <td id="L1236" class="blob-num js-line-number" data-line-number="1236"></td>
        <td id="LC1236" class="blob-code blob-code-inner js-file-line">		    (concat <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>(?:<span class="pl-cce">\\</span>*<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>{<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1237" class="blob-num js-line-number" data-line-number="1237"></td>
        <td id="LC1237" class="blob-code blob-code-inner js-file-line">			    (number-to-string (<span class="pl-k">+</span> (<span class="pl-k">if</span> odd <span class="pl-c1">2</span> <span class="pl-c1">1</span>) level))</td>
      </tr>
      <tr>
        <td id="L1238" class="blob-num js-line-number" data-line-number="1238"></td>
        <td id="LC1238" class="blob-code blob-code-inner js-file-line">			    <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>}<span class="pl-cce">\\</span>) <span class="pl-cce">\\</span>(.*<span class="pl-cce">\\</span>)$<span class="pl-pds">&quot;</span></span>) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1239" class="blob-num js-line-number" data-line-number="1239"></td>
        <td id="LC1239" class="blob-code blob-code-inner js-file-line">		   (match-beginning <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L1240" class="blob-num js-line-number" data-line-number="1240"></td>
        <td id="LC1240" class="blob-code blob-code-inner js-file-line">		 (point-max))))</td>
      </tr>
      <tr>
        <td id="L1241" class="blob-num js-line-number" data-line-number="1241"></td>
        <td id="LC1241" class="blob-code blob-code-inner js-file-line">	    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1242" class="blob-num js-line-number" data-line-number="1242"></td>
        <td id="LC1242" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> output</td>
      </tr>
      <tr>
        <td id="L1243" class="blob-num js-line-number" data-line-number="1243"></td>
        <td id="LC1243" class="blob-code blob-code-inner js-file-line">		  (<span class="pl-k">append</span> output</td>
      </tr>
      <tr>
        <td id="L1244" class="blob-num js-line-number" data-line-number="1244"></td>
        <td id="LC1244" class="blob-code blob-code-inner js-file-line">			  (<span class="pl-k">list</span></td>
      </tr>
      <tr>
        <td id="L1245" class="blob-num js-line-number" data-line-number="1245"></td>
        <td id="LC1245" class="blob-code blob-code-inner js-file-line">			   (<span class="pl-k">list</span></td>
      </tr>
      <tr>
        <td id="L1246" class="blob-num js-line-number" data-line-number="1246"></td>
        <td id="LC1246" class="blob-code blob-code-inner js-file-line">			    `(pos <span class="pl-k">.</span> ,pos)</td>
      </tr>
      <tr>
        <td id="L1247" class="blob-num js-line-number" data-line-number="1247"></td>
        <td id="LC1247" class="blob-code blob-code-inner js-file-line">			    `(level <span class="pl-k">.</span> ,nlevel)</td>
      </tr>
      <tr>
        <td id="L1248" class="blob-num js-line-number" data-line-number="1248"></td>
        <td id="LC1248" class="blob-code blob-code-inner js-file-line">			    `(occur <span class="pl-k">.</span> ,cnt)</td>
      </tr>
      <tr>
        <td id="L1249" class="blob-num js-line-number" data-line-number="1249"></td>
        <td id="LC1249" class="blob-code blob-code-inner js-file-line">			    `(heading <span class="pl-k">.</span> ,heading)</td>
      </tr>
      <tr>
        <td id="L1250" class="blob-num js-line-number" data-line-number="1250"></td>
        <td id="LC1250" class="blob-code blob-code-inner js-file-line">			    `(content <span class="pl-k">.</span> ,(org-export-latex-parse-content))</td>
      </tr>
      <tr>
        <td id="L1251" class="blob-num js-line-number" data-line-number="1251"></td>
        <td id="LC1251" class="blob-code blob-code-inner js-file-line">			    `(subcontent <span class="pl-k">.</span> ,(org-export-latex-parse-subcontent</td>
      </tr>
      <tr>
        <td id="L1252" class="blob-num js-line-number" data-line-number="1252"></td>
        <td id="LC1252" class="blob-code blob-code-inner js-file-line">					     level odd)))))))</td>
      </tr>
      <tr>
        <td id="L1253" class="blob-num js-line-number" data-line-number="1253"></td>
        <td id="LC1253" class="blob-code blob-code-inner js-file-line">	  (widen)))</td>
      </tr>
      <tr>
        <td id="L1254" class="blob-num js-line-number" data-line-number="1254"></td>
        <td id="LC1254" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">list</span> output))))</td>
      </tr>
      <tr>
        <td id="L1255" class="blob-num js-line-number" data-line-number="1255"></td>
        <td id="LC1255" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1256" class="blob-num js-line-number" data-line-number="1256"></td>
        <td id="LC1256" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-parse-content</span> ()</td>
      </tr>
      <tr>
        <td id="L1257" class="blob-num js-line-number" data-line-number="1257"></td>
        <td id="LC1257" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Extract the content of a section.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1258" class="blob-num js-line-number" data-line-number="1258"></td>
        <td id="LC1258" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((beg (point))</td>
      </tr>
      <tr>
        <td id="L1259" class="blob-num js-line-number" data-line-number="1259"></td>
        <td id="LC1259" class="blob-code blob-code-inner js-file-line">	(end (<span class="pl-k">if</span> (org-re-search-forward-unprotected <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>*<span class="pl-cce">\\</span>)+ .*$<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1260" class="blob-num js-line-number" data-line-number="1260"></td>
        <td id="LC1260" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">progn</span> (beginning-of-line) (point))</td>
      </tr>
      <tr>
        <td id="L1261" class="blob-num js-line-number" data-line-number="1261"></td>
        <td id="LC1261" class="blob-code blob-code-inner js-file-line">	       (point-max))))</td>
      </tr>
      <tr>
        <td id="L1262" class="blob-num js-line-number" data-line-number="1262"></td>
        <td id="LC1262" class="blob-code blob-code-inner js-file-line">    (buffer-substring beg end)))</td>
      </tr>
      <tr>
        <td id="L1263" class="blob-num js-line-number" data-line-number="1263"></td>
        <td id="LC1263" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1264" class="blob-num js-line-number" data-line-number="1264"></td>
        <td id="LC1264" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-parse-subcontent</span> (<span class="pl-v">level</span> <span class="pl-v">odd</span>)</td>
      </tr>
      <tr>
        <td id="L1265" class="blob-num js-line-number" data-line-number="1265"></td>
        <td id="LC1265" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Extract the subcontent of a section at LEVEL.</span></td>
      </tr>
      <tr>
        <td id="L1266" class="blob-num js-line-number" data-line-number="1266"></td>
        <td id="LC1266" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If ODD Is non-nil, assume subcontent only contains odd sections.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1267" class="blob-num js-line-number" data-line-number="1267"></td>
        <td id="LC1267" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (<span class="pl-k">not</span> (org-re-search-forward-unprotected</td>
      </tr>
      <tr>
        <td id="L1268" class="blob-num js-line-number" data-line-number="1268"></td>
        <td id="LC1268" class="blob-code blob-code-inner js-file-line">	    (concat <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>(?:<span class="pl-cce">\\</span>*<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>{<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1269" class="blob-num js-line-number" data-line-number="1269"></td>
        <td id="LC1269" class="blob-code blob-code-inner js-file-line">		    (number-to-string (<span class="pl-k">+</span> (<span class="pl-k">if</span> odd <span class="pl-c1">4</span> <span class="pl-c1">2</span>) level))</td>
      </tr>
      <tr>
        <td id="L1270" class="blob-num js-line-number" data-line-number="1270"></td>
        <td id="LC1270" class="blob-code blob-code-inner js-file-line">		    <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>}<span class="pl-cce">\\</span>) <span class="pl-cce">\\</span>(.*<span class="pl-cce">\\</span>)$<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1271" class="blob-num js-line-number" data-line-number="1271"></td>
        <td id="LC1271" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">nil</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L1272" class="blob-num js-line-number" data-line-number="1272"></td>
        <td id="LC1272" class="blob-code blob-code-inner js-file-line">      <span class="pl-c1">nil</span> <span class="pl-c">; subcontent is nil</span></td>
      </tr>
      <tr>
        <td id="L1273" class="blob-num js-line-number" data-line-number="1273"></td>
        <td id="LC1273" class="blob-code blob-code-inner js-file-line">    (org-export-latex-parse-global (<span class="pl-k">+</span> (<span class="pl-k">if</span> odd <span class="pl-c1">2</span> <span class="pl-c1">1</span>) level) odd)))</td>
      </tr>
      <tr>
        <td id="L1274" class="blob-num js-line-number" data-line-number="1274"></td>
        <td id="LC1274" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1275" class="blob-num js-line-number" data-line-number="1275"></td>
        <td id="LC1275" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Rendering functions:</span></td>
      </tr>
      <tr>
        <td id="L1276" class="blob-num js-line-number" data-line-number="1276"></td>
        <td id="LC1276" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-global</span> (<span class="pl-v">content</span>)</td>
      </tr>
      <tr>
        <td id="L1277" class="blob-num js-line-number" data-line-number="1277"></td>
        <td id="LC1277" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export CONTENT to LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L1278" class="blob-num js-line-number" data-line-number="1278"></td>
        <td id="LC1278" class="blob-code blob-code-inner js-file-line"><span class="pl-s">CONTENT is an element of the list produced by</span></td>
      </tr>
      <tr>
        <td id="L1279" class="blob-num js-line-number" data-line-number="1279"></td>
        <td id="LC1279" class="blob-code blob-code-inner js-file-line"><span class="pl-s">`org-export-latex-parse-global&#39;.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1280" class="blob-num js-line-number" data-line-number="1280"></td>
        <td id="LC1280" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (<span class="pl-k">eq</span> (<span class="pl-k">car</span> content) <span class="pl-c1">&#39;subcontent</span>)</td>
      </tr>
      <tr>
        <td id="L1281" class="blob-num js-line-number" data-line-number="1281"></td>
        <td id="LC1281" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">mapc</span> <span class="pl-c1">&#39;org-export-latex-sub</span> (<span class="pl-k">cdr</span> content))</td>
      </tr>
      <tr>
        <td id="L1282" class="blob-num js-line-number" data-line-number="1282"></td>
        <td id="LC1282" class="blob-code blob-code-inner js-file-line">    (org-export-latex-sub (<span class="pl-k">car</span> content))))</td>
      </tr>
      <tr>
        <td id="L1283" class="blob-num js-line-number" data-line-number="1283"></td>
        <td id="LC1283" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1284" class="blob-num js-line-number" data-line-number="1284"></td>
        <td id="LC1284" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-sub</span> (<span class="pl-v">subcontent</span>)</td>
      </tr>
      <tr>
        <td id="L1285" class="blob-num js-line-number" data-line-number="1285"></td>
        <td id="LC1285" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export the list SUBCONTENT to LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L1286" class="blob-num js-line-number" data-line-number="1286"></td>
        <td id="LC1286" class="blob-code blob-code-inner js-file-line"><span class="pl-s">SUBCONTENT is an alist containing information about the headline</span></td>
      </tr>
      <tr>
        <td id="L1287" class="blob-num js-line-number" data-line-number="1287"></td>
        <td id="LC1287" class="blob-code blob-code-inner js-file-line"><span class="pl-s">and its content.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1288" class="blob-num js-line-number" data-line-number="1288"></td>
        <td id="LC1288" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((num (plist-get org-export-latex-options-plist <span class="pl-c1">:section-numbers</span>)))</td>
      </tr>
      <tr>
        <td id="L1289" class="blob-num js-line-number" data-line-number="1289"></td>
        <td id="LC1289" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">mapc</span> (lambda(x) (org-export-latex-subcontent x num)) subcontent)))</td>
      </tr>
      <tr>
        <td id="L1290" class="blob-num js-line-number" data-line-number="1290"></td>
        <td id="LC1290" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1291" class="blob-num js-line-number" data-line-number="1291"></td>
        <td id="LC1291" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-subcontent</span> (<span class="pl-v">subcontent</span> <span class="pl-v">num</span>)</td>
      </tr>
      <tr>
        <td id="L1292" class="blob-num js-line-number" data-line-number="1292"></td>
        <td id="LC1292" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export each cell of SUBCONTENT to LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L1293" class="blob-num js-line-number" data-line-number="1293"></td>
        <td id="LC1293" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If NUM is non-nil export numbered sections, otherwise use unnumbered</span></td>
      </tr>
      <tr>
        <td id="L1294" class="blob-num js-line-number" data-line-number="1294"></td>
        <td id="LC1294" class="blob-code blob-code-inner js-file-line"><span class="pl-s">sections.  If NUM is an integer, export the highest NUM levels as</span></td>
      </tr>
      <tr>
        <td id="L1295" class="blob-num js-line-number" data-line-number="1295"></td>
        <td id="LC1295" class="blob-code blob-code-inner js-file-line"><span class="pl-s">numbered sections and lower levels as unnumbered sections.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1296" class="blob-num js-line-number" data-line-number="1296"></td>
        <td id="LC1296" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let*</span> ((heading (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> <span class="pl-c1">&#39;heading</span> subcontent)))</td>
      </tr>
      <tr>
        <td id="L1297" class="blob-num js-line-number" data-line-number="1297"></td>
        <td id="LC1297" class="blob-code blob-code-inner js-file-line">	 (level (<span class="pl-k">-</span> (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> <span class="pl-c1">&#39;level</span> subcontent))</td>
      </tr>
      <tr>
        <td id="L1298" class="blob-num js-line-number" data-line-number="1298"></td>
        <td id="LC1298" class="blob-code blob-code-inner js-file-line">		   org-export-latex-add-level))</td>
      </tr>
      <tr>
        <td id="L1299" class="blob-num js-line-number" data-line-number="1299"></td>
        <td id="LC1299" class="blob-code blob-code-inner js-file-line">	 (occur (number-to-string (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> <span class="pl-c1">&#39;occur</span> subcontent))))</td>
      </tr>
      <tr>
        <td id="L1300" class="blob-num js-line-number" data-line-number="1300"></td>
        <td id="LC1300" class="blob-code blob-code-inner js-file-line">	 (content (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> <span class="pl-c1">&#39;content</span> subcontent)))</td>
      </tr>
      <tr>
        <td id="L1301" class="blob-num js-line-number" data-line-number="1301"></td>
        <td id="LC1301" class="blob-code blob-code-inner js-file-line">	 (subcontent (<span class="pl-k">cadr</span> (<span class="pl-k">assoc</span> <span class="pl-c1">&#39;subcontent</span> subcontent)))</td>
      </tr>
      <tr>
        <td id="L1302" class="blob-num js-line-number" data-line-number="1302"></td>
        <td id="LC1302" class="blob-code blob-code-inner js-file-line">	 (label (org-get-text-property-any <span class="pl-c1">0</span> <span class="pl-c1">&#39;target</span> heading))</td>
      </tr>
      <tr>
        <td id="L1303" class="blob-num js-line-number" data-line-number="1303"></td>
        <td id="LC1303" class="blob-code blob-code-inner js-file-line">	 (label-list (<span class="pl-k">cons</span> label (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> label</td>
      </tr>
      <tr>
        <td id="L1304" class="blob-num js-line-number" data-line-number="1304"></td>
        <td id="LC1304" class="blob-code blob-code-inner js-file-line">					     org-export-target-aliases))))</td>
      </tr>
      <tr>
        <td id="L1305" class="blob-num js-line-number" data-line-number="1305"></td>
        <td id="LC1305" class="blob-code blob-code-inner js-file-line">	 (sectioning org-export-latex-sectioning)</td>
      </tr>
      <tr>
        <td id="L1306" class="blob-num js-line-number" data-line-number="1306"></td>
        <td id="LC1306" class="blob-code blob-code-inner js-file-line">	 (depth org-export-latex-sectioning-depth)</td>
      </tr>
      <tr>
        <td id="L1307" class="blob-num js-line-number" data-line-number="1307"></td>
        <td id="LC1307" class="blob-code blob-code-inner js-file-line">	 main-heading sub-heading ctnt)</td>
      </tr>
      <tr>
        <td id="L1308" class="blob-num js-line-number" data-line-number="1308"></td>
        <td id="LC1308" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (symbolp (<span class="pl-k">car</span> sectioning))</td>
      </tr>
      <tr>
        <td id="L1309" class="blob-num js-line-number" data-line-number="1309"></td>
        <td id="LC1309" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> sectioning (<span class="pl-k">funcall</span> (<span class="pl-k">car</span> sectioning) level heading))</td>
      </tr>
      <tr>
        <td id="L1310" class="blob-num js-line-number" data-line-number="1310"></td>
        <td id="LC1310" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">when</span> sectioning</td>
      </tr>
      <tr>
        <td id="L1311" class="blob-num js-line-number" data-line-number="1311"></td>
        <td id="LC1311" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> heading (<span class="pl-k">car</span> sectioning)</td>
      </tr>
      <tr>
        <td id="L1312" class="blob-num js-line-number" data-line-number="1312"></td>
        <td id="LC1312" class="blob-code blob-code-inner js-file-line">	      sectioning (<span class="pl-k">cdr</span> sectioning)</td>
      </tr>
      <tr>
        <td id="L1313" class="blob-num js-line-number" data-line-number="1313"></td>
        <td id="LC1313" class="blob-code blob-code-inner js-file-line">	      <span class="pl-c">;; target property migh have changed...</span></td>
      </tr>
      <tr>
        <td id="L1314" class="blob-num js-line-number" data-line-number="1314"></td>
        <td id="LC1314" class="blob-code blob-code-inner js-file-line">	      label (org-get-text-property-any <span class="pl-c1">0</span> <span class="pl-c1">&#39;target</span> heading)</td>
      </tr>
      <tr>
        <td id="L1315" class="blob-num js-line-number" data-line-number="1315"></td>
        <td id="LC1315" class="blob-code blob-code-inner js-file-line">	      label-list (<span class="pl-k">cons</span> label (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> label</td>
      </tr>
      <tr>
        <td id="L1316" class="blob-num js-line-number" data-line-number="1316"></td>
        <td id="LC1316" class="blob-code blob-code-inner js-file-line">						 org-export-target-aliases)))))</td>
      </tr>
      <tr>
        <td id="L1317" class="blob-num js-line-number" data-line-number="1317"></td>
        <td id="LC1317" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> sectioning (<span class="pl-k">setq</span> sectioning (<span class="pl-k">make-list</span> <span class="pl-c1">10</span> sectioning)))</td>
      </tr>
      <tr>
        <td id="L1318" class="blob-num js-line-number" data-line-number="1318"></td>
        <td id="LC1318" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> depth (<span class="pl-k">if</span> sectioning <span class="pl-c1">10000</span> <span class="pl-c1">0</span>)))</td>
      </tr>
      <tr>
        <td id="L1319" class="blob-num js-line-number" data-line-number="1319"></td>
        <td id="LC1319" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\\\\\\\</span>[ <span class="pl-cce">\t</span>]*<span class="pl-pds">&quot;</span></span> heading)</td>
      </tr>
      <tr>
        <td id="L1320" class="blob-num js-line-number" data-line-number="1320"></td>
        <td id="LC1320" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> main-heading (substring heading <span class="pl-c1">0</span> (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1321" class="blob-num js-line-number" data-line-number="1321"></td>
        <td id="LC1321" class="blob-code blob-code-inner js-file-line">	      sub-heading (substring heading (match-end <span class="pl-c1">0</span>))))</td>
      </tr>
      <tr>
        <td id="L1322" class="blob-num js-line-number" data-line-number="1322"></td>
        <td id="LC1322" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> heading (org-export-latex-fontify-headline heading)</td>
      </tr>
      <tr>
        <td id="L1323" class="blob-num js-line-number" data-line-number="1323"></td>
        <td id="LC1323" class="blob-code blob-code-inner js-file-line">	  sub-heading (<span class="pl-k">and</span> sub-heading</td>
      </tr>
      <tr>
        <td id="L1324" class="blob-num js-line-number" data-line-number="1324"></td>
        <td id="LC1324" class="blob-code blob-code-inner js-file-line">			   (org-export-latex-fontify-headline sub-heading))</td>
      </tr>
      <tr>
        <td id="L1325" class="blob-num js-line-number" data-line-number="1325"></td>
        <td id="LC1325" class="blob-code blob-code-inner js-file-line">	  main-heading (<span class="pl-k">and</span> main-heading</td>
      </tr>
      <tr>
        <td id="L1326" class="blob-num js-line-number" data-line-number="1326"></td>
        <td id="LC1326" class="blob-code blob-code-inner js-file-line">			    (org-export-latex-fontify-headline main-heading)))</td>
      </tr>
      <tr>
        <td id="L1327" class="blob-num js-line-number" data-line-number="1327"></td>
        <td id="LC1327" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">cond</span></td>
      </tr>
      <tr>
        <td id="L1328" class="blob-num js-line-number" data-line-number="1328"></td>
        <td id="LC1328" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; Normal conversion</span></td>
      </tr>
      <tr>
        <td id="L1329" class="blob-num js-line-number" data-line-number="1329"></td>
        <td id="LC1329" class="blob-code blob-code-inner js-file-line">     ((<span class="pl-k">&lt;</span>= level depth)</td>
      </tr>
      <tr>
        <td id="L1330" class="blob-num js-line-number" data-line-number="1330"></td>
        <td id="LC1330" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">let*</span> ((sec (<span class="pl-k">nth</span> (1- level) sectioning))</td>
      </tr>
      <tr>
        <td id="L1331" class="blob-num js-line-number" data-line-number="1331"></td>
        <td id="LC1331" class="blob-code blob-code-inner js-file-line">	     (num (<span class="pl-k">if</span> (integerp num)</td>
      </tr>
      <tr>
        <td id="L1332" class="blob-num js-line-number" data-line-number="1332"></td>
        <td id="LC1332" class="blob-code blob-code-inner js-file-line">		      (<span class="pl-k">&gt;</span>= num level)</td>
      </tr>
      <tr>
        <td id="L1333" class="blob-num js-line-number" data-line-number="1333"></td>
        <td id="LC1333" class="blob-code blob-code-inner js-file-line">		    num))</td>
      </tr>
      <tr>
        <td id="L1334" class="blob-num js-line-number" data-line-number="1334"></td>
        <td id="LC1334" class="blob-code blob-code-inner js-file-line">	     start end)</td>
      </tr>
      <tr>
        <td id="L1335" class="blob-num js-line-number" data-line-number="1335"></td>
        <td id="LC1335" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">if</span> (<span class="pl-k">consp</span> (<span class="pl-k">cdr</span> sec))</td>
      </tr>
      <tr>
        <td id="L1336" class="blob-num js-line-number" data-line-number="1336"></td>
        <td id="LC1336" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> start (<span class="pl-k">nth</span> (<span class="pl-k">if</span> num <span class="pl-c1">0</span> <span class="pl-c1">2</span>) sec)</td>
      </tr>
      <tr>
        <td id="L1337" class="blob-num js-line-number" data-line-number="1337"></td>
        <td id="LC1337" class="blob-code blob-code-inner js-file-line">		  end (<span class="pl-k">nth</span> (<span class="pl-k">if</span> num <span class="pl-c1">1</span> <span class="pl-c1">3</span>) sec))</td>
      </tr>
      <tr>
        <td id="L1338" class="blob-num js-line-number" data-line-number="1338"></td>
        <td id="LC1338" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> start (<span class="pl-k">if</span> num (<span class="pl-k">car</span> sec) (<span class="pl-k">cdr</span> sec))))</td>
      </tr>
      <tr>
        <td id="L1339" class="blob-num js-line-number" data-line-number="1339"></td>
        <td id="LC1339" class="blob-code blob-code-inner js-file-line">	(insert (<span class="pl-c1">format</span> start (<span class="pl-k">if</span> main-heading main-heading heading)</td>
      </tr>
      <tr>
        <td id="L1340" class="blob-num js-line-number" data-line-number="1340"></td>
        <td id="LC1340" class="blob-code blob-code-inner js-file-line">			(<span class="pl-k">or</span> sub-heading <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1341" class="blob-num js-line-number" data-line-number="1341"></td>
        <td id="LC1341" class="blob-code blob-code-inner js-file-line">	(insert	<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1342" class="blob-num js-line-number" data-line-number="1342"></td>
        <td id="LC1342" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">when</span> label</td>
      </tr>
      <tr>
        <td id="L1343" class="blob-num js-line-number" data-line-number="1343"></td>
        <td id="LC1343" class="blob-code blob-code-inner js-file-line">	  (insert (mapconcat (<span class="pl-k">lambda</span> (<span class="pl-v">l</span>) (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> l))</td>
      </tr>
      <tr>
        <td id="L1344" class="blob-num js-line-number" data-line-number="1344"></td>
        <td id="LC1344" class="blob-code blob-code-inner js-file-line">			     label-list <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1345" class="blob-num js-line-number" data-line-number="1345"></td>
        <td id="LC1345" class="blob-code blob-code-inner js-file-line">	(insert (org-export-latex-content content))</td>
      </tr>
      <tr>
        <td id="L1346" class="blob-num js-line-number" data-line-number="1346"></td>
        <td id="LC1346" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">cond</span> ((stringp subcontent) (insert subcontent))</td>
      </tr>
      <tr>
        <td id="L1347" class="blob-num js-line-number" data-line-number="1347"></td>
        <td id="LC1347" class="blob-code blob-code-inner js-file-line">	      ((<span class="pl-k">listp</span> subcontent)</td>
      </tr>
      <tr>
        <td id="L1348" class="blob-num js-line-number" data-line-number="1348"></td>
        <td id="LC1348" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">while</span> (org-looking-back <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\n</span><span class="pl-pds">&quot;</span></span>) (backward-delete-char <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L1349" class="blob-num js-line-number" data-line-number="1349"></td>
        <td id="LC1349" class="blob-code blob-code-inner js-file-line">	       (org-export-latex-sub subcontent)))</td>
      </tr>
      <tr>
        <td id="L1350" class="blob-num js-line-number" data-line-number="1350"></td>
        <td id="LC1350" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">when</span> (<span class="pl-k">and</span> end (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[^ <span class="pl-cce">\t</span>]<span class="pl-pds">&quot;</span></span> end))</td>
      </tr>
      <tr>
        <td id="L1351" class="blob-num js-line-number" data-line-number="1351"></td>
        <td id="LC1351" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">let</span> ((hook (org-get-text-property-any <span class="pl-c1">0</span> <span class="pl-c1">&#39;org-insert-hook</span> end)))</td>
      </tr>
      <tr>
        <td id="L1352" class="blob-num js-line-number" data-line-number="1352"></td>
        <td id="LC1352" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">and</span> (functionp hook) (<span class="pl-k">funcall</span> hook)))</td>
      </tr>
      <tr>
        <td id="L1353" class="blob-num js-line-number" data-line-number="1353"></td>
        <td id="LC1353" class="blob-code blob-code-inner js-file-line">	  (insert end <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L1354" class="blob-num js-line-number" data-line-number="1354"></td>
        <td id="LC1354" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; At a level under the hl option: we can drop this subsection</span></td>
      </tr>
      <tr>
        <td id="L1355" class="blob-num js-line-number" data-line-number="1355"></td>
        <td id="LC1355" class="blob-code blob-code-inner js-file-line">     ((<span class="pl-k">&gt;</span> level depth)</td>
      </tr>
      <tr>
        <td id="L1356" class="blob-num js-line-number" data-line-number="1356"></td>
        <td id="LC1356" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">cond</span> ((<span class="pl-k">eq</span> org-export-latex-low-levels <span class="pl-c1">&#39;description</span>)</td>
      </tr>
      <tr>
        <td id="L1357" class="blob-num js-line-number" data-line-number="1357"></td>
        <td id="LC1357" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>% ends low level$<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1358" class="blob-num js-line-number" data-line-number="1358"></td>
        <td id="LC1358" class="blob-code blob-code-inner js-file-line">			       (buffer-substring (point-at-bol <span class="pl-c1">0</span>) (point)))</td>
      </tr>
      <tr>
        <td id="L1359" class="blob-num js-line-number" data-line-number="1359"></td>
        <td id="LC1359" class="blob-code blob-code-inner js-file-line">		 (delete-region (point-at-bol <span class="pl-c1">0</span>) (point))</td>
      </tr>
      <tr>
        <td id="L1360" class="blob-num js-line-number" data-line-number="1360"></td>
        <td id="LC1360" class="blob-code blob-code-inner js-file-line">	       (insert <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{description}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1361" class="blob-num js-line-number" data-line-number="1361"></td>
        <td id="LC1361" class="blob-code blob-code-inner js-file-line">	     (insert (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\n\\</span>item[<span class="pl-c1">%s</span>]<span class="pl-c1">%s</span>~<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1362" class="blob-num js-line-number" data-line-number="1362"></td>
        <td id="LC1362" class="blob-code blob-code-inner js-file-line">			     heading</td>
      </tr>
      <tr>
        <td id="L1363" class="blob-num js-line-number" data-line-number="1363"></td>
        <td id="LC1363" class="blob-code blob-code-inner js-file-line">			     (<span class="pl-k">if</span> label (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> label) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1364" class="blob-num js-line-number" data-line-number="1364"></td>
        <td id="LC1364" class="blob-code blob-code-inner js-file-line">	     (insert (org-export-latex-content content))</td>
      </tr>
      <tr>
        <td id="L1365" class="blob-num js-line-number" data-line-number="1365"></td>
        <td id="LC1365" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">cond</span> ((stringp subcontent) (insert subcontent))</td>
      </tr>
      <tr>
        <td id="L1366" class="blob-num js-line-number" data-line-number="1366"></td>
        <td id="LC1366" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">listp</span> subcontent) (org-export-latex-sub subcontent)))</td>
      </tr>
      <tr>
        <td id="L1367" class="blob-num js-line-number" data-line-number="1367"></td>
        <td id="LC1367" class="blob-code blob-code-inner js-file-line">	     (insert <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{description} % ends low level<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1368" class="blob-num js-line-number" data-line-number="1368"></td>
        <td id="LC1368" class="blob-code blob-code-inner js-file-line">	    ((memq org-export-latex-low-levels &#39;(itemize enumerate))</td>
      </tr>
      <tr>
        <td id="L1369" class="blob-num js-line-number" data-line-number="1369"></td>
        <td id="LC1369" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>% ends low level$<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1370" class="blob-num js-line-number" data-line-number="1370"></td>
        <td id="LC1370" class="blob-code blob-code-inner js-file-line">			       (buffer-substring (point-at-bol <span class="pl-c1">0</span>) (point)))</td>
      </tr>
      <tr>
        <td id="L1371" class="blob-num js-line-number" data-line-number="1371"></td>
        <td id="LC1371" class="blob-code blob-code-inner js-file-line">		 (delete-region (point-at-bol <span class="pl-c1">0</span>) (point))</td>
      </tr>
      <tr>
        <td id="L1372" class="blob-num js-line-number" data-line-number="1372"></td>
        <td id="LC1372" class="blob-code blob-code-inner js-file-line">	       (insert (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>begin{<span class="pl-c1">%s</span>}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1373" class="blob-num js-line-number" data-line-number="1373"></td>
        <td id="LC1373" class="blob-code blob-code-inner js-file-line">			       (symbol-name org-export-latex-low-levels))))</td>
      </tr>
      <tr>
        <td id="L1374" class="blob-num js-line-number" data-line-number="1374"></td>
        <td id="LC1374" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">let</span> ((ctnt (org-export-latex-content content)))</td>
      </tr>
      <tr>
        <td id="L1375" class="blob-num js-line-number" data-line-number="1375"></td>
        <td id="LC1375" class="blob-code blob-code-inner js-file-line">	       (insert (<span class="pl-c1">format</span> (<span class="pl-k">if</span> (<span class="pl-k">not</span> (<span class="pl-k">equal</span> (replace-regexp-in-string <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> ctnt) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1376" class="blob-num js-line-number" data-line-number="1376"></td>
        <td id="LC1376" class="blob-code blob-code-inner js-file-line">				   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\\</span>item %s<span class="pl-cce">\\\\\n</span>%s%%<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1377" class="blob-num js-line-number" data-line-number="1377"></td>
        <td id="LC1377" class="blob-code blob-code-inner js-file-line">				 <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\\</span>item %s<span class="pl-cce">\n</span>%s%%<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1378" class="blob-num js-line-number" data-line-number="1378"></td>
        <td id="LC1378" class="blob-code blob-code-inner js-file-line">			       heading</td>
      </tr>
      <tr>
        <td id="L1379" class="blob-num js-line-number" data-line-number="1379"></td>
        <td id="LC1379" class="blob-code blob-code-inner js-file-line">			       (<span class="pl-k">if</span> label (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> label) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1380" class="blob-num js-line-number" data-line-number="1380"></td>
        <td id="LC1380" class="blob-code blob-code-inner js-file-line">	       (insert ctnt))</td>
      </tr>
      <tr>
        <td id="L1381" class="blob-num js-line-number" data-line-number="1381"></td>
        <td id="LC1381" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">cond</span> ((stringp subcontent) (insert subcontent))</td>
      </tr>
      <tr>
        <td id="L1382" class="blob-num js-line-number" data-line-number="1382"></td>
        <td id="LC1382" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">listp</span> subcontent) (org-export-latex-sub subcontent)))</td>
      </tr>
      <tr>
        <td id="L1383" class="blob-num js-line-number" data-line-number="1383"></td>
        <td id="LC1383" class="blob-code blob-code-inner js-file-line">	     (insert (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>end{<span class="pl-c1">%s</span>} <span class="pl-c1">%%</span> ends low level<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1384" class="blob-num js-line-number" data-line-number="1384"></td>
        <td id="LC1384" class="blob-code blob-code-inner js-file-line">			     (symbol-name org-export-latex-low-levels))))</td>
      </tr>
      <tr>
        <td id="L1385" class="blob-num js-line-number" data-line-number="1385"></td>
        <td id="LC1385" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1386" class="blob-num js-line-number" data-line-number="1386"></td>
        <td id="LC1386" class="blob-code blob-code-inner js-file-line">	    ((<span class="pl-k">and</span> (<span class="pl-k">listp</span> org-export-latex-low-levels)</td>
      </tr>
      <tr>
        <td id="L1387" class="blob-num js-line-number" data-line-number="1387"></td>
        <td id="LC1387" class="blob-code blob-code-inner js-file-line">		  org-export-latex-low-levels)</td>
      </tr>
      <tr>
        <td id="L1388" class="blob-num js-line-number" data-line-number="1388"></td>
        <td id="LC1388" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>% ends low level$<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1389" class="blob-num js-line-number" data-line-number="1389"></td>
        <td id="LC1389" class="blob-code blob-code-inner js-file-line">			       (buffer-substring (point-at-bol <span class="pl-c1">0</span>) (point)))</td>
      </tr>
      <tr>
        <td id="L1390" class="blob-num js-line-number" data-line-number="1390"></td>
        <td id="LC1390" class="blob-code blob-code-inner js-file-line">		 (delete-region (point-at-bol <span class="pl-c1">0</span>) (point))</td>
      </tr>
      <tr>
        <td id="L1391" class="blob-num js-line-number" data-line-number="1391"></td>
        <td id="LC1391" class="blob-code blob-code-inner js-file-line">	       (insert (<span class="pl-k">car</span> org-export-latex-low-levels) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1392" class="blob-num js-line-number" data-line-number="1392"></td>
        <td id="LC1392" class="blob-code blob-code-inner js-file-line">	     (insert (<span class="pl-c1">format</span> (<span class="pl-k">nth</span> <span class="pl-c1">2</span> org-export-latex-low-levels)</td>
      </tr>
      <tr>
        <td id="L1393" class="blob-num js-line-number" data-line-number="1393"></td>
        <td id="LC1393" class="blob-code blob-code-inner js-file-line">			     heading</td>
      </tr>
      <tr>
        <td id="L1394" class="blob-num js-line-number" data-line-number="1394"></td>
        <td id="LC1394" class="blob-code blob-code-inner js-file-line">			     (<span class="pl-k">if</span> label (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> label) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1395" class="blob-num js-line-number" data-line-number="1395"></td>
        <td id="LC1395" class="blob-code blob-code-inner js-file-line">	     (insert (org-export-latex-content content))</td>
      </tr>
      <tr>
        <td id="L1396" class="blob-num js-line-number" data-line-number="1396"></td>
        <td id="LC1396" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">cond</span> ((stringp subcontent) (insert subcontent))</td>
      </tr>
      <tr>
        <td id="L1397" class="blob-num js-line-number" data-line-number="1397"></td>
        <td id="LC1397" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">listp</span> subcontent) (org-export-latex-sub subcontent)))</td>
      </tr>
      <tr>
        <td id="L1398" class="blob-num js-line-number" data-line-number="1398"></td>
        <td id="LC1398" class="blob-code blob-code-inner js-file-line">	     (insert (<span class="pl-k">nth</span> <span class="pl-c1">1</span> org-export-latex-low-levels)</td>
      </tr>
      <tr>
        <td id="L1399" class="blob-num js-line-number" data-line-number="1399"></td>
        <td id="LC1399" class="blob-code blob-code-inner js-file-line">		     <span class="pl-s"><span class="pl-pds">&quot;</span> %% ends low level<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1400" class="blob-num js-line-number" data-line-number="1400"></td>
        <td id="LC1400" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1401" class="blob-num js-line-number" data-line-number="1401"></td>
        <td id="LC1401" class="blob-code blob-code-inner js-file-line">	    ((stringp org-export-latex-low-levels)</td>
      </tr>
      <tr>
        <td id="L1402" class="blob-num js-line-number" data-line-number="1402"></td>
        <td id="LC1402" class="blob-code blob-code-inner js-file-line">	     (insert (<span class="pl-c1">format</span> org-export-latex-low-levels heading) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1403" class="blob-num js-line-number" data-line-number="1403"></td>
        <td id="LC1403" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">when</span> label (insert (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span> label)))</td>
      </tr>
      <tr>
        <td id="L1404" class="blob-num js-line-number" data-line-number="1404"></td>
        <td id="LC1404" class="blob-code blob-code-inner js-file-line">	     (insert (org-export-latex-content content))</td>
      </tr>
      <tr>
        <td id="L1405" class="blob-num js-line-number" data-line-number="1405"></td>
        <td id="LC1405" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">cond</span> ((stringp subcontent) (insert subcontent))</td>
      </tr>
      <tr>
        <td id="L1406" class="blob-num js-line-number" data-line-number="1406"></td>
        <td id="LC1406" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">listp</span> subcontent) (org-export-latex-sub subcontent)))))))))</td>
      </tr>
      <tr>
        <td id="L1407" class="blob-num js-line-number" data-line-number="1407"></td>
        <td id="LC1407" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1408" class="blob-num js-line-number" data-line-number="1408"></td>
        <td id="LC1408" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; Exporting internals:</span></td>
      </tr>
      <tr>
        <td id="L1409" class="blob-num js-line-number" data-line-number="1409"></td>
        <td id="LC1409" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-set-initial-vars</span> (<span class="pl-v">ext-plist</span> <span class="pl-v">level</span>)</td>
      </tr>
      <tr>
        <td id="L1410" class="blob-num js-line-number" data-line-number="1410"></td>
        <td id="LC1410" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Store org local variables required for LaTeX export.</span></td>
      </tr>
      <tr>
        <td id="L1411" class="blob-num js-line-number" data-line-number="1411"></td>
        <td id="LC1411" class="blob-code blob-code-inner js-file-line"><span class="pl-s">EXT-PLIST is an optional additional plist.</span></td>
      </tr>
      <tr>
        <td id="L1412" class="blob-num js-line-number" data-line-number="1412"></td>
        <td id="LC1412" class="blob-code blob-code-inner js-file-line"><span class="pl-s">LEVEL indicates the default depth for export.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1413" class="blob-num js-line-number" data-line-number="1413"></td>
        <td id="LC1413" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">setq</span> org-export-latex-todo-keywords-1 org-todo-keywords-1</td>
      </tr>
      <tr>
        <td id="L1414" class="blob-num js-line-number" data-line-number="1414"></td>
        <td id="LC1414" class="blob-code blob-code-inner js-file-line">	org-export-latex-done-keywords org-done-keywords</td>
      </tr>
      <tr>
        <td id="L1415" class="blob-num js-line-number" data-line-number="1415"></td>
        <td id="LC1415" class="blob-code blob-code-inner js-file-line">	org-export-latex-not-done-keywords org-not-done-keywords</td>
      </tr>
      <tr>
        <td id="L1416" class="blob-num js-line-number" data-line-number="1416"></td>
        <td id="LC1416" class="blob-code blob-code-inner js-file-line">	org-export-latex-complex-heading-re org-complex-heading-regexp</td>
      </tr>
      <tr>
        <td id="L1417" class="blob-num js-line-number" data-line-number="1417"></td>
        <td id="LC1417" class="blob-code blob-code-inner js-file-line">	org-export-latex-display-custom-times org-display-custom-times</td>
      </tr>
      <tr>
        <td id="L1418" class="blob-num js-line-number" data-line-number="1418"></td>
        <td id="LC1418" class="blob-code blob-code-inner js-file-line">	org-export-latex-all-targets-re</td>
      </tr>
      <tr>
        <td id="L1419" class="blob-num js-line-number" data-line-number="1419"></td>
        <td id="LC1419" class="blob-code blob-code-inner js-file-line">	(org-make-target-link-regexp (org-all-targets))</td>
      </tr>
      <tr>
        <td id="L1420" class="blob-num js-line-number" data-line-number="1420"></td>
        <td id="LC1420" class="blob-code blob-code-inner js-file-line">	org-export-latex-options-plist</td>
      </tr>
      <tr>
        <td id="L1421" class="blob-num js-line-number" data-line-number="1421"></td>
        <td id="LC1421" class="blob-code blob-code-inner js-file-line">	(org-combine-plists (org-default-export-plist) ext-plist</td>
      </tr>
      <tr>
        <td id="L1422" class="blob-num js-line-number" data-line-number="1422"></td>
        <td id="LC1422" class="blob-code blob-code-inner js-file-line">			    (org-infile-export-plist))</td>
      </tr>
      <tr>
        <td id="L1423" class="blob-num js-line-number" data-line-number="1423"></td>
        <td id="LC1423" class="blob-code blob-code-inner js-file-line">	org-export-latex-class</td>
      </tr>
      <tr>
        <td id="L1424" class="blob-num js-line-number" data-line-number="1424"></td>
        <td id="LC1424" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">or</span> (<span class="pl-k">and</span> (org-region-active-p)</td>
      </tr>
      <tr>
        <td id="L1425" class="blob-num js-line-number" data-line-number="1425"></td>
        <td id="LC1425" class="blob-code blob-code-inner js-file-line">		 (save-excursion</td>
      </tr>
      <tr>
        <td id="L1426" class="blob-num js-line-number" data-line-number="1426"></td>
        <td id="LC1426" class="blob-code blob-code-inner js-file-line">		   (goto-char (region-beginning))</td>
      </tr>
      <tr>
        <td id="L1427" class="blob-num js-line-number" data-line-number="1427"></td>
        <td id="LC1427" class="blob-code blob-code-inner js-file-line">		   (<span class="pl-k">and</span> (looking-at org-complex-heading-regexp)</td>
      </tr>
      <tr>
        <td id="L1428" class="blob-num js-line-number" data-line-number="1428"></td>
        <td id="LC1428" class="blob-code blob-code-inner js-file-line">			(org-entry-get <span class="pl-c1">nil</span> <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX_CLASS<span class="pl-pds">&quot;</span></span> <span class="pl-c1">&#39;selective</span>))))</td>
      </tr>
      <tr>
        <td id="L1429" class="blob-num js-line-number" data-line-number="1429"></td>
        <td id="LC1429" class="blob-code blob-code-inner js-file-line">	    (save-excursion</td>
      </tr>
      <tr>
        <td id="L1430" class="blob-num js-line-number" data-line-number="1430"></td>
        <td id="LC1430" class="blob-code blob-code-inner js-file-line">	      (save-restriction</td>
      </tr>
      <tr>
        <td id="L1431" class="blob-num js-line-number" data-line-number="1431"></td>
        <td id="LC1431" class="blob-code blob-code-inner js-file-line">		(widen)</td>
      </tr>
      <tr>
        <td id="L1432" class="blob-num js-line-number" data-line-number="1432"></td>
        <td id="LC1432" class="blob-code blob-code-inner js-file-line">		(goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1433" class="blob-num js-line-number" data-line-number="1433"></td>
        <td id="LC1433" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">and</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^#<span class="pl-cce">\\</span>+LaTeX_CLASS:[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>([-/a-zA-Z]+<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1434" class="blob-num js-line-number" data-line-number="1434"></td>
        <td id="LC1434" class="blob-code blob-code-inner js-file-line">		     (match-string <span class="pl-c1">1</span>))))</td>
      </tr>
      <tr>
        <td id="L1435" class="blob-num js-line-number" data-line-number="1435"></td>
        <td id="LC1435" class="blob-code blob-code-inner js-file-line">	    (plist-get org-export-latex-options-plist <span class="pl-c1">:latex-class</span>)</td>
      </tr>
      <tr>
        <td id="L1436" class="blob-num js-line-number" data-line-number="1436"></td>
        <td id="LC1436" class="blob-code blob-code-inner js-file-line">	    org-export-latex-default-class)</td>
      </tr>
      <tr>
        <td id="L1437" class="blob-num js-line-number" data-line-number="1437"></td>
        <td id="LC1437" class="blob-code blob-code-inner js-file-line">	org-export-latex-class-options</td>
      </tr>
      <tr>
        <td id="L1438" class="blob-num js-line-number" data-line-number="1438"></td>
        <td id="LC1438" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">or</span> (<span class="pl-k">and</span> (org-region-active-p)</td>
      </tr>
      <tr>
        <td id="L1439" class="blob-num js-line-number" data-line-number="1439"></td>
        <td id="LC1439" class="blob-code blob-code-inner js-file-line">		 (save-excursion</td>
      </tr>
      <tr>
        <td id="L1440" class="blob-num js-line-number" data-line-number="1440"></td>
        <td id="LC1440" class="blob-code blob-code-inner js-file-line">		   (goto-char (region-beginning))</td>
      </tr>
      <tr>
        <td id="L1441" class="blob-num js-line-number" data-line-number="1441"></td>
        <td id="LC1441" class="blob-code blob-code-inner js-file-line">		   (<span class="pl-k">and</span> (looking-at org-complex-heading-regexp)</td>
      </tr>
      <tr>
        <td id="L1442" class="blob-num js-line-number" data-line-number="1442"></td>
        <td id="LC1442" class="blob-code blob-code-inner js-file-line">			(org-entry-get <span class="pl-c1">nil</span> <span class="pl-s"><span class="pl-pds">&quot;</span>LaTeX_CLASS_OPTIONS<span class="pl-pds">&quot;</span></span> <span class="pl-c1">&#39;selective</span>))))</td>
      </tr>
      <tr>
        <td id="L1443" class="blob-num js-line-number" data-line-number="1443"></td>
        <td id="LC1443" class="blob-code blob-code-inner js-file-line">	    (save-excursion</td>
      </tr>
      <tr>
        <td id="L1444" class="blob-num js-line-number" data-line-number="1444"></td>
        <td id="LC1444" class="blob-code blob-code-inner js-file-line">	      (save-restriction</td>
      </tr>
      <tr>
        <td id="L1445" class="blob-num js-line-number" data-line-number="1445"></td>
        <td id="LC1445" class="blob-code blob-code-inner js-file-line">		(widen)</td>
      </tr>
      <tr>
        <td id="L1446" class="blob-num js-line-number" data-line-number="1446"></td>
        <td id="LC1446" class="blob-code blob-code-inner js-file-line">		(goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1447" class="blob-num js-line-number" data-line-number="1447"></td>
        <td id="LC1447" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">and</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^#<span class="pl-cce">\\</span>+LaTeX_CLASS_OPTIONS:[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>(.*?<span class="pl-cce">\\</span>)[ <span class="pl-cce">\t</span>]*$<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1448" class="blob-num js-line-number" data-line-number="1448"></td>
        <td id="LC1448" class="blob-code blob-code-inner js-file-line">		     (match-string <span class="pl-c1">1</span>))))</td>
      </tr>
      <tr>
        <td id="L1449" class="blob-num js-line-number" data-line-number="1449"></td>
        <td id="LC1449" class="blob-code blob-code-inner js-file-line">	    (plist-get org-export-latex-options-plist <span class="pl-c1">:latex-class-options</span>))</td>
      </tr>
      <tr>
        <td id="L1450" class="blob-num js-line-number" data-line-number="1450"></td>
        <td id="LC1450" class="blob-code blob-code-inner js-file-line">	org-export-latex-class</td>
      </tr>
      <tr>
        <td id="L1451" class="blob-num js-line-number" data-line-number="1451"></td>
        <td id="LC1451" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">or</span> (<span class="pl-k">car</span> (<span class="pl-k">assoc</span> org-export-latex-class org-export-latex-classes))</td>
      </tr>
      <tr>
        <td id="L1452" class="blob-num js-line-number" data-line-number="1452"></td>
        <td id="LC1452" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-c1">error</span> <span class="pl-pds">&quot;</span><span class="pl-s">No definition for class `<span class="pl-c1">%s</span>&#39; in `org-export-latex-classes&#39;</span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1453" class="blob-num js-line-number" data-line-number="1453"></td>
        <td id="LC1453" class="blob-code blob-code-inner js-file-line">		   org-export-latex-class))</td>
      </tr>
      <tr>
        <td id="L1454" class="blob-num js-line-number" data-line-number="1454"></td>
        <td id="LC1454" class="blob-code blob-code-inner js-file-line">	org-export-latex-header</td>
      </tr>
      <tr>
        <td id="L1455" class="blob-num js-line-number" data-line-number="1455"></td>
        <td id="LC1455" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">cadr</span> (<span class="pl-k">assoc</span> org-export-latex-class org-export-latex-classes))</td>
      </tr>
      <tr>
        <td id="L1456" class="blob-num js-line-number" data-line-number="1456"></td>
        <td id="LC1456" class="blob-code blob-code-inner js-file-line">	org-export-latex-sectioning</td>
      </tr>
      <tr>
        <td id="L1457" class="blob-num js-line-number" data-line-number="1457"></td>
        <td id="LC1457" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">cddr</span> (<span class="pl-k">assoc</span> org-export-latex-class org-export-latex-classes))</td>
      </tr>
      <tr>
        <td id="L1458" class="blob-num js-line-number" data-line-number="1458"></td>
        <td id="LC1458" class="blob-code blob-code-inner js-file-line">	org-export-latex-sectioning-depth</td>
      </tr>
      <tr>
        <td id="L1459" class="blob-num js-line-number" data-line-number="1459"></td>
        <td id="LC1459" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">or</span> level</td>
      </tr>
      <tr>
        <td id="L1460" class="blob-num js-line-number" data-line-number="1460"></td>
        <td id="LC1460" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">let</span> ((hl-levels</td>
      </tr>
      <tr>
        <td id="L1461" class="blob-num js-line-number" data-line-number="1461"></td>
        <td id="LC1461" class="blob-code blob-code-inner js-file-line">		   (plist-get org-export-latex-options-plist <span class="pl-c1">:headline-levels</span>))</td>
      </tr>
      <tr>
        <td id="L1462" class="blob-num js-line-number" data-line-number="1462"></td>
        <td id="LC1462" class="blob-code blob-code-inner js-file-line">		  (sec-depth (<span class="pl-k">length</span> org-export-latex-sectioning)))</td>
      </tr>
      <tr>
        <td id="L1463" class="blob-num js-line-number" data-line-number="1463"></td>
        <td id="LC1463" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">if</span> (<span class="pl-k">&gt;</span> hl-levels sec-depth) sec-depth hl-levels))))</td>
      </tr>
      <tr>
        <td id="L1464" class="blob-num js-line-number" data-line-number="1464"></td>
        <td id="LC1464" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">when</span> (<span class="pl-k">and</span> org-export-latex-class-options</td>
      </tr>
      <tr>
        <td id="L1465" class="blob-num js-line-number" data-line-number="1465"></td>
        <td id="LC1465" class="blob-code blob-code-inner js-file-line">	     (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>S-<span class="pl-pds">&quot;</span></span> org-export-latex-class-options)</td>
      </tr>
      <tr>
        <td id="L1466" class="blob-num js-line-number" data-line-number="1466"></td>
        <td id="LC1466" class="blob-code blob-code-inner js-file-line">	     (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>(<span class="pl-cce">\\\\</span>documentclass<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>[.*?<span class="pl-cce">\\</span>]<span class="pl-cce">\\</span>)?<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1467" class="blob-num js-line-number" data-line-number="1467"></td>
        <td id="LC1467" class="blob-code blob-code-inner js-file-line">			   org-export-latex-header))</td>
      </tr>
      <tr>
        <td id="L1468" class="blob-num js-line-number" data-line-number="1468"></td>
        <td id="LC1468" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> org-export-latex-header</td>
      </tr>
      <tr>
        <td id="L1469" class="blob-num js-line-number" data-line-number="1469"></td>
        <td id="LC1469" class="blob-code blob-code-inner js-file-line">	  (concat (substring org-export-latex-header <span class="pl-c1">0</span> (match-end <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L1470" class="blob-num js-line-number" data-line-number="1470"></td>
        <td id="LC1470" class="blob-code blob-code-inner js-file-line">		  org-export-latex-class-options</td>
      </tr>
      <tr>
        <td id="L1471" class="blob-num js-line-number" data-line-number="1471"></td>
        <td id="LC1471" class="blob-code blob-code-inner js-file-line">		  (substring org-export-latex-header (match-end <span class="pl-c1">0</span>))))))</td>
      </tr>
      <tr>
        <td id="L1472" class="blob-num js-line-number" data-line-number="1472"></td>
        <td id="LC1472" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1473" class="blob-num js-line-number" data-line-number="1473"></td>
        <td id="LC1473" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-format-toc-function</span></td>
      </tr>
      <tr>
        <td id="L1474" class="blob-num js-line-number" data-line-number="1474"></td>
        <td id="LC1474" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">&#39;org-export-latex-format-toc-default</span></td>
      </tr>
      <tr>
        <td id="L1475" class="blob-num js-line-number" data-line-number="1475"></td>
        <td id="LC1475" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The function formatting returning the string to create the table of contents.</span></td>
      </tr>
      <tr>
        <td id="L1476" class="blob-num js-line-number" data-line-number="1476"></td>
        <td id="LC1476" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The function mus take one parameter, the depth of the table of contents.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1477" class="blob-num js-line-number" data-line-number="1477"></td>
        <td id="LC1477" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1478" class="blob-num js-line-number" data-line-number="1478"></td>
        <td id="LC1478" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-make-header</span> (<span class="pl-v">title</span> <span class="pl-v">opt-plist</span>)</td>
      </tr>
      <tr>
        <td id="L1479" class="blob-num js-line-number" data-line-number="1479"></td>
        <td id="LC1479" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Make the LaTeX header and return it as a string.</span></td>
      </tr>
      <tr>
        <td id="L1480" class="blob-num js-line-number" data-line-number="1480"></td>
        <td id="LC1480" class="blob-code blob-code-inner js-file-line"><span class="pl-s">TITLE is the current title from the buffer or region.</span></td>
      </tr>
      <tr>
        <td id="L1481" class="blob-num js-line-number" data-line-number="1481"></td>
        <td id="LC1481" class="blob-code blob-code-inner js-file-line"><span class="pl-s">OPT-PLIST is the options plist for current buffer.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1482" class="blob-num js-line-number" data-line-number="1482"></td>
        <td id="LC1482" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((toc (plist-get opt-plist <span class="pl-c1">:table-of-contents</span>))</td>
      </tr>
      <tr>
        <td id="L1483" class="blob-num js-line-number" data-line-number="1483"></td>
        <td id="LC1483" class="blob-code blob-code-inner js-file-line">	(author (org-export-apply-macros-in-string</td>
      </tr>
      <tr>
        <td id="L1484" class="blob-num js-line-number" data-line-number="1484"></td>
        <td id="LC1484" class="blob-code blob-code-inner js-file-line">		 (plist-get opt-plist <span class="pl-c1">:author</span>)))</td>
      </tr>
      <tr>
        <td id="L1485" class="blob-num js-line-number" data-line-number="1485"></td>
        <td id="LC1485" class="blob-code blob-code-inner js-file-line">	(email (replace-regexp-in-string</td>
      </tr>
      <tr>
        <td id="L1486" class="blob-num js-line-number" data-line-number="1486"></td>
        <td id="LC1486" class="blob-code blob-code-inner js-file-line">		<span class="pl-s"><span class="pl-pds">&quot;</span>_<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\</span>_<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1487" class="blob-num js-line-number" data-line-number="1487"></td>
        <td id="LC1487" class="blob-code blob-code-inner js-file-line">		(org-export-apply-macros-in-string</td>
      </tr>
      <tr>
        <td id="L1488" class="blob-num js-line-number" data-line-number="1488"></td>
        <td id="LC1488" class="blob-code blob-code-inner js-file-line">		 (plist-get opt-plist <span class="pl-c1">:email</span>))))</td>
      </tr>
      <tr>
        <td id="L1489" class="blob-num js-line-number" data-line-number="1489"></td>
        <td id="LC1489" class="blob-code blob-code-inner js-file-line">	(description (org-export-apply-macros-in-string</td>
      </tr>
      <tr>
        <td id="L1490" class="blob-num js-line-number" data-line-number="1490"></td>
        <td id="LC1490" class="blob-code blob-code-inner js-file-line">		      (plist-get opt-plist <span class="pl-c1">:description</span>)))</td>
      </tr>
      <tr>
        <td id="L1491" class="blob-num js-line-number" data-line-number="1491"></td>
        <td id="LC1491" class="blob-code blob-code-inner js-file-line">	(keywords (org-export-apply-macros-in-string</td>
      </tr>
      <tr>
        <td id="L1492" class="blob-num js-line-number" data-line-number="1492"></td>
        <td id="LC1492" class="blob-code blob-code-inner js-file-line">		   (plist-get opt-plist <span class="pl-c1">:keywords</span>))))</td>
      </tr>
      <tr>
        <td id="L1493" class="blob-num js-line-number" data-line-number="1493"></td>
        <td id="LC1493" class="blob-code blob-code-inner js-file-line">    (concat</td>
      </tr>
      <tr>
        <td id="L1494" class="blob-num js-line-number" data-line-number="1494"></td>
        <td id="LC1494" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">if</span> (plist-get opt-plist <span class="pl-c1">:time-stamp-file</span>)</td>
      </tr>
      <tr>
        <td id="L1495" class="blob-num js-line-number" data-line-number="1495"></td>
        <td id="LC1495" class="blob-code blob-code-inner js-file-line">	 (format-time-string <span class="pl-s"><span class="pl-pds">&quot;</span>%% Created %Y-%m-%d %a %H:%M<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1496" class="blob-num js-line-number" data-line-number="1496"></td>
        <td id="LC1496" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; insert LaTeX custom header and packages from the list</span></td>
      </tr>
      <tr>
        <td id="L1497" class="blob-num js-line-number" data-line-number="1497"></td>
        <td id="LC1497" class="blob-code blob-code-inner js-file-line">     (org-splice-latex-header</td>
      </tr>
      <tr>
        <td id="L1498" class="blob-num js-line-number" data-line-number="1498"></td>
        <td id="LC1498" class="blob-code blob-code-inner js-file-line">      (org-export-apply-macros-in-string org-export-latex-header)</td>
      </tr>
      <tr>
        <td id="L1499" class="blob-num js-line-number" data-line-number="1499"></td>
        <td id="LC1499" class="blob-code blob-code-inner js-file-line">      org-export-latex-default-packages-alist</td>
      </tr>
      <tr>
        <td id="L1500" class="blob-num js-line-number" data-line-number="1500"></td>
        <td id="LC1500" class="blob-code blob-code-inner js-file-line">      org-export-latex-packages-alist <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L1501" class="blob-num js-line-number" data-line-number="1501"></td>
        <td id="LC1501" class="blob-code blob-code-inner js-file-line">      (org-export-apply-macros-in-string</td>
      </tr>
      <tr>
        <td id="L1502" class="blob-num js-line-number" data-line-number="1502"></td>
        <td id="LC1502" class="blob-code blob-code-inner js-file-line">       (plist-get opt-plist <span class="pl-c1">:latex-header-extra</span>)))</td>
      </tr>
      <tr>
        <td id="L1503" class="blob-num js-line-number" data-line-number="1503"></td>
        <td id="LC1503" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; append another special variable</span></td>
      </tr>
      <tr>
        <td id="L1504" class="blob-num js-line-number" data-line-number="1504"></td>
        <td id="LC1504" class="blob-code blob-code-inner js-file-line">     (org-export-apply-macros-in-string org-export-latex-append-header)</td>
      </tr>
      <tr>
        <td id="L1505" class="blob-num js-line-number" data-line-number="1505"></td>
        <td id="LC1505" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; define alert if not yet defined</span></td>
      </tr>
      <tr>
        <td id="L1506" class="blob-num js-line-number" data-line-number="1506"></td>
        <td id="LC1506" class="blob-code blob-code-inner js-file-line">     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\\</span>providecommand{<span class="pl-cce">\\</span>alert}[1]{<span class="pl-cce">\\</span>textbf{#1}}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1507" class="blob-num js-line-number" data-line-number="1507"></td>
        <td id="LC1507" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; insert the title</span></td>
      </tr>
      <tr>
        <td id="L1508" class="blob-num js-line-number" data-line-number="1508"></td>
        <td id="LC1508" class="blob-code blob-code-inner js-file-line">     (<span class="pl-c1">format</span></td>
      </tr>
      <tr>
        <td id="L1509" class="blob-num js-line-number" data-line-number="1509"></td>
        <td id="LC1509" class="blob-code blob-code-inner js-file-line">      <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\n\\</span>title{%s}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1510" class="blob-num js-line-number" data-line-number="1510"></td>
        <td id="LC1510" class="blob-code blob-code-inner js-file-line">      (org-export-latex-fontify-headline title))</td>
      </tr>
      <tr>
        <td id="L1511" class="blob-num js-line-number" data-line-number="1511"></td>
        <td id="LC1511" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; insert author info</span></td>
      </tr>
      <tr>
        <td id="L1512" class="blob-num js-line-number" data-line-number="1512"></td>
        <td id="LC1512" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">if</span> (plist-get opt-plist <span class="pl-c1">:author-info</span>)</td>
      </tr>
      <tr>
        <td id="L1513" class="blob-num js-line-number" data-line-number="1513"></td>
        <td id="LC1513" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>author{<span class="pl-c1">%s%s</span>}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1514" class="blob-num js-line-number" data-line-number="1514"></td>
        <td id="LC1514" class="blob-code blob-code-inner js-file-line">		 (org-export-latex-fontify-headline (<span class="pl-k">or</span> author user-full-name))</td>
      </tr>
      <tr>
        <td id="L1515" class="blob-num js-line-number" data-line-number="1515"></td>
        <td id="LC1515" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">if</span> (<span class="pl-k">and</span> (plist-get opt-plist <span class="pl-c1">:email-info</span>) email</td>
      </tr>
      <tr>
        <td id="L1516" class="blob-num js-line-number" data-line-number="1516"></td>
        <td id="LC1516" class="blob-code blob-code-inner js-file-line">			  (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>S-<span class="pl-pds">&quot;</span></span> email))</td>
      </tr>
      <tr>
        <td id="L1517" class="blob-num js-line-number" data-line-number="1517"></td>
        <td id="LC1517" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>thanks{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> email)</td>
      </tr>
      <tr>
        <td id="L1518" class="blob-num js-line-number" data-line-number="1518"></td>
        <td id="LC1518" class="blob-code blob-code-inner js-file-line">		   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1519" class="blob-num js-line-number" data-line-number="1519"></td>
        <td id="LC1519" class="blob-code blob-code-inner js-file-line">       (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-c1">%%</span><span class="pl-cce">\\</span>author{<span class="pl-c1">%s</span>}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1520" class="blob-num js-line-number" data-line-number="1520"></td>
        <td id="LC1520" class="blob-code blob-code-inner js-file-line">	       (org-export-latex-fontify-headline (<span class="pl-k">or</span> author user-full-name))))</td>
      </tr>
      <tr>
        <td id="L1521" class="blob-num js-line-number" data-line-number="1521"></td>
        <td id="LC1521" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; insert the date</span></td>
      </tr>
      <tr>
        <td id="L1522" class="blob-num js-line-number" data-line-number="1522"></td>
        <td id="LC1522" class="blob-code blob-code-inner js-file-line">     (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>date{<span class="pl-c1">%s</span>}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1523" class="blob-num js-line-number" data-line-number="1523"></td>
        <td id="LC1523" class="blob-code blob-code-inner js-file-line">	     (format-time-string</td>
      </tr>
      <tr>
        <td id="L1524" class="blob-num js-line-number" data-line-number="1524"></td>
        <td id="LC1524" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">or</span> (plist-get opt-plist <span class="pl-c1">:date</span>)</td>
      </tr>
      <tr>
        <td id="L1525" class="blob-num js-line-number" data-line-number="1525"></td>
        <td id="LC1525" class="blob-code blob-code-inner js-file-line">		  org-export-latex-date-format)))</td>
      </tr>
      <tr>
        <td id="L1526" class="blob-num js-line-number" data-line-number="1526"></td>
        <td id="LC1526" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; add some hyperref options</span></td>
      </tr>
      <tr>
        <td id="L1527" class="blob-num js-line-number" data-line-number="1527"></td>
        <td id="LC1527" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; FIXME: let&#39;s have a defcustom for this?</span></td>
      </tr>
      <tr>
        <td id="L1528" class="blob-num js-line-number" data-line-number="1528"></td>
        <td id="LC1528" class="blob-code blob-code-inner js-file-line">     (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>hypersetup{<span class="pl-cce">\n</span>  pdfkeywords={<span class="pl-c1">%s</span>},<span class="pl-cce">\n</span>  pdfsubject={<span class="pl-c1">%s</span>},<span class="pl-cce">\n</span>  pdfcreator={<span class="pl-c1">%s</span>}}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1529" class="blob-num js-line-number" data-line-number="1529"></td>
        <td id="LC1529" class="blob-code blob-code-inner js-file-line">         (org-export-latex-fontify-headline keywords)</td>
      </tr>
      <tr>
        <td id="L1530" class="blob-num js-line-number" data-line-number="1530"></td>
        <td id="LC1530" class="blob-code blob-code-inner js-file-line">         (org-export-latex-fontify-headline description)</td>
      </tr>
      <tr>
        <td id="L1531" class="blob-num js-line-number" data-line-number="1531"></td>
        <td id="LC1531" class="blob-code blob-code-inner js-file-line">	 (concat <span class="pl-s"><span class="pl-pds">&quot;</span>Emacs Org-mode version <span class="pl-pds">&quot;</span></span> (org-version)))</td>
      </tr>
      <tr>
        <td id="L1532" class="blob-num js-line-number" data-line-number="1532"></td>
        <td id="LC1532" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; beginning of the document</span></td>
      </tr>
      <tr>
        <td id="L1533" class="blob-num js-line-number" data-line-number="1533"></td>
        <td id="LC1533" class="blob-code blob-code-inner js-file-line">     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\\</span>begin{document}<span class="pl-cce">\n\n</span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1534" class="blob-num js-line-number" data-line-number="1534"></td>
        <td id="LC1534" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; insert the title command</span></td>
      </tr>
      <tr>
        <td id="L1535" class="blob-num js-line-number" data-line-number="1535"></td>
        <td id="LC1535" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">when</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>S-<span class="pl-pds">&quot;</span></span> title)</td>
      </tr>
      <tr>
        <td id="L1536" class="blob-num js-line-number" data-line-number="1536"></td>
        <td id="LC1536" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>%s<span class="pl-pds">&quot;</span></span> org-export-latex-title-command)</td>
      </tr>
      <tr>
        <td id="L1537" class="blob-num js-line-number" data-line-number="1537"></td>
        <td id="LC1537" class="blob-code blob-code-inner js-file-line">	   (<span class="pl-c1">format</span> org-export-latex-title-command title)</td>
      </tr>
      <tr>
        <td id="L1538" class="blob-num js-line-number" data-line-number="1538"></td>
        <td id="LC1538" class="blob-code blob-code-inner js-file-line">	 org-export-latex-title-command))</td>
      </tr>
      <tr>
        <td id="L1539" class="blob-num js-line-number" data-line-number="1539"></td>
        <td id="LC1539" class="blob-code blob-code-inner js-file-line">     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\n</span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1540" class="blob-num js-line-number" data-line-number="1540"></td>
        <td id="LC1540" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; table of contents</span></td>
      </tr>
      <tr>
        <td id="L1541" class="blob-num js-line-number" data-line-number="1541"></td>
        <td id="LC1541" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">when</span> (<span class="pl-k">and</span> org-export-with-toc</td>
      </tr>
      <tr>
        <td id="L1542" class="blob-num js-line-number" data-line-number="1542"></td>
        <td id="LC1542" class="blob-code blob-code-inner js-file-line">		(plist-get opt-plist <span class="pl-c1">:section-numbers</span>))</td>
      </tr>
      <tr>
        <td id="L1543" class="blob-num js-line-number" data-line-number="1543"></td>
        <td id="LC1543" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">funcall</span> org-export-latex-format-toc-function</td>
      </tr>
      <tr>
        <td id="L1544" class="blob-num js-line-number" data-line-number="1544"></td>
        <td id="LC1544" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">cond</span> ((numberp toc)</td>
      </tr>
      <tr>
        <td id="L1545" class="blob-num js-line-number" data-line-number="1545"></td>
        <td id="LC1545" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-k">min</span> toc (plist-get opt-plist <span class="pl-c1">:headline-levels</span>)))</td>
      </tr>
      <tr>
        <td id="L1546" class="blob-num js-line-number" data-line-number="1546"></td>
        <td id="LC1546" class="blob-code blob-code-inner js-file-line">		      (toc  (plist-get opt-plist <span class="pl-c1">:headline-levels</span>))))))))</td>
      </tr>
      <tr>
        <td id="L1547" class="blob-num js-line-number" data-line-number="1547"></td>
        <td id="LC1547" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1548" class="blob-num js-line-number" data-line-number="1548"></td>
        <td id="LC1548" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-format-toc-default</span> (<span class="pl-v">depth</span>)</td>
      </tr>
      <tr>
        <td id="L1549" class="blob-num js-line-number" data-line-number="1549"></td>
        <td id="LC1549" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">when</span> depth</td>
      </tr>
      <tr>
        <td id="L1550" class="blob-num js-line-number" data-line-number="1550"></td>
        <td id="LC1550" class="blob-code blob-code-inner js-file-line">    (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>setcounter{tocdepth}{<span class="pl-c1">%s</span>}<span class="pl-cce">\n\\</span>tableofcontents<span class="pl-cce">\n\\</span>vspace*{1cm}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L1551" class="blob-num js-line-number" data-line-number="1551"></td>
        <td id="LC1551" class="blob-code blob-code-inner js-file-line">	    depth)))</td>
      </tr>
      <tr>
        <td id="L1552" class="blob-num js-line-number" data-line-number="1552"></td>
        <td id="LC1552" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1553" class="blob-num js-line-number" data-line-number="1553"></td>
        <td id="LC1553" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-first-lines</span> (<span class="pl-v">opt-plist</span> <span class="pl-c1">&amp;optional</span> <span class="pl-v">beg</span> <span class="pl-v">end</span>)</td>
      </tr>
      <tr>
        <td id="L1554" class="blob-num js-line-number" data-line-number="1554"></td>
        <td id="LC1554" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export the first lines before first headline.</span></td>
      </tr>
      <tr>
        <td id="L1555" class="blob-num js-line-number" data-line-number="1555"></td>
        <td id="LC1555" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If BEG is non-nil, it is the beginning of the region.</span></td>
      </tr>
      <tr>
        <td id="L1556" class="blob-num js-line-number" data-line-number="1556"></td>
        <td id="LC1556" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If END is non-nil, it is the end of the region.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1557" class="blob-num js-line-number" data-line-number="1557"></td>
        <td id="LC1557" class="blob-code blob-code-inner js-file-line">  (save-excursion</td>
      </tr>
      <tr>
        <td id="L1558" class="blob-num js-line-number" data-line-number="1558"></td>
        <td id="LC1558" class="blob-code blob-code-inner js-file-line">    (goto-char (<span class="pl-k">or</span> beg (point-min)))</td>
      </tr>
      <tr>
        <td id="L1559" class="blob-num js-line-number" data-line-number="1559"></td>
        <td id="LC1559" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">let*</span> ((pt (point))</td>
      </tr>
      <tr>
        <td id="L1560" class="blob-num js-line-number" data-line-number="1560"></td>
        <td id="LC1560" class="blob-code blob-code-inner js-file-line">	   (end (<span class="pl-k">if</span> (re-search-forward</td>
      </tr>
      <tr>
        <td id="L1561" class="blob-num js-line-number" data-line-number="1561"></td>
        <td id="LC1561" class="blob-code blob-code-inner js-file-line">		     (concat <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-pds">&quot;</span></span> (org-get-limited-outline-regexp)) end <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1562" class="blob-num js-line-number" data-line-number="1562"></td>
        <td id="LC1562" class="blob-code blob-code-inner js-file-line">		    (goto-char (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1563" class="blob-num js-line-number" data-line-number="1563"></td>
        <td id="LC1563" class="blob-code blob-code-inner js-file-line">		  (goto-char (<span class="pl-k">or</span> end (point-max))))))</td>
      </tr>
      <tr>
        <td id="L1564" class="blob-num js-line-number" data-line-number="1564"></td>
        <td id="LC1564" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">prog1</span></td>
      </tr>
      <tr>
        <td id="L1565" class="blob-num js-line-number" data-line-number="1565"></td>
        <td id="LC1565" class="blob-code blob-code-inner js-file-line">	  (org-export-latex-content</td>
      </tr>
      <tr>
        <td id="L1566" class="blob-num js-line-number" data-line-number="1566"></td>
        <td id="LC1566" class="blob-code blob-code-inner js-file-line">	   (org-export-preprocess-string</td>
      </tr>
      <tr>
        <td id="L1567" class="blob-num js-line-number" data-line-number="1567"></td>
        <td id="LC1567" class="blob-code blob-code-inner js-file-line">	    (buffer-substring pt end)</td>
      </tr>
      <tr>
        <td id="L1568" class="blob-num js-line-number" data-line-number="1568"></td>
        <td id="LC1568" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">:for-backend</span> <span class="pl-c1">&#39;latex</span></td>
      </tr>
      <tr>
        <td id="L1569" class="blob-num js-line-number" data-line-number="1569"></td>
        <td id="LC1569" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">:emph-multiline</span> <span class="pl-c1">t</span></td>
      </tr>
      <tr>
        <td id="L1570" class="blob-num js-line-number" data-line-number="1570"></td>
        <td id="LC1570" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">:add-text</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L1571" class="blob-num js-line-number" data-line-number="1571"></td>
        <td id="LC1571" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">:comments</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L1572" class="blob-num js-line-number" data-line-number="1572"></td>
        <td id="LC1572" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">:skip-before-1st-heading</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L1573" class="blob-num js-line-number" data-line-number="1573"></td>
        <td id="LC1573" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">:LaTeX-fragments</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L1574" class="blob-num js-line-number" data-line-number="1574"></td>
        <td id="LC1574" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">:timestamps</span> (plist-get opt-plist <span class="pl-c1">:timestamps</span>)</td>
      </tr>
      <tr>
        <td id="L1575" class="blob-num js-line-number" data-line-number="1575"></td>
        <td id="LC1575" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">:footnotes</span> (plist-get opt-plist <span class="pl-c1">:footnotes</span>)))</td>
      </tr>
      <tr>
        <td id="L1576" class="blob-num js-line-number" data-line-number="1576"></td>
        <td id="LC1576" class="blob-code blob-code-inner js-file-line">	(org-unmodified</td>
      </tr>
      <tr>
        <td id="L1577" class="blob-num js-line-number" data-line-number="1577"></td>
        <td id="LC1577" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">let</span> ((inhibit-read-only <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1578" class="blob-num js-line-number" data-line-number="1578"></td>
        <td id="LC1578" class="blob-code blob-code-inner js-file-line">	       (limit (<span class="pl-k">max</span> pt (1- end))))</td>
      </tr>
      <tr>
        <td id="L1579" class="blob-num js-line-number" data-line-number="1579"></td>
        <td id="LC1579" class="blob-code blob-code-inner js-file-line">	   (add-text-properties pt limit</td>
      </tr>
      <tr>
        <td id="L1580" class="blob-num js-line-number" data-line-number="1580"></td>
        <td id="LC1580" class="blob-code blob-code-inner js-file-line">				&#39;(<span class="pl-c1">:org-license-to-kill</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L1581" class="blob-num js-line-number" data-line-number="1581"></td>
        <td id="LC1581" class="blob-code blob-code-inner js-file-line">	   (save-excursion</td>
      </tr>
      <tr>
        <td id="L1582" class="blob-num js-line-number" data-line-number="1582"></td>
        <td id="LC1582" class="blob-code blob-code-inner js-file-line">	     (goto-char pt)</td>
      </tr>
      <tr>
        <td id="L1583" class="blob-num js-line-number" data-line-number="1583"></td>
        <td id="LC1583" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*#<span class="pl-cce">\\</span>+.*<span class="pl-cce">\n</span>?<span class="pl-pds">&quot;</span></span> limit <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1584" class="blob-num js-line-number" data-line-number="1584"></td>
        <td id="LC1584" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">let</span> ((case-fold-search <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L1585" class="blob-num js-line-number" data-line-number="1585"></td>
        <td id="LC1585" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">unless</span> (org-string-match-p</td>
      </tr>
      <tr>
        <td id="L1586" class="blob-num js-line-number" data-line-number="1586"></td>
        <td id="LC1586" class="blob-code blob-code-inner js-file-line">			  <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*#<span class="pl-cce">\\</span>+<span class="pl-cce">\\</span>(attr_<span class="pl-cce">\\</span>|caption<span class="pl-cce">\\</span>&gt;<span class="pl-cce">\\</span>|label<span class="pl-cce">\\</span>&gt;<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1587" class="blob-num js-line-number" data-line-number="1587"></td>
        <td id="LC1587" class="blob-code blob-code-inner js-file-line">			  (match-string <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1588" class="blob-num js-line-number" data-line-number="1588"></td>
        <td id="LC1588" class="blob-code blob-code-inner js-file-line">		   (remove-text-properties (match-beginning <span class="pl-c1">0</span>) (match-end <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L1589" class="blob-num js-line-number" data-line-number="1589"></td>
        <td id="LC1589" class="blob-code blob-code-inner js-file-line">					   &#39;(<span class="pl-c1">:org-license-to-kill</span> <span class="pl-c1">t</span>))))))))))))</td>
      </tr>
      <tr>
        <td id="L1590" class="blob-num js-line-number" data-line-number="1590"></td>
        <td id="LC1590" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1591" class="blob-num js-line-number" data-line-number="1591"></td>
        <td id="LC1591" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1592" class="blob-num js-line-number" data-line-number="1592"></td>
        <td id="LC1592" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-export-latex-header-defs</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L1593" class="blob-num js-line-number" data-line-number="1593"></td>
        <td id="LC1593" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>The header definitions that might be used in the LaTeX body.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1594" class="blob-num js-line-number" data-line-number="1594"></td>
        <td id="LC1594" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1595" class="blob-num js-line-number" data-line-number="1595"></td>
        <td id="LC1595" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-content</span> (<span class="pl-v">content</span> <span class="pl-c1">&amp;optional</span> <span class="pl-v">exclude-list</span>)</td>
      </tr>
      <tr>
        <td id="L1596" class="blob-num js-line-number" data-line-number="1596"></td>
        <td id="LC1596" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert CONTENT string to LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L1597" class="blob-num js-line-number" data-line-number="1597"></td>
        <td id="LC1597" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Don&#39;t perform conversions that are in EXCLUDE-LIST.  Recognized</span></td>
      </tr>
      <tr>
        <td id="L1598" class="blob-num js-line-number" data-line-number="1598"></td>
        <td id="LC1598" class="blob-code blob-code-inner js-file-line"><span class="pl-s">conversion types are: quotation-marks, emphasis, sub-superscript,</span></td>
      </tr>
      <tr>
        <td id="L1599" class="blob-num js-line-number" data-line-number="1599"></td>
        <td id="LC1599" class="blob-code blob-code-inner js-file-line"><span class="pl-s">links, keywords, lists, tables, fixed-width<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1600" class="blob-num js-line-number" data-line-number="1600"></td>
        <td id="LC1600" class="blob-code blob-code-inner js-file-line">  (with-temp-buffer</td>
      </tr>
      <tr>
        <td id="L1601" class="blob-num js-line-number" data-line-number="1601"></td>
        <td id="LC1601" class="blob-code blob-code-inner js-file-line">    (org-install-letbind)</td>
      </tr>
      <tr>
        <td id="L1602" class="blob-num js-line-number" data-line-number="1602"></td>
        <td id="LC1602" class="blob-code blob-code-inner js-file-line">    (insert content)</td>
      </tr>
      <tr>
        <td id="L1603" class="blob-num js-line-number" data-line-number="1603"></td>
        <td id="LC1603" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;timestamps</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1604" class="blob-num js-line-number" data-line-number="1604"></td>
        <td id="LC1604" class="blob-code blob-code-inner js-file-line">      (org-export-latex-time-stamps))</td>
      </tr>
      <tr>
        <td id="L1605" class="blob-num js-line-number" data-line-number="1605"></td>
        <td id="LC1605" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;quotation-marks</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1606" class="blob-num js-line-number" data-line-number="1606"></td>
        <td id="LC1606" class="blob-code blob-code-inner js-file-line">      (org-export-latex-quotation-marks))</td>
      </tr>
      <tr>
        <td id="L1607" class="blob-num js-line-number" data-line-number="1607"></td>
        <td id="LC1607" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;emphasis</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1608" class="blob-num js-line-number" data-line-number="1608"></td>
        <td id="LC1608" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">when</span> (plist-get org-export-latex-options-plist <span class="pl-c1">:emphasize</span>)</td>
      </tr>
      <tr>
        <td id="L1609" class="blob-num js-line-number" data-line-number="1609"></td>
        <td id="LC1609" class="blob-code blob-code-inner js-file-line">	(org-export-latex-fontify)))</td>
      </tr>
      <tr>
        <td id="L1610" class="blob-num js-line-number" data-line-number="1610"></td>
        <td id="LC1610" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;sub-superscript</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1611" class="blob-num js-line-number" data-line-number="1611"></td>
        <td id="LC1611" class="blob-code blob-code-inner js-file-line">      (org-export-latex-special-chars</td>
      </tr>
      <tr>
        <td id="L1612" class="blob-num js-line-number" data-line-number="1612"></td>
        <td id="LC1612" class="blob-code blob-code-inner js-file-line">       (plist-get org-export-latex-options-plist <span class="pl-c1">:sub-superscript</span>)))</td>
      </tr>
      <tr>
        <td id="L1613" class="blob-num js-line-number" data-line-number="1613"></td>
        <td id="LC1613" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;links</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1614" class="blob-num js-line-number" data-line-number="1614"></td>
        <td id="LC1614" class="blob-code blob-code-inner js-file-line">      (org-export-latex-links))</td>
      </tr>
      <tr>
        <td id="L1615" class="blob-num js-line-number" data-line-number="1615"></td>
        <td id="LC1615" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;keywords</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1616" class="blob-num js-line-number" data-line-number="1616"></td>
        <td id="LC1616" class="blob-code blob-code-inner js-file-line">      (org-export-latex-keywords))</td>
      </tr>
      <tr>
        <td id="L1617" class="blob-num js-line-number" data-line-number="1617"></td>
        <td id="LC1617" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;lists</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1618" class="blob-num js-line-number" data-line-number="1618"></td>
        <td id="LC1618" class="blob-code blob-code-inner js-file-line">      (org-export-latex-lists))</td>
      </tr>
      <tr>
        <td id="L1619" class="blob-num js-line-number" data-line-number="1619"></td>
        <td id="LC1619" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;tables</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1620" class="blob-num js-line-number" data-line-number="1620"></td>
        <td id="LC1620" class="blob-code blob-code-inner js-file-line">      (org-export-latex-tables</td>
      </tr>
      <tr>
        <td id="L1621" class="blob-num js-line-number" data-line-number="1621"></td>
        <td id="LC1621" class="blob-code blob-code-inner js-file-line">       (plist-get org-export-latex-options-plist <span class="pl-c1">:tables</span>)))</td>
      </tr>
      <tr>
        <td id="L1622" class="blob-num js-line-number" data-line-number="1622"></td>
        <td id="LC1622" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (memq <span class="pl-c1">&#39;fixed-width</span> exclude-list)</td>
      </tr>
      <tr>
        <td id="L1623" class="blob-num js-line-number" data-line-number="1623"></td>
        <td id="LC1623" class="blob-code blob-code-inner js-file-line">      (org-export-latex-fixed-width</td>
      </tr>
      <tr>
        <td id="L1624" class="blob-num js-line-number" data-line-number="1624"></td>
        <td id="LC1624" class="blob-code blob-code-inner js-file-line">       (plist-get org-export-latex-options-plist <span class="pl-c1">:fixed-width</span>)))</td>
      </tr>
      <tr>
        <td id="L1625" class="blob-num js-line-number" data-line-number="1625"></td>
        <td id="LC1625" class="blob-code blob-code-inner js-file-line">   <span class="pl-c">;; return string</span></td>
      </tr>
      <tr>
        <td id="L1626" class="blob-num js-line-number" data-line-number="1626"></td>
        <td id="LC1626" class="blob-code blob-code-inner js-file-line">    (buffer-substring (point-min) (point-max))))</td>
      </tr>
      <tr>
        <td id="L1627" class="blob-num js-line-number" data-line-number="1627"></td>
        <td id="LC1627" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1628" class="blob-num js-line-number" data-line-number="1628"></td>
        <td id="LC1628" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-protect-string</span> (<span class="pl-v">s</span>)</td>
      </tr>
      <tr>
        <td id="L1629" class="blob-num js-line-number" data-line-number="1629"></td>
        <td id="LC1629" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Add the org-protected property to string S.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1630" class="blob-num js-line-number" data-line-number="1630"></td>
        <td id="LC1630" class="blob-code blob-code-inner js-file-line">  (add-text-properties <span class="pl-c1">0</span> (<span class="pl-k">length</span> s) &#39;(org-protected <span class="pl-c1">t</span>) s) s)</td>
      </tr>
      <tr>
        <td id="L1631" class="blob-num js-line-number" data-line-number="1631"></td>
        <td id="LC1631" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1632" class="blob-num js-line-number" data-line-number="1632"></td>
        <td id="LC1632" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-protect-char-in-string</span> (<span class="pl-v">char-list</span> <span class="pl-v">string</span>)</td>
      </tr>
      <tr>
        <td id="L1633" class="blob-num js-line-number" data-line-number="1633"></td>
        <td id="LC1633" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Add org-protected text-property to char from CHAR-LIST in STRING.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1634" class="blob-num js-line-number" data-line-number="1634"></td>
        <td id="LC1634" class="blob-code blob-code-inner js-file-line">  (with-temp-buffer</td>
      </tr>
      <tr>
        <td id="L1635" class="blob-num js-line-number" data-line-number="1635"></td>
        <td id="LC1635" class="blob-code blob-code-inner js-file-line">    (save-match-data</td>
      </tr>
      <tr>
        <td id="L1636" class="blob-num js-line-number" data-line-number="1636"></td>
        <td id="LC1636" class="blob-code blob-code-inner js-file-line">      (insert string)</td>
      </tr>
      <tr>
        <td id="L1637" class="blob-num js-line-number" data-line-number="1637"></td>
        <td id="LC1637" class="blob-code blob-code-inner js-file-line">      (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1638" class="blob-num js-line-number" data-line-number="1638"></td>
        <td id="LC1638" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">while</span> (re-search-forward (regexp-opt char-list) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1639" class="blob-num js-line-number" data-line-number="1639"></td>
        <td id="LC1639" class="blob-code blob-code-inner js-file-line">	(add-text-properties (match-beginning <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L1640" class="blob-num js-line-number" data-line-number="1640"></td>
        <td id="LC1640" class="blob-code blob-code-inner js-file-line">			     (match-end <span class="pl-c1">0</span>) &#39;(org-protected <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L1641" class="blob-num js-line-number" data-line-number="1641"></td>
        <td id="LC1641" class="blob-code blob-code-inner js-file-line">      (buffer-string))))</td>
      </tr>
      <tr>
        <td id="L1642" class="blob-num js-line-number" data-line-number="1642"></td>
        <td id="LC1642" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1643" class="blob-num js-line-number" data-line-number="1643"></td>
        <td id="LC1643" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-keywords-maybe</span> (<span class="pl-c1">&amp;optional</span> <span class="pl-v">remove-list</span>)</td>
      </tr>
      <tr>
        <td id="L1644" class="blob-num js-line-number" data-line-number="1644"></td>
        <td id="LC1644" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Maybe remove keywords depending on rules in REMOVE-LIST.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1645" class="blob-num js-line-number" data-line-number="1645"></td>
        <td id="LC1645" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1646" class="blob-num js-line-number" data-line-number="1646"></td>
        <td id="LC1646" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((re-todo (mapconcat <span class="pl-c1">&#39;identity</span> org-export-latex-todo-keywords-1 <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>|<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1647" class="blob-num js-line-number" data-line-number="1647"></td>
        <td id="LC1647" class="blob-code blob-code-inner js-file-line">	(case-fold-search <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L1648" class="blob-num js-line-number" data-line-number="1648"></td>
        <td id="LC1648" class="blob-code blob-code-inner js-file-line">	(todo-markup org-export-latex-todo-keyword-markup)</td>
      </tr>
      <tr>
        <td id="L1649" class="blob-num js-line-number" data-line-number="1649"></td>
        <td id="LC1649" class="blob-code blob-code-inner js-file-line">	fmt)</td>
      </tr>
      <tr>
        <td id="L1650" class="blob-num js-line-number" data-line-number="1650"></td>
        <td id="LC1650" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; convert TODO keywords</span></td>
      </tr>
      <tr>
        <td id="L1651" class="blob-num js-line-number" data-line-number="1651"></td>
        <td id="LC1651" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (re-search-forward (concat <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>(<span class="pl-pds">&quot;</span></span> re-todo <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span>) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1652" class="blob-num js-line-number" data-line-number="1652"></td>
        <td id="LC1652" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (plist-get remove-list <span class="pl-c1">:todo</span>)</td>
      </tr>
      <tr>
        <td id="L1653" class="blob-num js-line-number" data-line-number="1653"></td>
        <td id="LC1653" class="blob-code blob-code-inner js-file-line">	  (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1654" class="blob-num js-line-number" data-line-number="1654"></td>
        <td id="LC1654" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> fmt (<span class="pl-k">cond</span></td>
      </tr>
      <tr>
        <td id="L1655" class="blob-num js-line-number" data-line-number="1655"></td>
        <td id="LC1655" class="blob-code blob-code-inner js-file-line">		   ((stringp todo-markup) todo-markup)</td>
      </tr>
      <tr>
        <td id="L1656" class="blob-num js-line-number" data-line-number="1656"></td>
        <td id="LC1656" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">and</span> (<span class="pl-k">consp</span> todo-markup) (stringp (<span class="pl-k">car</span> todo-markup)))</td>
      </tr>
      <tr>
        <td id="L1657" class="blob-num js-line-number" data-line-number="1657"></td>
        <td id="LC1657" class="blob-code blob-code-inner js-file-line">		    (<span class="pl-k">if</span> (<span class="pl-k">member</span> (match-string <span class="pl-c1">1</span>) org-export-latex-done-keywords)</td>
      </tr>
      <tr>
        <td id="L1658" class="blob-num js-line-number" data-line-number="1658"></td>
        <td id="LC1658" class="blob-code blob-code-inner js-file-line">			(<span class="pl-k">cdr</span> todo-markup) (<span class="pl-k">car</span> todo-markup)))</td>
      </tr>
      <tr>
        <td id="L1659" class="blob-num js-line-number" data-line-number="1659"></td>
        <td id="LC1659" class="blob-code blob-code-inner js-file-line">		   (<span class="pl-c1">t</span> (<span class="pl-k">cdr</span> (<span class="pl-k">or</span> (<span class="pl-k">assoc</span> (match-string <span class="pl-c1">1</span>) todo-markup)</td>
      </tr>
      <tr>
        <td id="L1660" class="blob-num js-line-number" data-line-number="1660"></td>
        <td id="LC1660" class="blob-code blob-code-inner js-file-line">			       (<span class="pl-k">car</span> todo-markup))))))</td>
      </tr>
      <tr>
        <td id="L1661" class="blob-num js-line-number" data-line-number="1661"></td>
        <td id="LC1661" class="blob-code blob-code-inner js-file-line">	(replace-match (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1662" class="blob-num js-line-number" data-line-number="1662"></td>
        <td id="LC1662" class="blob-code blob-code-inner js-file-line">			(<span class="pl-c1">format</span> fmt (match-string <span class="pl-c1">1</span>))) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L1663" class="blob-num js-line-number" data-line-number="1663"></td>
        <td id="LC1663" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; convert priority string</span></td>
      </tr>
      <tr>
        <td id="L1664" class="blob-num js-line-number" data-line-number="1664"></td>
        <td id="LC1664" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>[<span class="pl-cce">\\\\</span>#.<span class="pl-cce">\\</span>]<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1665" class="blob-num js-line-number" data-line-number="1665"></td>
        <td id="LC1665" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (plist-get remove-list <span class="pl-c1">:priority</span>)</td>
      </tr>
      <tr>
        <td id="L1666" class="blob-num js-line-number" data-line-number="1666"></td>
        <td id="LC1666" class="blob-code blob-code-inner js-file-line">	  (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1667" class="blob-num js-line-number" data-line-number="1667"></td>
        <td id="LC1667" class="blob-code blob-code-inner js-file-line">	(replace-match (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>textbf{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> (match-string <span class="pl-c1">0</span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L1668" class="blob-num js-line-number" data-line-number="1668"></td>
        <td id="LC1668" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; convert tags</span></td>
      </tr>
      <tr>
        <td id="L1669" class="blob-num js-line-number" data-line-number="1669"></td>
        <td id="LC1669" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(:[a-zA-Z0-9_@#%]+<span class="pl-cce">\\</span>)+:<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1670" class="blob-num js-line-number" data-line-number="1670"></td>
        <td id="LC1670" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (<span class="pl-k">or</span> (<span class="pl-k">not</span> org-export-with-tags)</td>
      </tr>
      <tr>
        <td id="L1671" class="blob-num js-line-number" data-line-number="1671"></td>
        <td id="LC1671" class="blob-code blob-code-inner js-file-line">	      (plist-get remove-list <span class="pl-c1">:tags</span>))</td>
      </tr>
      <tr>
        <td id="L1672" class="blob-num js-line-number" data-line-number="1672"></td>
        <td id="LC1672" class="blob-code blob-code-inner js-file-line">	  (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1673" class="blob-num js-line-number" data-line-number="1673"></td>
        <td id="LC1673" class="blob-code blob-code-inner js-file-line">	(replace-match</td>
      </tr>
      <tr>
        <td id="L1674" class="blob-num js-line-number" data-line-number="1674"></td>
        <td id="LC1674" class="blob-code blob-code-inner js-file-line">	 (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1675" class="blob-num js-line-number" data-line-number="1675"></td>
        <td id="LC1675" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-c1">format</span> org-export-latex-tag-markup</td>
      </tr>
      <tr>
        <td id="L1676" class="blob-num js-line-number" data-line-number="1676"></td>
        <td id="LC1676" class="blob-code blob-code-inner js-file-line">		  (save-match-data</td>
      </tr>
      <tr>
        <td id="L1677" class="blob-num js-line-number" data-line-number="1677"></td>
        <td id="LC1677" class="blob-code blob-code-inner js-file-line">		    (replace-regexp-in-string</td>
      </tr>
      <tr>
        <td id="L1678" class="blob-num js-line-number" data-line-number="1678"></td>
        <td id="LC1678" class="blob-code blob-code-inner js-file-line">		     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>([_#]<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\\\</span>1<span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">0</span>)))))</td>
      </tr>
      <tr>
        <td id="L1679" class="blob-num js-line-number" data-line-number="1679"></td>
        <td id="LC1679" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))))</td>
      </tr>
      <tr>
        <td id="L1680" class="blob-num js-line-number" data-line-number="1680"></td>
        <td id="LC1680" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1681" class="blob-num js-line-number" data-line-number="1681"></td>
        <td id="LC1681" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-fontify-headline</span> (<span class="pl-v">string</span>)</td>
      </tr>
      <tr>
        <td id="L1682" class="blob-num js-line-number" data-line-number="1682"></td>
        <td id="LC1682" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Fontify special words in STRING.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1683" class="blob-num js-line-number" data-line-number="1683"></td>
        <td id="LC1683" class="blob-code blob-code-inner js-file-line">  (with-temp-buffer</td>
      </tr>
      <tr>
        <td id="L1684" class="blob-num js-line-number" data-line-number="1684"></td>
        <td id="LC1684" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; FIXME: org-inside-LaTeX-fragment-p doesn&#39;t work when the $...$ is at</span></td>
      </tr>
      <tr>
        <td id="L1685" class="blob-num js-line-number" data-line-number="1685"></td>
        <td id="LC1685" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; the beginning of the buffer - inserting &quot;\n&quot; is safe here though.</span></td>
      </tr>
      <tr>
        <td id="L1686" class="blob-num js-line-number" data-line-number="1686"></td>
        <td id="LC1686" class="blob-code blob-code-inner js-file-line">    (insert <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> string)</td>
      </tr>
      <tr>
        <td id="L1687" class="blob-num js-line-number" data-line-number="1687"></td>
        <td id="LC1687" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1688" class="blob-num js-line-number" data-line-number="1688"></td>
        <td id="LC1688" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; Preserve math snippets</span></td>
      </tr>
      <tr>
        <td id="L1689" class="blob-num js-line-number" data-line-number="1689"></td>
        <td id="LC1689" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1690" class="blob-num js-line-number" data-line-number="1690"></td>
        <td id="LC1690" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">let*</span> ((matchers (plist-get org-format-latex-options <span class="pl-c1">:matchers</span>))</td>
      </tr>
      <tr>
        <td id="L1691" class="blob-num js-line-number" data-line-number="1691"></td>
        <td id="LC1691" class="blob-code blob-code-inner js-file-line">	   (re-list org-latex-regexps)</td>
      </tr>
      <tr>
        <td id="L1692" class="blob-num js-line-number" data-line-number="1692"></td>
        <td id="LC1692" class="blob-code blob-code-inner js-file-line">	   beg end re e m n block off)</td>
      </tr>
      <tr>
        <td id="L1693" class="blob-num js-line-number" data-line-number="1693"></td>
        <td id="LC1693" class="blob-code blob-code-inner js-file-line">      <span class="pl-c">;; Check the different regular expressions</span></td>
      </tr>
      <tr>
        <td id="L1694" class="blob-num js-line-number" data-line-number="1694"></td>
        <td id="LC1694" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">while</span> (<span class="pl-k">setq</span> e (<span class="pl-k">pop</span> re-list))</td>
      </tr>
      <tr>
        <td id="L1695" class="blob-num js-line-number" data-line-number="1695"></td>
        <td id="LC1695" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> m (<span class="pl-k">car</span> e) re (<span class="pl-k">nth</span> <span class="pl-c1">1</span> e) n (<span class="pl-k">nth</span> <span class="pl-c1">2</span> e)</td>
      </tr>
      <tr>
        <td id="L1696" class="blob-num js-line-number" data-line-number="1696"></td>
        <td id="LC1696" class="blob-code blob-code-inner js-file-line">	      block (<span class="pl-k">if</span> (<span class="pl-k">nth</span> <span class="pl-c1">3</span> e) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\n</span><span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1697" class="blob-num js-line-number" data-line-number="1697"></td>
        <td id="LC1697" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> off (<span class="pl-k">if</span> (<span class="pl-k">member</span> m &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>$1<span class="pl-pds">&quot;</span></span>)) <span class="pl-c1">1</span> <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1698" class="blob-num js-line-number" data-line-number="1698"></td>
        <td id="LC1698" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">when</span> (<span class="pl-k">and</span> (<span class="pl-k">member</span> m matchers) (<span class="pl-k">not</span> (<span class="pl-k">equal</span> m <span class="pl-s"><span class="pl-pds">&quot;</span>begin<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1699" class="blob-num js-line-number" data-line-number="1699"></td>
        <td id="LC1699" class="blob-code blob-code-inner js-file-line">	  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1700" class="blob-num js-line-number" data-line-number="1700"></td>
        <td id="LC1700" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">while</span> (re-search-forward re <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1701" class="blob-num js-line-number" data-line-number="1701"></td>
        <td id="LC1701" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> beg (<span class="pl-k">+</span> (match-beginning <span class="pl-c1">0</span>) off) end (<span class="pl-k">-</span> (match-end <span class="pl-c1">0</span>) <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1702" class="blob-num js-line-number" data-line-number="1702"></td>
        <td id="LC1702" class="blob-code blob-code-inner js-file-line">	    (add-text-properties beg end</td>
      </tr>
      <tr>
        <td id="L1703" class="blob-num js-line-number" data-line-number="1703"></td>
        <td id="LC1703" class="blob-code blob-code-inner js-file-line">				 &#39;(org-protected <span class="pl-c1">t</span> org-latex-math <span class="pl-c1">t</span>))))))</td>
      </tr>
      <tr>
        <td id="L1704" class="blob-num js-line-number" data-line-number="1704"></td>
        <td id="LC1704" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1705" class="blob-num js-line-number" data-line-number="1705"></td>
        <td id="LC1705" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; Convert LaTeX to \LaTeX{} and TeX to \TeX{}</span></td>
      </tr>
      <tr>
        <td id="L1706" class="blob-num js-line-number" data-line-number="1706"></td>
        <td id="LC1706" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1707" class="blob-num js-line-number" data-line-number="1707"></td>
        <td id="LC1707" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">let</span> ((case-fold-search <span class="pl-c1">nil</span>))</td>
      </tr>
      <tr>
        <td id="L1708" class="blob-num js-line-number" data-line-number="1708"></td>
        <td id="LC1708" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>(La<span class="pl-cce">\\</span>)?TeX<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1709" class="blob-num js-line-number" data-line-number="1709"></td>
        <td id="LC1709" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">unless</span> (<span class="pl-k">eq</span> (char-before (match-beginning <span class="pl-c1">1</span>)) <span class="pl-c1">?\\</span>)</td>
      </tr>
      <tr>
        <td id="L1710" class="blob-num js-line-number" data-line-number="1710"></td>
        <td id="LC1710" class="blob-code blob-code-inner js-file-line">	  (org-if-unprotected-1</td>
      </tr>
      <tr>
        <td id="L1711" class="blob-num js-line-number" data-line-number="1711"></td>
        <td id="LC1711" class="blob-code blob-code-inner js-file-line">	   (replace-match (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1712" class="blob-num js-line-number" data-line-number="1712"></td>
        <td id="LC1712" class="blob-code blob-code-inner js-file-line">			   (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1713" class="blob-num js-line-number" data-line-number="1713"></td>
        <td id="LC1713" class="blob-code blob-code-inner js-file-line">				   <span class="pl-s"><span class="pl-pds">&quot;</span>{}<span class="pl-pds">&quot;</span></span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))))</td>
      </tr>
      <tr>
        <td id="L1714" class="blob-num js-line-number" data-line-number="1714"></td>
        <td id="LC1714" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1715" class="blob-num js-line-number" data-line-number="1715"></td>
        <td id="LC1715" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">let</span> ((re (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\\\</span>([a-zA-Z]+<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1716" class="blob-num js-line-number" data-line-number="1716"></td>
        <td id="LC1716" class="blob-code blob-code-inner js-file-line">		      <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(?:&lt;[^&lt;&gt;<span class="pl-cce">\n</span>]*&gt;<span class="pl-cce">\\</span>)*<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1717" class="blob-num js-line-number" data-line-number="1717"></td>
        <td id="LC1717" class="blob-code blob-code-inner js-file-line">		      <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(?:<span class="pl-cce">\\</span>[[^][<span class="pl-cce">\n</span>]*?<span class="pl-cce">\\</span>]<span class="pl-cce">\\</span>)*<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1718" class="blob-num js-line-number" data-line-number="1718"></td>
        <td id="LC1718" class="blob-code blob-code-inner js-file-line">		      <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(?:&lt;[^&lt;&gt;<span class="pl-cce">\n</span>]*&gt;<span class="pl-cce">\\</span>)*<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1719" class="blob-num js-line-number" data-line-number="1719"></td>
        <td id="LC1719" class="blob-code blob-code-inner js-file-line">		      <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1720" class="blob-num js-line-number" data-line-number="1720"></td>
        <td id="LC1720" class="blob-code blob-code-inner js-file-line">		      (org-create-multibrace-regexp <span class="pl-s"><span class="pl-pds">&quot;</span>{<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">3</span>)</td>
      </tr>
      <tr>
        <td id="L1721" class="blob-num js-line-number" data-line-number="1721"></td>
        <td id="LC1721" class="blob-code blob-code-inner js-file-line">		      <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>{1,3<span class="pl-cce">\\</span>}<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1722" class="blob-num js-line-number" data-line-number="1722"></td>
        <td id="LC1722" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">while</span> (re-search-forward re <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1723" class="blob-num js-line-number" data-line-number="1723"></td>
        <td id="LC1723" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">unless</span> (<span class="pl-k">or</span></td>
      </tr>
      <tr>
        <td id="L1724" class="blob-num js-line-number" data-line-number="1724"></td>
        <td id="LC1724" class="blob-code blob-code-inner js-file-line">		 <span class="pl-c">;; check for comment line</span></td>
      </tr>
      <tr>
        <td id="L1725" class="blob-num js-line-number" data-line-number="1725"></td>
        <td id="LC1725" class="blob-code blob-code-inner js-file-line">		 (save-excursion (goto-char (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1726" class="blob-num js-line-number" data-line-number="1726"></td>
        <td id="LC1726" class="blob-code blob-code-inner js-file-line">				 (org-in-indented-comment-line))</td>
      </tr>
      <tr>
        <td id="L1727" class="blob-num js-line-number" data-line-number="1727"></td>
        <td id="LC1727" class="blob-code blob-code-inner js-file-line">		 <span class="pl-c">;; Check if this is a defined entity, so that is may need conversion</span></td>
      </tr>
      <tr>
        <td id="L1728" class="blob-num js-line-number" data-line-number="1728"></td>
        <td id="LC1728" class="blob-code blob-code-inner js-file-line">		 (org-entity-get (match-string <span class="pl-c1">1</span>)))</td>
      </tr>
      <tr>
        <td id="L1729" class="blob-num js-line-number" data-line-number="1729"></td>
        <td id="LC1729" class="blob-code blob-code-inner js-file-line">	  (add-text-properties (match-beginning <span class="pl-c1">0</span>) (match-end <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L1730" class="blob-num js-line-number" data-line-number="1730"></td>
        <td id="LC1730" class="blob-code blob-code-inner js-file-line">			       &#39;(org-protected <span class="pl-c1">t</span>)))))</td>
      </tr>
      <tr>
        <td id="L1731" class="blob-num js-line-number" data-line-number="1731"></td>
        <td id="LC1731" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (plist-get org-export-latex-options-plist <span class="pl-c1">:emphasize</span>)</td>
      </tr>
      <tr>
        <td id="L1732" class="blob-num js-line-number" data-line-number="1732"></td>
        <td id="LC1732" class="blob-code blob-code-inner js-file-line">      (org-export-latex-fontify))</td>
      </tr>
      <tr>
        <td id="L1733" class="blob-num js-line-number" data-line-number="1733"></td>
        <td id="LC1733" class="blob-code blob-code-inner js-file-line">    (org-export-latex-time-stamps)</td>
      </tr>
      <tr>
        <td id="L1734" class="blob-num js-line-number" data-line-number="1734"></td>
        <td id="LC1734" class="blob-code blob-code-inner js-file-line">    (org-export-latex-quotation-marks)</td>
      </tr>
      <tr>
        <td id="L1735" class="blob-num js-line-number" data-line-number="1735"></td>
        <td id="LC1735" class="blob-code blob-code-inner js-file-line">    (org-export-latex-keywords-maybe)</td>
      </tr>
      <tr>
        <td id="L1736" class="blob-num js-line-number" data-line-number="1736"></td>
        <td id="LC1736" class="blob-code blob-code-inner js-file-line">    (org-export-latex-special-chars</td>
      </tr>
      <tr>
        <td id="L1737" class="blob-num js-line-number" data-line-number="1737"></td>
        <td id="LC1737" class="blob-code blob-code-inner js-file-line">     (plist-get org-export-latex-options-plist <span class="pl-c1">:sub-superscript</span>))</td>
      </tr>
      <tr>
        <td id="L1738" class="blob-num js-line-number" data-line-number="1738"></td>
        <td id="LC1738" class="blob-code blob-code-inner js-file-line">    (org-export-latex-links)</td>
      </tr>
      <tr>
        <td id="L1739" class="blob-num js-line-number" data-line-number="1739"></td>
        <td id="LC1739" class="blob-code blob-code-inner js-file-line">    (org-trim (buffer-string))))</td>
      </tr>
      <tr>
        <td id="L1740" class="blob-num js-line-number" data-line-number="1740"></td>
        <td id="LC1740" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1741" class="blob-num js-line-number" data-line-number="1741"></td>
        <td id="LC1741" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-time-stamps</span> ()</td>
      </tr>
      <tr>
        <td id="L1742" class="blob-num js-line-number" data-line-number="1742"></td>
        <td id="LC1742" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Format time stamps.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1743" class="blob-num js-line-number" data-line-number="1743"></td>
        <td id="LC1743" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1744" class="blob-num js-line-number" data-line-number="1744"></td>
        <td id="LC1744" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((org-display-custom-times org-export-latex-display-custom-times))</td>
      </tr>
      <tr>
        <td id="L1745" class="blob-num js-line-number" data-line-number="1745"></td>
        <td id="LC1745" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (re-search-forward org-ts-regexp-both <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1746" class="blob-num js-line-number" data-line-number="1746"></td>
        <td id="LC1746" class="blob-code blob-code-inner js-file-line">      (org-if-unprotected-at (1- (point))</td>
      </tr>
      <tr>
        <td id="L1747" class="blob-num js-line-number" data-line-number="1747"></td>
        <td id="LC1747" class="blob-code blob-code-inner js-file-line">       (replace-match</td>
      </tr>
      <tr>
        <td id="L1748" class="blob-num js-line-number" data-line-number="1748"></td>
        <td id="LC1748" class="blob-code blob-code-inner js-file-line">	(org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1749" class="blob-num js-line-number" data-line-number="1749"></td>
        <td id="LC1749" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-c1">format</span> (<span class="pl-k">if</span> (string= <span class="pl-s"><span class="pl-pds">&quot;</span>&lt;<span class="pl-pds">&quot;</span></span> (substring (match-string <span class="pl-c1">0</span>) <span class="pl-c1">0</span> <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L1750" class="blob-num js-line-number" data-line-number="1750"></td>
        <td id="LC1750" class="blob-code blob-code-inner js-file-line">		     org-export-latex-timestamp-markup</td>
      </tr>
      <tr>
        <td id="L1751" class="blob-num js-line-number" data-line-number="1751"></td>
        <td id="LC1751" class="blob-code blob-code-inner js-file-line">		   org-export-latex-timestamp-inactive-markup)</td>
      </tr>
      <tr>
        <td id="L1752" class="blob-num js-line-number" data-line-number="1752"></td>
        <td id="LC1752" class="blob-code blob-code-inner js-file-line">		 (substring (org-translate-time (match-string <span class="pl-c1">0</span>)) <span class="pl-c1">1</span> <span class="pl-c1">-1</span>)))</td>
      </tr>
      <tr>
        <td id="L1753" class="blob-num js-line-number" data-line-number="1753"></td>
        <td id="LC1753" class="blob-code blob-code-inner js-file-line">	<span class="pl-c1">t</span> <span class="pl-c1">t</span>)))))</td>
      </tr>
      <tr>
        <td id="L1754" class="blob-num js-line-number" data-line-number="1754"></td>
        <td id="LC1754" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1755" class="blob-num js-line-number" data-line-number="1755"></td>
        <td id="LC1755" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-quotation-marks</span> ()</td>
      </tr>
      <tr>
        <td id="L1756" class="blob-num js-line-number" data-line-number="1756"></td>
        <td id="LC1756" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export quotation marks depending on language conventions.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1757" class="blob-num js-line-number" data-line-number="1757"></td>
        <td id="LC1757" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">mapc</span> (lambda(l)</td>
      </tr>
      <tr>
        <td id="L1758" class="blob-num js-line-number" data-line-number="1758"></td>
        <td id="LC1758" class="blob-code blob-code-inner js-file-line">	  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1759" class="blob-num js-line-number" data-line-number="1759"></td>
        <td id="LC1759" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">while</span> (re-search-forward (<span class="pl-k">car</span> l) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1760" class="blob-num js-line-number" data-line-number="1760"></td>
        <td id="LC1760" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">let</span> ((rpl (concat (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1761" class="blob-num js-line-number" data-line-number="1761"></td>
        <td id="LC1761" class="blob-code blob-code-inner js-file-line">			       (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1762" class="blob-num js-line-number" data-line-number="1762"></td>
        <td id="LC1762" class="blob-code blob-code-inner js-file-line">				(copy-sequence (<span class="pl-k">cdr</span> l))))))</td>
      </tr>
      <tr>
        <td id="L1763" class="blob-num js-line-number" data-line-number="1763"></td>
        <td id="LC1763" class="blob-code blob-code-inner js-file-line">	      (org-if-unprotected-1</td>
      </tr>
      <tr>
        <td id="L1764" class="blob-num js-line-number" data-line-number="1764"></td>
        <td id="LC1764" class="blob-code blob-code-inner js-file-line">	       (replace-match rpl <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))))</td>
      </tr>
      <tr>
        <td id="L1765" class="blob-num js-line-number" data-line-number="1765"></td>
        <td id="LC1765" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">cdr</span> (<span class="pl-k">or</span> (<span class="pl-k">assoc</span> (plist-get org-export-latex-options-plist <span class="pl-c1">:language</span>)</td>
      </tr>
      <tr>
        <td id="L1766" class="blob-num js-line-number" data-line-number="1766"></td>
        <td id="LC1766" class="blob-code blob-code-inner js-file-line">			org-export-latex-quotes)</td>
      </tr>
      <tr>
        <td id="L1767" class="blob-num js-line-number" data-line-number="1767"></td>
        <td id="LC1767" class="blob-code blob-code-inner js-file-line">		 <span class="pl-c">;; falls back on english</span></td>
      </tr>
      <tr>
        <td id="L1768" class="blob-num js-line-number" data-line-number="1768"></td>
        <td id="LC1768" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">assoc</span> <span class="pl-s"><span class="pl-pds">&quot;</span>en<span class="pl-pds">&quot;</span></span> org-export-latex-quotes)))))</td>
      </tr>
      <tr>
        <td id="L1769" class="blob-num js-line-number" data-line-number="1769"></td>
        <td id="LC1769" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1770" class="blob-num js-line-number" data-line-number="1770"></td>
        <td id="LC1770" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-special-chars</span> (<span class="pl-v">sub-superscript</span>)</td>
      </tr>
      <tr>
        <td id="L1771" class="blob-num js-line-number" data-line-number="1771"></td>
        <td id="LC1771" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Export special characters to LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L1772" class="blob-num js-line-number" data-line-number="1772"></td>
        <td id="LC1772" class="blob-code blob-code-inner js-file-line"><span class="pl-s">If SUB-SUPERSCRIPT is non-nil, convert <span class="pl-cce">\\</span> and ^.</span></td>
      </tr>
      <tr>
        <td id="L1773" class="blob-num js-line-number" data-line-number="1773"></td>
        <td id="LC1773" class="blob-code blob-code-inner js-file-line"><span class="pl-s">See the `org-export-latex.el&#39; code for a complete conversion table.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1774" class="blob-num js-line-number" data-line-number="1774"></td>
        <td id="LC1774" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1775" class="blob-num js-line-number" data-line-number="1775"></td>
        <td id="LC1775" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">mapc</span> (lambda(c)</td>
      </tr>
      <tr>
        <td id="L1776" class="blob-num js-line-number" data-line-number="1776"></td>
        <td id="LC1776" class="blob-code blob-code-inner js-file-line">	  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1777" class="blob-num js-line-number" data-line-number="1777"></td>
        <td id="LC1777" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">while</span> (re-search-forward c <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1778" class="blob-num js-line-number" data-line-number="1778"></td>
        <td id="LC1778" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; Put the point where to check for org-protected</span></td>
      </tr>
      <tr>
        <td id="L1779" class="blob-num js-line-number" data-line-number="1779"></td>
        <td id="LC1779" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">unless</span> (get-text-property (match-beginning <span class="pl-c1">2</span>) <span class="pl-c1">&#39;org-protected</span>)</td>
      </tr>
      <tr>
        <td id="L1780" class="blob-num js-line-number" data-line-number="1780"></td>
        <td id="LC1780" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">cond</span> ((<span class="pl-k">member</span> (match-string <span class="pl-c1">2</span>) &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>$<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1781" class="blob-num js-line-number" data-line-number="1781"></td>
        <td id="LC1781" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">if</span> (<span class="pl-k">equal</span> (match-string <span class="pl-c1">2</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>$<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1782" class="blob-num js-line-number" data-line-number="1782"></td>
        <td id="LC1782" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L1783" class="blob-num js-line-number" data-line-number="1783"></td>
        <td id="LC1783" class="blob-code blob-code-inner js-file-line">		       (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>$<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L1784" class="blob-num js-line-number" data-line-number="1784"></td>
        <td id="LC1784" class="blob-code blob-code-inner js-file-line">		    ((<span class="pl-k">member</span> (match-string <span class="pl-c1">2</span>) &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>&amp;<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>%<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>#<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1785" class="blob-num js-line-number" data-line-number="1785"></td>
        <td id="LC1785" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">if</span> (<span class="pl-k">equal</span> (match-string <span class="pl-c1">1</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1786" class="blob-num js-line-number" data-line-number="1786"></td>
        <td id="LC1786" class="blob-code blob-code-inner js-file-line">			 (replace-match (match-string <span class="pl-c1">2</span>) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1787" class="blob-num js-line-number" data-line-number="1787"></td>
        <td id="LC1787" class="blob-code blob-code-inner js-file-line">		       (replace-match (concat (match-string <span class="pl-c1">1</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1788" class="blob-num js-line-number" data-line-number="1788"></td>
        <td id="LC1788" class="blob-code blob-code-inner js-file-line">					      (match-string <span class="pl-c1">2</span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1789" class="blob-num js-line-number" data-line-number="1789"></td>
        <td id="LC1789" class="blob-code blob-code-inner js-file-line">		       (backward-char <span class="pl-c1">1</span>)))</td>
      </tr>
      <tr>
        <td id="L1790" class="blob-num js-line-number" data-line-number="1790"></td>
        <td id="LC1790" class="blob-code blob-code-inner js-file-line">		    ((<span class="pl-k">equal</span> (match-string <span class="pl-c1">2</span>) <span class="pl-s"><span class="pl-pds">&quot;</span>...<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1791" class="blob-num js-line-number" data-line-number="1791"></td>
        <td id="LC1791" class="blob-code blob-code-inner js-file-line">		     (replace-match</td>
      </tr>
      <tr>
        <td id="L1792" class="blob-num js-line-number" data-line-number="1792"></td>
        <td id="LC1792" class="blob-code blob-code-inner js-file-line">		      (concat (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1793" class="blob-num js-line-number" data-line-number="1793"></td>
        <td id="LC1793" class="blob-code blob-code-inner js-file-line">			      (org-export-latex-protect-string <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>ldots{}<span class="pl-pds">&quot;</span></span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L1794" class="blob-num js-line-number" data-line-number="1794"></td>
        <td id="LC1794" class="blob-code blob-code-inner js-file-line">		    ((<span class="pl-k">equal</span> (match-string <span class="pl-c1">2</span>) <span class="pl-s"><span class="pl-pds">&quot;</span>~<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1795" class="blob-num js-line-number" data-line-number="1795"></td>
        <td id="LC1795" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">cond</span> ((<span class="pl-k">equal</span> (match-string <span class="pl-c1">1</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span>) <span class="pl-c1">nil</span>)</td>
      </tr>
      <tr>
        <td id="L1796" class="blob-num js-line-number" data-line-number="1796"></td>
        <td id="LC1796" class="blob-code blob-code-inner js-file-line">			   ((<span class="pl-k">eq</span> <span class="pl-c1">&#39;org-link</span> (get-text-property <span class="pl-c1">0</span> <span class="pl-c1">&#39;face</span> (match-string <span class="pl-c1">2</span>)))</td>
      </tr>
      <tr>
        <td id="L1797" class="blob-num js-line-number" data-line-number="1797"></td>
        <td id="LC1797" class="blob-code blob-code-inner js-file-line">			    (replace-match (concat (match-string <span class="pl-c1">1</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>~<span class="pl-pds">&quot;</span></span>) <span class="pl-c1">t</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L1798" class="blob-num js-line-number" data-line-number="1798"></td>
        <td id="LC1798" class="blob-code blob-code-inner js-file-line">			   (<span class="pl-c1">t</span> (replace-match</td>
      </tr>
      <tr>
        <td id="L1799" class="blob-num js-line-number" data-line-number="1799"></td>
        <td id="LC1799" class="blob-code blob-code-inner js-file-line">			       (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1800" class="blob-num js-line-number" data-line-number="1800"></td>
        <td id="LC1800" class="blob-code blob-code-inner js-file-line">				(concat (match-string <span class="pl-c1">1</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>~{}<span class="pl-pds">&quot;</span></span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>))))</td>
      </tr>
      <tr>
        <td id="L1801" class="blob-num js-line-number" data-line-number="1801"></td>
        <td id="LC1801" class="blob-code blob-code-inner js-file-line">		    ((<span class="pl-k">member</span> (match-string <span class="pl-c1">2</span>) &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>{<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1802" class="blob-num js-line-number" data-line-number="1802"></td>
        <td id="LC1802" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">unless</span> (save-match-data (org-inside-latex-math-p))</td>
      </tr>
      <tr>
        <td id="L1803" class="blob-num js-line-number" data-line-number="1803"></td>
        <td id="LC1803" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-k">if</span> (<span class="pl-k">equal</span> (match-string <span class="pl-c1">1</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1804" class="blob-num js-line-number" data-line-number="1804"></td>
        <td id="LC1804" class="blob-code blob-code-inner js-file-line">			   (replace-match (match-string <span class="pl-c1">2</span>) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1805" class="blob-num js-line-number" data-line-number="1805"></td>
        <td id="LC1805" class="blob-code blob-code-inner js-file-line">			 (replace-match (concat (match-string <span class="pl-c1">1</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1806" class="blob-num js-line-number" data-line-number="1806"></td>
        <td id="LC1806" class="blob-code blob-code-inner js-file-line">						(match-string <span class="pl-c1">2</span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))))</td>
      </tr>
      <tr>
        <td id="L1807" class="blob-num js-line-number" data-line-number="1807"></td>
        <td id="LC1807" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">unless</span> (save-match-data (<span class="pl-k">or</span> (org-inside-latex-math-p) (org-at-table-p)))</td>
      </tr>
      <tr>
        <td id="L1808" class="blob-num js-line-number" data-line-number="1808"></td>
        <td id="LC1808" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">cond</span> ((<span class="pl-k">equal</span> (match-string <span class="pl-c1">2</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1809" class="blob-num js-line-number" data-line-number="1809"></td>
        <td id="LC1809" class="blob-code blob-code-inner js-file-line">		       (replace-match (<span class="pl-k">or</span> (save-match-data</td>
      </tr>
      <tr>
        <td id="L1810" class="blob-num js-line-number" data-line-number="1810"></td>
        <td id="LC1810" class="blob-code blob-code-inner js-file-line">					    (org-export-latex-treat-backslash-char</td>
      </tr>
      <tr>
        <td id="L1811" class="blob-num js-line-number" data-line-number="1811"></td>
        <td id="LC1811" class="blob-code blob-code-inner js-file-line">					     (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1812" class="blob-num js-line-number" data-line-number="1812"></td>
        <td id="LC1812" class="blob-code blob-code-inner js-file-line">					     (<span class="pl-k">or</span> (match-string <span class="pl-c1">3</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1813" class="blob-num js-line-number" data-line-number="1813"></td>
        <td id="LC1813" class="blob-code blob-code-inner js-file-line">					  <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1814" class="blob-num js-line-number" data-line-number="1814"></td>
        <td id="LC1814" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-k">when</span> (<span class="pl-k">and</span> (get-text-property (1- (point)) <span class="pl-c1">&#39;org-entity</span>)</td>
      </tr>
      <tr>
        <td id="L1815" class="blob-num js-line-number" data-line-number="1815"></td>
        <td id="LC1815" class="blob-code blob-code-inner js-file-line">				  (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>{}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1816" class="blob-num js-line-number" data-line-number="1816"></td>
        <td id="LC1816" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c">;; OK, this was an entity replacement, and the user</span></td>
      </tr>
      <tr>
        <td id="L1817" class="blob-num js-line-number" data-line-number="1817"></td>
        <td id="LC1817" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c">;; had terminated the entity with {}.  Make sure</span></td>
      </tr>
      <tr>
        <td id="L1818" class="blob-num js-line-number" data-line-number="1818"></td>
        <td id="LC1818" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c">;; {} is protected as well, and remove the extra {}</span></td>
      </tr>
      <tr>
        <td id="L1819" class="blob-num js-line-number" data-line-number="1819"></td>
        <td id="LC1819" class="blob-code blob-code-inner js-file-line">			 <span class="pl-c">;; inserted by the conversion.</span></td>
      </tr>
      <tr>
        <td id="L1820" class="blob-num js-line-number" data-line-number="1820"></td>
        <td id="LC1820" class="blob-code blob-code-inner js-file-line">			 (put-text-property (point) (<span class="pl-k">+</span> <span class="pl-c1">2</span> (point)) <span class="pl-c1">&#39;org-protected</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1821" class="blob-num js-line-number" data-line-number="1821"></td>
        <td id="LC1821" class="blob-code blob-code-inner js-file-line">			 (<span class="pl-k">if</span> (save-excursion (goto-char (<span class="pl-k">max</span> (<span class="pl-k">-</span> (point) <span class="pl-c1">2</span>) (point-min)))</td>
      </tr>
      <tr>
        <td id="L1822" class="blob-num js-line-number" data-line-number="1822"></td>
        <td id="LC1822" class="blob-code blob-code-inner js-file-line">					     (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>{}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1823" class="blob-num js-line-number" data-line-number="1823"></td>
        <td id="LC1823" class="blob-code blob-code-inner js-file-line">			     (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1824" class="blob-num js-line-number" data-line-number="1824"></td>
        <td id="LC1824" class="blob-code blob-code-inner js-file-line">			 (forward-char <span class="pl-c1">2</span>))</td>
      </tr>
      <tr>
        <td id="L1825" class="blob-num js-line-number" data-line-number="1825"></td>
        <td id="LC1825" class="blob-code blob-code-inner js-file-line">		       (backward-char <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L1826" class="blob-num js-line-number" data-line-number="1826"></td>
        <td id="LC1826" class="blob-code blob-code-inner js-file-line">		      ((<span class="pl-k">member</span> (match-string <span class="pl-c1">2</span>) &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>_<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1827" class="blob-num js-line-number" data-line-number="1827"></td>
        <td id="LC1827" class="blob-code blob-code-inner js-file-line">		       (replace-match (<span class="pl-k">or</span> (save-match-data</td>
      </tr>
      <tr>
        <td id="L1828" class="blob-num js-line-number" data-line-number="1828"></td>
        <td id="LC1828" class="blob-code blob-code-inner js-file-line">					    (org-export-latex-treat-sub-super-char</td>
      </tr>
      <tr>
        <td id="L1829" class="blob-num js-line-number" data-line-number="1829"></td>
        <td id="LC1829" class="blob-code blob-code-inner js-file-line">					     sub-superscript</td>
      </tr>
      <tr>
        <td id="L1830" class="blob-num js-line-number" data-line-number="1830"></td>
        <td id="LC1830" class="blob-code blob-code-inner js-file-line">					     (match-string <span class="pl-c1">2</span>)</td>
      </tr>
      <tr>
        <td id="L1831" class="blob-num js-line-number" data-line-number="1831"></td>
        <td id="LC1831" class="blob-code blob-code-inner js-file-line">					     (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1832" class="blob-num js-line-number" data-line-number="1832"></td>
        <td id="LC1832" class="blob-code blob-code-inner js-file-line">					     (match-string <span class="pl-c1">3</span>))) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1833" class="blob-num js-line-number" data-line-number="1833"></td>
        <td id="LC1833" class="blob-code blob-code-inner js-file-line">		       (backward-char <span class="pl-c1">1</span>)))))))</td>
      </tr>
      <tr>
        <td id="L1834" class="blob-num js-line-number" data-line-number="1834"></td>
        <td id="LC1834" class="blob-code blob-code-inner js-file-line">	&#39;(<span class="pl-c">;&quot;^\\([^\n$]*?\\|^\\)\\(\\\\?\\$\\)\\([^\n$]*\\)$&quot;</span></td>
      </tr>
      <tr>
        <td id="L1835" class="blob-num js-line-number" data-line-number="1835"></td>
        <td id="LC1835" class="blob-code blob-code-inner js-file-line">	  <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>(<span class="pl-cce">\\\\</span>?<span class="pl-cce">\\</span>$<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1836" class="blob-num js-line-number" data-line-number="1836"></td>
        <td id="LC1836" class="blob-code blob-code-inner js-file-line">	  <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>([a-zA-Z0-9()]+<span class="pl-cce">\\</span>|[ <span class="pl-cce">\t\n</span>]<span class="pl-cce">\\</span>|<span class="pl-cce">\\</span>b<span class="pl-cce">\\</span>|<span class="pl-cce">\\\\\\</span>)<span class="pl-cce">\\</span>(_<span class="pl-cce">\\</span>|<span class="pl-cce">\\</span>^<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>({[^{}]+}<span class="pl-cce">\\</span>|[a-zA-Z0-9]+<span class="pl-cce">\\</span>|[ <span class="pl-cce">\t\n</span>]<span class="pl-cce">\\</span>|[:punct:]<span class="pl-cce">\\</span>|)<span class="pl-cce">\\</span>|{[a-zA-Z0-9]+}<span class="pl-cce">\\</span>|([a-zA-Z0-9]+)<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1837" class="blob-num js-line-number" data-line-number="1837"></td>
        <td id="LC1837" class="blob-code blob-code-inner js-file-line">	  <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(.<span class="pl-cce">\\</span>|^<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>(<span class="pl-cce">\\\\\\</span>)<span class="pl-cce">\\</span>([ <span class="pl-cce">\t\n</span>]<span class="pl-cce">\\</span>|<span class="pl-cce">\\</span>([&amp;#%{}<span class="pl-cce">\&quot;</span>]<span class="pl-cce">\\</span>|[a-zA-Z][a-zA-Z0-9]*<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1838" class="blob-num js-line-number" data-line-number="1838"></td>
        <td id="LC1838" class="blob-code blob-code-inner js-file-line">	  <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(^<span class="pl-cce">\\</span>|.<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>([&amp;#%{}~]<span class="pl-cce">\\</span>|<span class="pl-cce">\\</span>.<span class="pl-cce">\\</span>.<span class="pl-cce">\\</span>.<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1839" class="blob-num js-line-number" data-line-number="1839"></td>
        <td id="LC1839" class="blob-code blob-code-inner js-file-line">	  <span class="pl-c">;; (?\&lt; . &quot;\\textless{}&quot;)</span></td>
      </tr>
      <tr>
        <td id="L1840" class="blob-num js-line-number" data-line-number="1840"></td>
        <td id="LC1840" class="blob-code blob-code-inner js-file-line">	  <span class="pl-c">;; (?\&gt; . &quot;\\textgreater{}&quot;)</span></td>
      </tr>
      <tr>
        <td id="L1841" class="blob-num js-line-number" data-line-number="1841"></td>
        <td id="LC1841" class="blob-code blob-code-inner js-file-line">	  )))</td>
      </tr>
      <tr>
        <td id="L1842" class="blob-num js-line-number" data-line-number="1842"></td>
        <td id="LC1842" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1843" class="blob-num js-line-number" data-line-number="1843"></td>
        <td id="LC1843" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-inside-latex-math-p</span> ()</td>
      </tr>
      <tr>
        <td id="L1844" class="blob-num js-line-number" data-line-number="1844"></td>
        <td id="LC1844" class="blob-code blob-code-inner js-file-line">  (get-text-property (point) <span class="pl-c1">&#39;org-latex-math</span>))</td>
      </tr>
      <tr>
        <td id="L1845" class="blob-num js-line-number" data-line-number="1845"></td>
        <td id="LC1845" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1846" class="blob-num js-line-number" data-line-number="1846"></td>
        <td id="LC1846" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-treat-sub-super-char</span></td>
      </tr>
      <tr>
        <td id="L1847" class="blob-num js-line-number" data-line-number="1847"></td>
        <td id="LC1847" class="blob-code blob-code-inner js-file-line">  (subsup char string-before string-after)</td>
      </tr>
      <tr>
        <td id="L1848" class="blob-num js-line-number" data-line-number="1848"></td>
        <td id="LC1848" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert the <span class="pl-cce">\&quot;</span>_<span class="pl-cce">\&quot;</span> and <span class="pl-cce">\&quot;</span>^<span class="pl-cce">\&quot;</span> characters to LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L1849" class="blob-num js-line-number" data-line-number="1849"></td>
        <td id="LC1849" class="blob-code blob-code-inner js-file-line"><span class="pl-s">SUBSUP corresponds to the ^: option in the #+OPTIONS line.</span></td>
      </tr>
      <tr>
        <td id="L1850" class="blob-num js-line-number" data-line-number="1850"></td>
        <td id="LC1850" class="blob-code blob-code-inner js-file-line"><span class="pl-s">Convert CHAR depending on STRING-BEFORE and STRING-AFTER.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1851" class="blob-num js-line-number" data-line-number="1851"></td>
        <td id="LC1851" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">cond</span> ((<span class="pl-k">equal</span> string-before <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1852" class="blob-num js-line-number" data-line-number="1852"></td>
        <td id="LC1852" class="blob-code blob-code-inner js-file-line">	 (concat string-before char string-after))</td>
      </tr>
      <tr>
        <td id="L1853" class="blob-num js-line-number" data-line-number="1853"></td>
        <td id="LC1853" class="blob-code blob-code-inner js-file-line">	((<span class="pl-k">and</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>S-+<span class="pl-pds">&quot;</span></span> string-after))</td>
      </tr>
      <tr>
        <td id="L1854" class="blob-num js-line-number" data-line-number="1854"></td>
        <td id="LC1854" class="blob-code blob-code-inner js-file-line">	 <span class="pl-c">;; this is part of a math formula</span></td>
      </tr>
      <tr>
        <td id="L1855" class="blob-num js-line-number" data-line-number="1855"></td>
        <td id="LC1855" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">cond</span> ((<span class="pl-k">eq</span> <span class="pl-c1">&#39;org-link</span> (get-text-property <span class="pl-c1">0</span> <span class="pl-c1">&#39;face</span> char))</td>
      </tr>
      <tr>
        <td id="L1856" class="blob-num js-line-number" data-line-number="1856"></td>
        <td id="LC1856" class="blob-code blob-code-inner js-file-line">		(concat string-before <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> char string-after))</td>
      </tr>
      <tr>
        <td id="L1857" class="blob-num js-line-number" data-line-number="1857"></td>
        <td id="LC1857" class="blob-code blob-code-inner js-file-line">	       ((save-match-data (org-inside-latex-math-p))</td>
      </tr>
      <tr>
        <td id="L1858" class="blob-num js-line-number" data-line-number="1858"></td>
        <td id="LC1858" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">if</span> subsup</td>
      </tr>
      <tr>
        <td id="L1859" class="blob-num js-line-number" data-line-number="1859"></td>
        <td id="LC1859" class="blob-code blob-code-inner js-file-line">		    (<span class="pl-k">cond</span> ((<span class="pl-k">eq</span> <span class="pl-c1">1</span> (<span class="pl-k">length</span> string-after))</td>
      </tr>
      <tr>
        <td id="L1860" class="blob-num js-line-number" data-line-number="1860"></td>
        <td id="LC1860" class="blob-code blob-code-inner js-file-line">			   (concat string-before char string-after))</td>
      </tr>
      <tr>
        <td id="L1861" class="blob-num js-line-number" data-line-number="1861"></td>
        <td id="LC1861" class="blob-code blob-code-inner js-file-line">			  ((string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[({]?<span class="pl-cce">\\</span>([^)}]+<span class="pl-cce">\\</span>)[)}]?<span class="pl-pds">&quot;</span></span> string-after)</td>
      </tr>
      <tr>
        <td id="L1862" class="blob-num js-line-number" data-line-number="1862"></td>
        <td id="LC1862" class="blob-code blob-code-inner js-file-line">			   (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-c1">%s%s</span>{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> string-before char</td>
      </tr>
      <tr>
        <td id="L1863" class="blob-num js-line-number" data-line-number="1863"></td>
        <td id="LC1863" class="blob-code blob-code-inner js-file-line">				   (match-string <span class="pl-c1">1</span> string-after))))))</td>
      </tr>
      <tr>
        <td id="L1864" class="blob-num js-line-number" data-line-number="1864"></td>
        <td id="LC1864" class="blob-code blob-code-inner js-file-line">	       ((<span class="pl-k">and</span> (<span class="pl-k">&gt;</span> (<span class="pl-k">length</span> string-after) <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1865" class="blob-num js-line-number" data-line-number="1865"></td>
        <td id="LC1865" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">or</span> (<span class="pl-k">eq</span> subsup <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1866" class="blob-num js-line-number" data-line-number="1866"></td>
        <td id="LC1866" class="blob-code blob-code-inner js-file-line">			 (<span class="pl-k">and</span> (<span class="pl-k">equal</span> subsup <span class="pl-c1">&#39;{}</span>) (<span class="pl-k">eq</span> (string-to-char string-after) <span class="pl-c1">?\{</span>)))</td>
      </tr>
      <tr>
        <td id="L1867" class="blob-num js-line-number" data-line-number="1867"></td>
        <td id="LC1867" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">or</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[{]?<span class="pl-cce">\\</span>([^}]+<span class="pl-cce">\\</span>)[}]?<span class="pl-pds">&quot;</span></span> string-after)</td>
      </tr>
      <tr>
        <td id="L1868" class="blob-num js-line-number" data-line-number="1868"></td>
        <td id="LC1868" class="blob-code blob-code-inner js-file-line">			 (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[(]?<span class="pl-cce">\\</span>([^)]+<span class="pl-cce">\\</span>)[)]?<span class="pl-pds">&quot;</span></span> string-after)))</td>
      </tr>
      <tr>
        <td id="L1869" class="blob-num js-line-number" data-line-number="1869"></td>
        <td id="LC1869" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1870" class="blob-num js-line-number" data-line-number="1870"></td>
        <td id="LC1870" class="blob-code blob-code-inner js-file-line">		(org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1871" class="blob-num js-line-number" data-line-number="1871"></td>
        <td id="LC1871" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-c1">%s</span>$<span class="pl-c1">%s</span>{<span class="pl-c1">%s</span>}$</span><span class="pl-pds">&quot;</span> string-before char</td>
      </tr>
      <tr>
        <td id="L1872" class="blob-num js-line-number" data-line-number="1872"></td>
        <td id="LC1872" class="blob-code blob-code-inner js-file-line">			 (<span class="pl-k">if</span> (<span class="pl-k">and</span> (<span class="pl-k">&gt;</span> (match-end <span class="pl-c1">1</span>) (1+ (match-beginning <span class="pl-c1">1</span>)))</td>
      </tr>
      <tr>
        <td id="L1873" class="blob-num js-line-number" data-line-number="1873"></td>
        <td id="LC1873" class="blob-code blob-code-inner js-file-line">				  (<span class="pl-k">not</span> (<span class="pl-k">equal</span> (substring string-after <span class="pl-c1">0</span> <span class="pl-c1">2</span>) <span class="pl-s"><span class="pl-pds">&quot;</span>{<span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1874" class="blob-num js-line-number" data-line-number="1874"></td>
        <td id="LC1874" class="blob-code blob-code-inner js-file-line">			     (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>mathrm{<span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">1</span> string-after) <span class="pl-s"><span class="pl-pds">&quot;</span>}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1875" class="blob-num js-line-number" data-line-number="1875"></td>
        <td id="LC1875" class="blob-code blob-code-inner js-file-line">			   (match-string <span class="pl-c1">1</span> string-after)))))</td>
      </tr>
      <tr>
        <td id="L1876" class="blob-num js-line-number" data-line-number="1876"></td>
        <td id="LC1876" class="blob-code blob-code-inner js-file-line">	       ((<span class="pl-k">eq</span> subsup <span class="pl-c1">t</span>) (concat string-before <span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-pds">&quot;</span></span> char string-after <span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1877" class="blob-num js-line-number" data-line-number="1877"></td>
        <td id="LC1877" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-c1">t</span> (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1878" class="blob-num js-line-number" data-line-number="1878"></td>
        <td id="LC1878" class="blob-code blob-code-inner js-file-line">		   (concat string-before <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> char <span class="pl-s"><span class="pl-pds">&quot;</span>{}<span class="pl-pds">&quot;</span></span> string-after)))))</td>
      </tr>
      <tr>
        <td id="L1879" class="blob-num js-line-number" data-line-number="1879"></td>
        <td id="LC1879" class="blob-code blob-code-inner js-file-line">	(<span class="pl-c1">t</span> (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1880" class="blob-num js-line-number" data-line-number="1880"></td>
        <td id="LC1880" class="blob-code blob-code-inner js-file-line">	    (concat string-before <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> char <span class="pl-s"><span class="pl-pds">&quot;</span>{}<span class="pl-pds">&quot;</span></span> string-after)))))</td>
      </tr>
      <tr>
        <td id="L1881" class="blob-num js-line-number" data-line-number="1881"></td>
        <td id="LC1881" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1882" class="blob-num js-line-number" data-line-number="1882"></td>
        <td id="LC1882" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-treat-backslash-char</span> (<span class="pl-v">string-before</span> <span class="pl-v">string-after</span>)</td>
      </tr>
      <tr>
        <td id="L1883" class="blob-num js-line-number" data-line-number="1883"></td>
        <td id="LC1883" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert the <span class="pl-cce">\&quot;</span>$<span class="pl-cce">\&quot;</span> special character to LaTeX.</span></td>
      </tr>
      <tr>
        <td id="L1884" class="blob-num js-line-number" data-line-number="1884"></td>
        <td id="LC1884" class="blob-code blob-code-inner js-file-line"><span class="pl-s">The conversion is made depending of STRING-BEFORE and STRING-AFTER.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1885" class="blob-num js-line-number" data-line-number="1885"></td>
        <td id="LC1885" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span>  ((ass (org-entity-get string-after)))</td>
      </tr>
      <tr>
        <td id="L1886" class="blob-num js-line-number" data-line-number="1886"></td>
        <td id="LC1886" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">cond</span></td>
      </tr>
      <tr>
        <td id="L1887" class="blob-num js-line-number" data-line-number="1887"></td>
        <td id="LC1887" class="blob-code blob-code-inner js-file-line">     (ass (org-add-props</td>
      </tr>
      <tr>
        <td id="L1888" class="blob-num js-line-number" data-line-number="1888"></td>
        <td id="LC1888" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">if</span> (<span class="pl-k">nth</span> <span class="pl-c1">2</span> ass)</td>
      </tr>
      <tr>
        <td id="L1889" class="blob-num js-line-number" data-line-number="1889"></td>
        <td id="LC1889" class="blob-code blob-code-inner js-file-line">		  (concat string-before</td>
      </tr>
      <tr>
        <td id="L1890" class="blob-num js-line-number" data-line-number="1890"></td>
        <td id="LC1890" class="blob-code blob-code-inner js-file-line">			  (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1891" class="blob-num js-line-number" data-line-number="1891"></td>
        <td id="LC1891" class="blob-code blob-code-inner js-file-line">			   (concat <span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-pds">&quot;</span></span> (<span class="pl-k">nth</span> <span class="pl-c1">1</span> ass) <span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1892" class="blob-num js-line-number" data-line-number="1892"></td>
        <td id="LC1892" class="blob-code blob-code-inner js-file-line">		(concat string-before (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1893" class="blob-num js-line-number" data-line-number="1893"></td>
        <td id="LC1893" class="blob-code blob-code-inner js-file-line">				       (<span class="pl-k">nth</span> <span class="pl-c1">1</span> ass))))</td>
      </tr>
      <tr>
        <td id="L1894" class="blob-num js-line-number" data-line-number="1894"></td>
        <td id="LC1894" class="blob-code blob-code-inner js-file-line">	      <span class="pl-c1">nil</span> <span class="pl-c1">&#39;org-entity</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L1895" class="blob-num js-line-number" data-line-number="1895"></td>
        <td id="LC1895" class="blob-code blob-code-inner js-file-line">     ((<span class="pl-k">and</span> (<span class="pl-k">not</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\n\t</span>]<span class="pl-pds">&quot;</span></span> string-after))</td>
      </tr>
      <tr>
        <td id="L1896" class="blob-num js-line-number" data-line-number="1896"></td>
        <td id="LC1896" class="blob-code blob-code-inner js-file-line">	   (<span class="pl-k">not</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]<span class="pl-cce">\\</span>&#39;<span class="pl-cce">\\</span>|^<span class="pl-pds">&quot;</span></span> string-before)))</td>
      </tr>
      <tr>
        <td id="L1897" class="blob-num js-line-number" data-line-number="1897"></td>
        <td id="LC1897" class="blob-code blob-code-inner js-file-line">      <span class="pl-c">;; backslash is inside a word</span></td>
      </tr>
      <tr>
        <td id="L1898" class="blob-num js-line-number" data-line-number="1898"></td>
        <td id="LC1898" class="blob-code blob-code-inner js-file-line">      (concat string-before</td>
      </tr>
      <tr>
        <td id="L1899" class="blob-num js-line-number" data-line-number="1899"></td>
        <td id="LC1899" class="blob-code blob-code-inner js-file-line">	      (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1900" class="blob-num js-line-number" data-line-number="1900"></td>
        <td id="LC1900" class="blob-code blob-code-inner js-file-line">	       (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textbackslash{}<span class="pl-pds">&quot;</span></span> string-after))))</td>
      </tr>
      <tr>
        <td id="L1901" class="blob-num js-line-number" data-line-number="1901"></td>
        <td id="LC1901" class="blob-code blob-code-inner js-file-line">     ((<span class="pl-k">not</span> (<span class="pl-k">or</span> (<span class="pl-k">equal</span> string-after <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1902" class="blob-num js-line-number" data-line-number="1902"></td>
        <td id="LC1902" class="blob-code blob-code-inner js-file-line">	       (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t\n</span>]<span class="pl-pds">&quot;</span></span> string-after)))</td>
      </tr>
      <tr>
        <td id="L1903" class="blob-num js-line-number" data-line-number="1903"></td>
        <td id="LC1903" class="blob-code blob-code-inner js-file-line">      <span class="pl-c">;; backslash might escape a character (like \#) or a user TeX</span></td>
      </tr>
      <tr>
        <td id="L1904" class="blob-num js-line-number" data-line-number="1904"></td>
        <td id="LC1904" class="blob-code blob-code-inner js-file-line">      <span class="pl-c">;; macro (like \setcounter)</span></td>
      </tr>
      <tr>
        <td id="L1905" class="blob-num js-line-number" data-line-number="1905"></td>
        <td id="LC1905" class="blob-code blob-code-inner js-file-line">      (concat string-before</td>
      </tr>
      <tr>
        <td id="L1906" class="blob-num js-line-number" data-line-number="1906"></td>
        <td id="LC1906" class="blob-code blob-code-inner js-file-line">	      (org-export-latex-protect-string (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> string-after))))</td>
      </tr>
      <tr>
        <td id="L1907" class="blob-num js-line-number" data-line-number="1907"></td>
        <td id="LC1907" class="blob-code blob-code-inner js-file-line">     ((<span class="pl-k">and</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t\n</span>]<span class="pl-pds">&quot;</span></span> string-after)</td>
      </tr>
      <tr>
        <td id="L1908" class="blob-num js-line-number" data-line-number="1908"></td>
        <td id="LC1908" class="blob-code blob-code-inner js-file-line">	   (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t\n</span>]<span class="pl-cce">\\</span>&#39;<span class="pl-pds">&quot;</span></span> string-before))</td>
      </tr>
      <tr>
        <td id="L1909" class="blob-num js-line-number" data-line-number="1909"></td>
        <td id="LC1909" class="blob-code blob-code-inner js-file-line">      <span class="pl-c">;; backslash is alone, convert it to $\backslash$</span></td>
      </tr>
      <tr>
        <td id="L1910" class="blob-num js-line-number" data-line-number="1910"></td>
        <td id="LC1910" class="blob-code blob-code-inner js-file-line">      (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1911" class="blob-num js-line-number" data-line-number="1911"></td>
        <td id="LC1911" class="blob-code blob-code-inner js-file-line">       (concat string-before <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textbackslash{}<span class="pl-pds">&quot;</span></span> string-after)))</td>
      </tr>
      <tr>
        <td id="L1912" class="blob-num js-line-number" data-line-number="1912"></td>
        <td id="LC1912" class="blob-code blob-code-inner js-file-line">     (<span class="pl-c1">t</span> (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L1913" class="blob-num js-line-number" data-line-number="1913"></td>
        <td id="LC1913" class="blob-code blob-code-inner js-file-line">	 (concat string-before <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textbackslash{}<span class="pl-pds">&quot;</span></span> string-after))))))</td>
      </tr>
      <tr>
        <td id="L1914" class="blob-num js-line-number" data-line-number="1914"></td>
        <td id="LC1914" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1915" class="blob-num js-line-number" data-line-number="1915"></td>
        <td id="LC1915" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-keywords</span> ()</td>
      </tr>
      <tr>
        <td id="L1916" class="blob-num js-line-number" data-line-number="1916"></td>
        <td id="LC1916" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert special keywords to LaTeX.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1917" class="blob-num js-line-number" data-line-number="1917"></td>
        <td id="LC1917" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1918" class="blob-num js-line-number" data-line-number="1918"></td>
        <td id="LC1918" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward org-export-latex-special-keyword-regexp <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1919" class="blob-num js-line-number" data-line-number="1919"></td>
        <td id="LC1919" class="blob-code blob-code-inner js-file-line">    (replace-match (<span class="pl-c1">format</span> org-export-latex-timestamp-keyword-markup</td>
      </tr>
      <tr>
        <td id="L1920" class="blob-num js-line-number" data-line-number="1920"></td>
        <td id="LC1920" class="blob-code blob-code-inner js-file-line">			   (match-string <span class="pl-c1">0</span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1921" class="blob-num js-line-number" data-line-number="1921"></td>
        <td id="LC1921" class="blob-code blob-code-inner js-file-line">    (save-excursion</td>
      </tr>
      <tr>
        <td id="L1922" class="blob-num js-line-number" data-line-number="1922"></td>
        <td id="LC1922" class="blob-code blob-code-inner js-file-line">      (beginning-of-line <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1923" class="blob-num js-line-number" data-line-number="1923"></td>
        <td id="LC1923" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">unless</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>.*<span class="pl-cce">\n</span>[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1924" class="blob-num js-line-number" data-line-number="1924"></td>
        <td id="LC1924" class="blob-code blob-code-inner js-file-line">	(end-of-line <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1925" class="blob-num js-line-number" data-line-number="1925"></td>
        <td id="LC1925" class="blob-code blob-code-inner js-file-line">	(insert <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)))))</td>
      </tr>
      <tr>
        <td id="L1926" class="blob-num js-line-number" data-line-number="1926"></td>
        <td id="LC1926" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1927" class="blob-num js-line-number" data-line-number="1927"></td>
        <td id="LC1927" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-fixed-width</span> (<span class="pl-v">opt</span>)</td>
      </tr>
      <tr>
        <td id="L1928" class="blob-num js-line-number" data-line-number="1928"></td>
        <td id="LC1928" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>When OPT is non-nil convert fixed-width sections to LaTeX.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1929" class="blob-num js-line-number" data-line-number="1929"></td>
        <td id="LC1929" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1930" class="blob-num js-line-number" data-line-number="1930"></td>
        <td id="LC1930" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*:<span class="pl-cce">\\</span>([ <span class="pl-cce">\t</span>]<span class="pl-cce">\\</span>|$<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1931" class="blob-num js-line-number" data-line-number="1931"></td>
        <td id="LC1931" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">unless</span> (get-text-property (point) <span class="pl-c1">&#39;org-example</span>)</td>
      </tr>
      <tr>
        <td id="L1932" class="blob-num js-line-number" data-line-number="1932"></td>
        <td id="LC1932" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">if</span> opt</td>
      </tr>
      <tr>
        <td id="L1933" class="blob-num js-line-number" data-line-number="1933"></td>
        <td id="LC1933" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">progn</span> (goto-char (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1934" class="blob-num js-line-number" data-line-number="1934"></td>
        <td id="LC1934" class="blob-code blob-code-inner js-file-line">		(insert <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{verbatim}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1935" class="blob-num js-line-number" data-line-number="1935"></td>
        <td id="LC1935" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">while</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>([ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>):<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>([ <span class="pl-cce">\t</span>]<span class="pl-cce">\\</span>|$<span class="pl-cce">\\</span>).*<span class="pl-cce">\\</span>)$<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1936" class="blob-num js-line-number" data-line-number="1936"></td>
        <td id="LC1936" class="blob-code blob-code-inner js-file-line">		  (replace-match (concat (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1937" class="blob-num js-line-number" data-line-number="1937"></td>
        <td id="LC1937" class="blob-code blob-code-inner js-file-line">					 (match-string <span class="pl-c1">2</span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1938" class="blob-num js-line-number" data-line-number="1938"></td>
        <td id="LC1938" class="blob-code blob-code-inner js-file-line">		  (forward-line))</td>
      </tr>
      <tr>
        <td id="L1939" class="blob-num js-line-number" data-line-number="1939"></td>
        <td id="LC1939" class="blob-code blob-code-inner js-file-line">		(insert <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{verbatim}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1940" class="blob-num js-line-number" data-line-number="1940"></td>
        <td id="LC1940" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">progn</span> (goto-char (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L1941" class="blob-num js-line-number" data-line-number="1941"></td>
        <td id="LC1941" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">while</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>([ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>):<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>([ <span class="pl-cce">\t</span>]<span class="pl-cce">\\</span>|$<span class="pl-cce">\\</span>).*<span class="pl-cce">\\</span>)$<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1942" class="blob-num js-line-number" data-line-number="1942"></td>
        <td id="LC1942" class="blob-code blob-code-inner js-file-line">		(replace-match (concat <span class="pl-s"><span class="pl-pds">&quot;</span>%<span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L1943" class="blob-num js-line-number" data-line-number="1943"></td>
        <td id="LC1943" class="blob-code blob-code-inner js-file-line">				       (match-string <span class="pl-c1">2</span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1944" class="blob-num js-line-number" data-line-number="1944"></td>
        <td id="LC1944" class="blob-code blob-code-inner js-file-line">		(forward-line)))))))</td>
      </tr>
      <tr>
        <td id="L1945" class="blob-num js-line-number" data-line-number="1945"></td>
        <td id="LC1945" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1946" class="blob-num js-line-number" data-line-number="1946"></td>
        <td id="LC1946" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-table-last-alignment</span>) <span class="pl-c">; defined in org-table.el</span></td>
      </tr>
      <tr>
        <td id="L1947" class="blob-num js-line-number" data-line-number="1947"></td>
        <td id="LC1947" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-table-last-column-widths</span>) <span class="pl-c">; defined in org-table.el</span></td>
      </tr>
      <tr>
        <td id="L1948" class="blob-num js-line-number" data-line-number="1948"></td>
        <td id="LC1948" class="blob-code blob-code-inner js-file-line">(declare-function orgtbl-to-latex <span class="pl-s"><span class="pl-pds">&quot;</span>org-table<span class="pl-pds">&quot;</span></span> (table params) <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1949" class="blob-num js-line-number" data-line-number="1949"></td>
        <td id="LC1949" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-tables</span> (<span class="pl-v">insert</span>)</td>
      </tr>
      <tr>
        <td id="L1950" class="blob-num js-line-number" data-line-number="1950"></td>
        <td id="LC1950" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert tables to LaTeX and INSERT it.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L1951" class="blob-num js-line-number" data-line-number="1951"></td>
        <td id="LC1951" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; First, get the table.el tables</span></td>
      </tr>
      <tr>
        <td id="L1952" class="blob-num js-line-number" data-line-number="1952"></td>
        <td id="LC1952" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1953" class="blob-num js-line-number" data-line-number="1953"></td>
        <td id="LC1953" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>+-[-+]*<span class="pl-cce">\\</span>+<span class="pl-cce">\\</span>)[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\n</span>[ <span class="pl-cce">\t</span>]*|<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1954" class="blob-num js-line-number" data-line-number="1954"></td>
        <td id="LC1954" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected</td>
      </tr>
      <tr>
        <td id="L1955" class="blob-num js-line-number" data-line-number="1955"></td>
        <td id="LC1955" class="blob-code blob-code-inner js-file-line">     (require <span class="pl-c1">&#39;table</span>)</td>
      </tr>
      <tr>
        <td id="L1956" class="blob-num js-line-number" data-line-number="1956"></td>
        <td id="LC1956" class="blob-code blob-code-inner js-file-line">     (org-export-latex-convert-table.el-table)))</td>
      </tr>
      <tr>
        <td id="L1957" class="blob-num js-line-number" data-line-number="1957"></td>
        <td id="LC1957" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L1958" class="blob-num js-line-number" data-line-number="1958"></td>
        <td id="LC1958" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; And now the Org-mode tables</span></td>
      </tr>
      <tr>
        <td id="L1959" class="blob-num js-line-number" data-line-number="1959"></td>
        <td id="LC1959" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L1960" class="blob-num js-line-number" data-line-number="1960"></td>
        <td id="LC1960" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>([ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>)|<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L1961" class="blob-num js-line-number" data-line-number="1961"></td>
        <td id="LC1961" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected-at (1- (point))</td>
      </tr>
      <tr>
        <td id="L1962" class="blob-num js-line-number" data-line-number="1962"></td>
        <td id="LC1962" class="blob-code blob-code-inner js-file-line">      (org-table-align)</td>
      </tr>
      <tr>
        <td id="L1963" class="blob-num js-line-number" data-line-number="1963"></td>
        <td id="LC1963" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">let*</span> ((beg (org-table-begin))</td>
      </tr>
      <tr>
        <td id="L1964" class="blob-num js-line-number" data-line-number="1964"></td>
        <td id="LC1964" class="blob-code blob-code-inner js-file-line">             (end (org-table-end))</td>
      </tr>
      <tr>
        <td id="L1965" class="blob-num js-line-number" data-line-number="1965"></td>
        <td id="LC1965" class="blob-code blob-code-inner js-file-line">             (raw-table (buffer-substring beg end))</td>
      </tr>
      <tr>
        <td id="L1966" class="blob-num js-line-number" data-line-number="1966"></td>
        <td id="LC1966" class="blob-code blob-code-inner js-file-line">             (org-table-last-alignment (copy-sequence org-table-last-alignment))</td>
      </tr>
      <tr>
        <td id="L1967" class="blob-num js-line-number" data-line-number="1967"></td>
        <td id="LC1967" class="blob-code blob-code-inner js-file-line">             (org-table-last-column-widths (copy-sequence</td>
      </tr>
      <tr>
        <td id="L1968" class="blob-num js-line-number" data-line-number="1968"></td>
        <td id="LC1968" class="blob-code blob-code-inner js-file-line">                                            org-table-last-column-widths))</td>
      </tr>
      <tr>
        <td id="L1969" class="blob-num js-line-number" data-line-number="1969"></td>
        <td id="LC1969" class="blob-code blob-code-inner js-file-line">             fnum fields line lines olines gr colgropen line-fmt align</td>
      </tr>
      <tr>
        <td id="L1970" class="blob-num js-line-number" data-line-number="1970"></td>
        <td id="LC1970" class="blob-code blob-code-inner js-file-line">             caption width shortn label attr hfmt floatp placement</td>
      </tr>
      <tr>
        <td id="L1971" class="blob-num js-line-number" data-line-number="1971"></td>
        <td id="LC1971" class="blob-code blob-code-inner js-file-line">	     longtblp tblenv tabular-env)</td>
      </tr>
      <tr>
        <td id="L1972" class="blob-num js-line-number" data-line-number="1972"></td>
        <td id="LC1972" class="blob-code blob-code-inner js-file-line">        (<span class="pl-k">if</span> org-export-latex-tables-verbatim</td>
      </tr>
      <tr>
        <td id="L1973" class="blob-num js-line-number" data-line-number="1973"></td>
        <td id="LC1973" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">let*</span> ((tbl (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{verbatim}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> raw-table</td>
      </tr>
      <tr>
        <td id="L1974" class="blob-num js-line-number" data-line-number="1974"></td>
        <td id="LC1974" class="blob-code blob-code-inner js-file-line">                                <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{verbatim}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L1975" class="blob-num js-line-number" data-line-number="1975"></td>
        <td id="LC1975" class="blob-code blob-code-inner js-file-line">              (<span class="pl-k">apply</span> <span class="pl-c1">&#39;delete-region</span> (<span class="pl-k">list</span> beg end))</td>
      </tr>
      <tr>
        <td id="L1976" class="blob-num js-line-number" data-line-number="1976"></td>
        <td id="LC1976" class="blob-code blob-code-inner js-file-line">              (insert (org-export-latex-protect-string tbl)))</td>
      </tr>
      <tr>
        <td id="L1977" class="blob-num js-line-number" data-line-number="1977"></td>
        <td id="LC1977" class="blob-code blob-code-inner js-file-line">          (<span class="pl-k">progn</span></td>
      </tr>
      <tr>
        <td id="L1978" class="blob-num js-line-number" data-line-number="1978"></td>
        <td id="LC1978" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">setq</span> caption (org-find-text-property-in-string</td>
      </tr>
      <tr>
        <td id="L1979" class="blob-num js-line-number" data-line-number="1979"></td>
        <td id="LC1979" class="blob-code blob-code-inner js-file-line">                           <span class="pl-c1">&#39;org-caption</span> raw-table)</td>
      </tr>
      <tr>
        <td id="L1980" class="blob-num js-line-number" data-line-number="1980"></td>
        <td id="LC1980" class="blob-code blob-code-inner js-file-line">		  shortn (org-find-text-property-in-string</td>
      </tr>
      <tr>
        <td id="L1981" class="blob-num js-line-number" data-line-number="1981"></td>
        <td id="LC1981" class="blob-code blob-code-inner js-file-line">			  <span class="pl-c1">&#39;org-caption-shortn</span> raw-table)</td>
      </tr>
      <tr>
        <td id="L1982" class="blob-num js-line-number" data-line-number="1982"></td>
        <td id="LC1982" class="blob-code blob-code-inner js-file-line">                  attr (org-find-text-property-in-string</td>
      </tr>
      <tr>
        <td id="L1983" class="blob-num js-line-number" data-line-number="1983"></td>
        <td id="LC1983" class="blob-code blob-code-inner js-file-line">                        <span class="pl-c1">&#39;org-attributes</span> raw-table)</td>
      </tr>
      <tr>
        <td id="L1984" class="blob-num js-line-number" data-line-number="1984"></td>
        <td id="LC1984" class="blob-code blob-code-inner js-file-line">                  label (org-find-text-property-in-string</td>
      </tr>
      <tr>
        <td id="L1985" class="blob-num js-line-number" data-line-number="1985"></td>
        <td id="LC1985" class="blob-code blob-code-inner js-file-line">                         <span class="pl-c1">&#39;org-label</span> raw-table)</td>
      </tr>
      <tr>
        <td id="L1986" class="blob-num js-line-number" data-line-number="1986"></td>
        <td id="LC1986" class="blob-code blob-code-inner js-file-line">                  longtblp (<span class="pl-k">and</span> attr (stringp attr)</td>
      </tr>
      <tr>
        <td id="L1987" class="blob-num js-line-number" data-line-number="1987"></td>
        <td id="LC1987" class="blob-code blob-code-inner js-file-line">                                (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;longtable<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> attr))</td>
      </tr>
      <tr>
        <td id="L1988" class="blob-num js-line-number" data-line-number="1988"></td>
        <td id="LC1988" class="blob-code blob-code-inner js-file-line">		  tblenv (<span class="pl-k">if</span> (<span class="pl-k">and</span> attr (stringp attr))</td>
      </tr>
      <tr>
        <td id="L1989" class="blob-num js-line-number" data-line-number="1989"></td>
        <td id="LC1989" class="blob-code blob-code-inner js-file-line">			     (<span class="pl-k">cond</span> ((string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;sidewaystable<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L1990" class="blob-num js-line-number" data-line-number="1990"></td>
        <td id="LC1990" class="blob-code blob-code-inner js-file-line">				    <span class="pl-s"><span class="pl-pds">&quot;</span>sidewaystable<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1991" class="blob-num js-line-number" data-line-number="1991"></td>
        <td id="LC1991" class="blob-code blob-code-inner js-file-line">				   ((<span class="pl-k">or</span> (string-match (regexp-quote <span class="pl-s"><span class="pl-pds">&quot;</span>table*<span class="pl-pds">&quot;</span></span>) attr)</td>
      </tr>
      <tr>
        <td id="L1992" class="blob-num js-line-number" data-line-number="1992"></td>
        <td id="LC1992" class="blob-code blob-code-inner js-file-line">					(string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;multicolumn<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> attr))</td>
      </tr>
      <tr>
        <td id="L1993" class="blob-num js-line-number" data-line-number="1993"></td>
        <td id="LC1993" class="blob-code blob-code-inner js-file-line">				    <span class="pl-s"><span class="pl-pds">&quot;</span>table*<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1994" class="blob-num js-line-number" data-line-number="1994"></td>
        <td id="LC1994" class="blob-code blob-code-inner js-file-line">				   (<span class="pl-c1">t</span> <span class="pl-s"><span class="pl-pds">&quot;</span>table<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L1995" class="blob-num js-line-number" data-line-number="1995"></td>
        <td id="LC1995" class="blob-code blob-code-inner js-file-line">			   <span class="pl-s"><span class="pl-pds">&quot;</span>table<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L1996" class="blob-num js-line-number" data-line-number="1996"></td>
        <td id="LC1996" class="blob-code blob-code-inner js-file-line">		  tabular-env</td>
      </tr>
      <tr>
        <td id="L1997" class="blob-num js-line-number" data-line-number="1997"></td>
        <td id="LC1997" class="blob-code blob-code-inner js-file-line">		  (<span class="pl-k">if</span> (<span class="pl-k">and</span> attr (stringp attr)</td>
      </tr>
      <tr>
        <td id="L1998" class="blob-num js-line-number" data-line-number="1998"></td>
        <td id="LC1998" class="blob-code blob-code-inner js-file-line">			   (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(tabular.<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> attr))</td>
      </tr>
      <tr>
        <td id="L1999" class="blob-num js-line-number" data-line-number="1999"></td>
        <td id="LC1999" class="blob-code blob-code-inner js-file-line">		      (match-string <span class="pl-c1">1</span> attr)</td>
      </tr>
      <tr>
        <td id="L2000" class="blob-num js-line-number" data-line-number="2000"></td>
        <td id="LC2000" class="blob-code blob-code-inner js-file-line">		    org-export-latex-tabular-environment)</td>
      </tr>
      <tr>
        <td id="L2001" class="blob-num js-line-number" data-line-number="2001"></td>
        <td id="LC2001" class="blob-code blob-code-inner js-file-line">		  width (<span class="pl-k">and</span> attr (stringp attr)</td>
      </tr>
      <tr>
        <td id="L2002" class="blob-num js-line-number" data-line-number="2002"></td>
        <td id="LC2002" class="blob-code blob-code-inner js-file-line">                             (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;width=<span class="pl-cce">\\</span>([^ <span class="pl-cce">\t\n\r</span>]+<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L2003" class="blob-num js-line-number" data-line-number="2003"></td>
        <td id="LC2003" class="blob-code blob-code-inner js-file-line">                             (match-string <span class="pl-c1">1</span> attr))</td>
      </tr>
      <tr>
        <td id="L2004" class="blob-num js-line-number" data-line-number="2004"></td>
        <td id="LC2004" class="blob-code blob-code-inner js-file-line">                  align (<span class="pl-k">and</span> attr (stringp attr)</td>
      </tr>
      <tr>
        <td id="L2005" class="blob-num js-line-number" data-line-number="2005"></td>
        <td id="LC2005" class="blob-code blob-code-inner js-file-line">                             (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;align=<span class="pl-cce">\\</span>([^ <span class="pl-cce">\t\n\r</span>]+<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L2006" class="blob-num js-line-number" data-line-number="2006"></td>
        <td id="LC2006" class="blob-code blob-code-inner js-file-line">                             (match-string <span class="pl-c1">1</span> attr))</td>
      </tr>
      <tr>
        <td id="L2007" class="blob-num js-line-number" data-line-number="2007"></td>
        <td id="LC2007" class="blob-code blob-code-inner js-file-line">		  hfmt (<span class="pl-k">and</span> attr (stringp attr)</td>
      </tr>
      <tr>
        <td id="L2008" class="blob-num js-line-number" data-line-number="2008"></td>
        <td id="LC2008" class="blob-code blob-code-inner js-file-line">			    (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;hfmt=<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>S-+<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L2009" class="blob-num js-line-number" data-line-number="2009"></td>
        <td id="LC2009" class="blob-code blob-code-inner js-file-line">			    (match-string <span class="pl-c1">1</span> attr))</td>
      </tr>
      <tr>
        <td id="L2010" class="blob-num js-line-number" data-line-number="2010"></td>
        <td id="LC2010" class="blob-code blob-code-inner js-file-line">                  floatp (<span class="pl-k">or</span> caption label (string= <span class="pl-s"><span class="pl-pds">&quot;</span>table*<span class="pl-pds">&quot;</span></span> tblenv))</td>
      </tr>
      <tr>
        <td id="L2011" class="blob-num js-line-number" data-line-number="2011"></td>
        <td id="LC2011" class="blob-code blob-code-inner js-file-line">		  placement     (<span class="pl-k">if</span> (<span class="pl-k">and</span> attr</td>
      </tr>
      <tr>
        <td id="L2012" class="blob-num js-line-number" data-line-number="2012"></td>
        <td id="LC2012" class="blob-code blob-code-inner js-file-line">					 (stringp attr)</td>
      </tr>
      <tr>
        <td id="L2013" class="blob-num js-line-number" data-line-number="2013"></td>
        <td id="LC2013" class="blob-code blob-code-inner js-file-line">					 (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>&lt;placement=<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>S-+<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> attr))</td>
      </tr>
      <tr>
        <td id="L2014" class="blob-num js-line-number" data-line-number="2014"></td>
        <td id="LC2014" class="blob-code blob-code-inner js-file-line">				    (match-string <span class="pl-c1">1</span> attr)</td>
      </tr>
      <tr>
        <td id="L2015" class="blob-num js-line-number" data-line-number="2015"></td>
        <td id="LC2015" class="blob-code blob-code-inner js-file-line">				  (concat</td>
      </tr>
      <tr>
        <td id="L2016" class="blob-num js-line-number" data-line-number="2016"></td>
        <td id="LC2016" class="blob-code blob-code-inner js-file-line">				   <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span> org-latex-default-figure-position <span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2017" class="blob-num js-line-number" data-line-number="2017"></td>
        <td id="LC2017" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> caption (<span class="pl-k">and</span> caption (org-export-latex-fontify-headline caption)))</td>
      </tr>
      <tr>
        <td id="L2018" class="blob-num js-line-number" data-line-number="2018"></td>
        <td id="LC2018" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">setq</span> lines (org-split-string raw-table <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2019" class="blob-num js-line-number" data-line-number="2019"></td>
        <td id="LC2019" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">apply</span> <span class="pl-c1">&#39;delete-region</span> (<span class="pl-k">list</span> beg end))</td>
      </tr>
      <tr>
        <td id="L2020" class="blob-num js-line-number" data-line-number="2020"></td>
        <td id="LC2020" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">when</span> org-export-table-remove-special-lines</td>
      </tr>
      <tr>
        <td id="L2021" class="blob-num js-line-number" data-line-number="2021"></td>
        <td id="LC2021" class="blob-code blob-code-inner js-file-line">              (<span class="pl-k">setq</span> lines (org-table-clean-before-export lines <span class="pl-c1">&#39;maybe-quoted</span>)))</td>
      </tr>
      <tr>
        <td id="L2022" class="blob-num js-line-number" data-line-number="2022"></td>
        <td id="LC2022" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">when</span> org-table-clean-did-remove-column</td>
      </tr>
      <tr>
        <td id="L2023" class="blob-num js-line-number" data-line-number="2023"></td>
        <td id="LC2023" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">pop</span> org-table-last-alignment)</td>
      </tr>
      <tr>
        <td id="L2024" class="blob-num js-line-number" data-line-number="2024"></td>
        <td id="LC2024" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">pop</span> org-table-last-column-widths))</td>
      </tr>
      <tr>
        <td id="L2025" class="blob-num js-line-number" data-line-number="2025"></td>
        <td id="LC2025" class="blob-code blob-code-inner js-file-line">            <span class="pl-c">;; make a formatting string to reflect alignment</span></td>
      </tr>
      <tr>
        <td id="L2026" class="blob-num js-line-number" data-line-number="2026"></td>
        <td id="LC2026" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">setq</span> olines lines)</td>
      </tr>
      <tr>
        <td id="L2027" class="blob-num js-line-number" data-line-number="2027"></td>
        <td id="LC2027" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">while</span> (<span class="pl-k">and</span> (<span class="pl-k">not</span> line-fmt) (<span class="pl-k">setq</span> line (<span class="pl-k">pop</span> olines)))</td>
      </tr>
      <tr>
        <td id="L2028" class="blob-num js-line-number" data-line-number="2028"></td>
        <td id="LC2028" class="blob-code blob-code-inner js-file-line">              (<span class="pl-k">unless</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*|-<span class="pl-pds">&quot;</span></span> line)</td>
      </tr>
      <tr>
        <td id="L2029" class="blob-num js-line-number" data-line-number="2029"></td>
        <td id="LC2029" class="blob-code blob-code-inner js-file-line">                (<span class="pl-k">setq</span> fields (org-split-string line <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*|[ <span class="pl-cce">\t</span>]*<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2030" class="blob-num js-line-number" data-line-number="2030"></td>
        <td id="LC2030" class="blob-code blob-code-inner js-file-line">                (<span class="pl-k">setq</span> fnum (make-vector (<span class="pl-k">length</span> fields) <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L2031" class="blob-num js-line-number" data-line-number="2031"></td>
        <td id="LC2031" class="blob-code blob-code-inner js-file-line">                (<span class="pl-k">setq</span> line-fmt</td>
      </tr>
      <tr>
        <td id="L2032" class="blob-num js-line-number" data-line-number="2032"></td>
        <td id="LC2032" class="blob-code blob-code-inner js-file-line">                      (mapconcat</td>
      </tr>
      <tr>
        <td id="L2033" class="blob-num js-line-number" data-line-number="2033"></td>
        <td id="LC2033" class="blob-code blob-code-inner js-file-line">                       (<span class="pl-k">lambda</span> (<span class="pl-v">x</span>)</td>
      </tr>
      <tr>
        <td id="L2034" class="blob-num js-line-number" data-line-number="2034"></td>
        <td id="LC2034" class="blob-code blob-code-inner js-file-line">                         (<span class="pl-k">setq</span> gr (<span class="pl-k">pop</span> org-table-colgroup-info))</td>
      </tr>
      <tr>
        <td id="L2035" class="blob-num js-line-number" data-line-number="2035"></td>
        <td id="LC2035" class="blob-code blob-code-inner js-file-line">                         (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-c1">%s%%</span>s<span class="pl-c1">%s</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L2036" class="blob-num js-line-number" data-line-number="2036"></td>
        <td id="LC2036" class="blob-code blob-code-inner js-file-line">                                 (<span class="pl-k">cond</span> ((<span class="pl-k">eq</span> gr <span class="pl-c1">:start</span>)</td>
      </tr>
      <tr>
        <td id="L2037" class="blob-num js-line-number" data-line-number="2037"></td>
        <td id="LC2037" class="blob-code blob-code-inner js-file-line">                                        (<span class="pl-k">prog1</span> (<span class="pl-k">if</span> colgropen <span class="pl-s"><span class="pl-pds">&quot;</span>|<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>|<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2038" class="blob-num js-line-number" data-line-number="2038"></td>
        <td id="LC2038" class="blob-code blob-code-inner js-file-line">                                          (<span class="pl-k">setq</span> colgropen <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L2039" class="blob-num js-line-number" data-line-number="2039"></td>
        <td id="LC2039" class="blob-code blob-code-inner js-file-line">                                       ((<span class="pl-k">eq</span> gr <span class="pl-c1">:startend</span>)</td>
      </tr>
      <tr>
        <td id="L2040" class="blob-num js-line-number" data-line-number="2040"></td>
        <td id="LC2040" class="blob-code blob-code-inner js-file-line">                                        (<span class="pl-k">prog1</span> (<span class="pl-k">if</span> colgropen <span class="pl-s"><span class="pl-pds">&quot;</span>|<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>|<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2041" class="blob-num js-line-number" data-line-number="2041"></td>
        <td id="LC2041" class="blob-code blob-code-inner js-file-line">                                          (<span class="pl-k">setq</span> colgropen <span class="pl-c1">nil</span>)))</td>
      </tr>
      <tr>
        <td id="L2042" class="blob-num js-line-number" data-line-number="2042"></td>
        <td id="LC2042" class="blob-code blob-code-inner js-file-line">                                       (<span class="pl-c1">t</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2043" class="blob-num js-line-number" data-line-number="2043"></td>
        <td id="LC2043" class="blob-code blob-code-inner js-file-line">                                 (<span class="pl-k">if</span> (memq gr &#39;(<span class="pl-c1">:end</span> <span class="pl-c1">:startend</span>))</td>
      </tr>
      <tr>
        <td id="L2044" class="blob-num js-line-number" data-line-number="2044"></td>
        <td id="LC2044" class="blob-code blob-code-inner js-file-line">                                     (<span class="pl-k">progn</span> (<span class="pl-k">setq</span> colgropen <span class="pl-c1">nil</span>) <span class="pl-s"><span class="pl-pds">&quot;</span>|<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2045" class="blob-num js-line-number" data-line-number="2045"></td>
        <td id="LC2045" class="blob-code blob-code-inner js-file-line">                                   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2046" class="blob-num js-line-number" data-line-number="2046"></td>
        <td id="LC2046" class="blob-code blob-code-inner js-file-line">                       fnum <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L2047" class="blob-num js-line-number" data-line-number="2047"></td>
        <td id="LC2047" class="blob-code blob-code-inner js-file-line">            <span class="pl-c">;; fix double || in line-fmt</span></td>
      </tr>
      <tr>
        <td id="L2048" class="blob-num js-line-number" data-line-number="2048"></td>
        <td id="LC2048" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">setq</span> line-fmt (replace-regexp-in-string <span class="pl-s"><span class="pl-pds">&quot;</span>||<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>|<span class="pl-pds">&quot;</span></span> line-fmt))</td>
      </tr>
      <tr>
        <td id="L2049" class="blob-num js-line-number" data-line-number="2049"></td>
        <td id="LC2049" class="blob-code blob-code-inner js-file-line">            <span class="pl-c">;; maybe remove the first and last &quot;|&quot;</span></td>
      </tr>
      <tr>
        <td id="L2050" class="blob-num js-line-number" data-line-number="2050"></td>
        <td id="LC2050" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">when</span> (<span class="pl-k">and</span> (<span class="pl-k">not</span> org-export-latex-tables-column-borders)</td>
      </tr>
      <tr>
        <td id="L2051" class="blob-num js-line-number" data-line-number="2051"></td>
        <td id="LC2051" class="blob-code blob-code-inner js-file-line">                       (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>(|<span class="pl-cce">\\</span>)?<span class="pl-cce">\\</span>(.+<span class="pl-cce">\\</span>)|$<span class="pl-pds">&quot;</span></span> line-fmt))</td>
      </tr>
      <tr>
        <td id="L2052" class="blob-num js-line-number" data-line-number="2052"></td>
        <td id="LC2052" class="blob-code blob-code-inner js-file-line">              (<span class="pl-k">setq</span> line-fmt (match-string <span class="pl-c1">2</span> line-fmt)))</td>
      </tr>
      <tr>
        <td id="L2053" class="blob-num js-line-number" data-line-number="2053"></td>
        <td id="LC2053" class="blob-code blob-code-inner js-file-line">            <span class="pl-c">;; format alignment</span></td>
      </tr>
      <tr>
        <td id="L2054" class="blob-num js-line-number" data-line-number="2054"></td>
        <td id="LC2054" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">unless</span> align</td>
      </tr>
      <tr>
        <td id="L2055" class="blob-num js-line-number" data-line-number="2055"></td>
        <td id="LC2055" class="blob-code blob-code-inner js-file-line">              (<span class="pl-k">setq</span> align (<span class="pl-k">apply</span> <span class="pl-c1">&#39;format</span></td>
      </tr>
      <tr>
        <td id="L2056" class="blob-num js-line-number" data-line-number="2056"></td>
        <td id="LC2056" class="blob-code blob-code-inner js-file-line">                                 (<span class="pl-k">cons</span> line-fmt</td>
      </tr>
      <tr>
        <td id="L2057" class="blob-num js-line-number" data-line-number="2057"></td>
        <td id="LC2057" class="blob-code blob-code-inner js-file-line">                                       (<span class="pl-k">mapcar</span> (<span class="pl-k">lambda</span> (<span class="pl-v">x</span>) (<span class="pl-k">if</span> x <span class="pl-s"><span class="pl-pds">&quot;</span>r<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>l<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2058" class="blob-num js-line-number" data-line-number="2058"></td>
        <td id="LC2058" class="blob-code blob-code-inner js-file-line">                                               org-table-last-alignment)))))</td>
      </tr>
      <tr>
        <td id="L2059" class="blob-num js-line-number" data-line-number="2059"></td>
        <td id="LC2059" class="blob-code blob-code-inner js-file-line">            <span class="pl-c">;; prepare the table to send to orgtbl-to-latex</span></td>
      </tr>
      <tr>
        <td id="L2060" class="blob-num js-line-number" data-line-number="2060"></td>
        <td id="LC2060" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">setq</span> lines</td>
      </tr>
      <tr>
        <td id="L2061" class="blob-num js-line-number" data-line-number="2061"></td>
        <td id="LC2061" class="blob-code blob-code-inner js-file-line">                  (<span class="pl-k">mapcar</span></td>
      </tr>
      <tr>
        <td id="L2062" class="blob-num js-line-number" data-line-number="2062"></td>
        <td id="LC2062" class="blob-code blob-code-inner js-file-line">                   (lambda(elem)</td>
      </tr>
      <tr>
        <td id="L2063" class="blob-num js-line-number" data-line-number="2063"></td>
        <td id="LC2063" class="blob-code blob-code-inner js-file-line">                     (<span class="pl-k">or</span> (<span class="pl-k">and</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*|-+<span class="pl-pds">&quot;</span></span> elem) <span class="pl-c1">&#39;hline</span>)</td>
      </tr>
      <tr>
        <td id="L2064" class="blob-num js-line-number" data-line-number="2064"></td>
        <td id="LC2064" class="blob-code blob-code-inner js-file-line">                         (org-split-string</td>
      </tr>
      <tr>
        <td id="L2065" class="blob-num js-line-number" data-line-number="2065"></td>
        <td id="LC2065" class="blob-code blob-code-inner js-file-line">			  (<span class="pl-k">progn</span> (set-text-properties <span class="pl-c1">0</span> (<span class="pl-k">length</span> elem) <span class="pl-c1">nil</span> elem)</td>
      </tr>
      <tr>
        <td id="L2066" class="blob-num js-line-number" data-line-number="2066"></td>
        <td id="LC2066" class="blob-code blob-code-inner js-file-line">				 (org-trim elem)) <span class="pl-s"><span class="pl-pds">&quot;</span>|<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2067" class="blob-num js-line-number" data-line-number="2067"></td>
        <td id="LC2067" class="blob-code blob-code-inner js-file-line">                   lines))</td>
      </tr>
      <tr>
        <td id="L2068" class="blob-num js-line-number" data-line-number="2068"></td>
        <td id="LC2068" class="blob-code blob-code-inner js-file-line">            (<span class="pl-k">when</span> insert</td>
      </tr>
      <tr>
        <td id="L2069" class="blob-num js-line-number" data-line-number="2069"></td>
        <td id="LC2069" class="blob-code blob-code-inner js-file-line">              (insert (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L2070" class="blob-num js-line-number" data-line-number="2070"></td>
        <td id="LC2070" class="blob-code blob-code-inner js-file-line">                       (concat</td>
      </tr>
      <tr>
        <td id="L2071" class="blob-num js-line-number" data-line-number="2071"></td>
        <td id="LC2071" class="blob-code blob-code-inner js-file-line">                        (<span class="pl-k">if</span> longtblp</td>
      </tr>
      <tr>
        <td id="L2072" class="blob-num js-line-number" data-line-number="2072"></td>
        <td id="LC2072" class="blob-code blob-code-inner js-file-line">                            (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{longtable}{<span class="pl-pds">&quot;</span></span> align <span class="pl-s"><span class="pl-pds">&quot;</span>}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2073" class="blob-num js-line-number" data-line-number="2073"></td>
        <td id="LC2073" class="blob-code blob-code-inner js-file-line">                          (<span class="pl-k">if</span> floatp</td>
      </tr>
      <tr>
        <td id="L2074" class="blob-num js-line-number" data-line-number="2074"></td>
        <td id="LC2074" class="blob-code blob-code-inner js-file-line">			      (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>begin{<span class="pl-c1">%s</span>}<span class="pl-c1">%s</span><span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span> tblenv placement)))</td>
      </tr>
      <tr>
        <td id="L2075" class="blob-num js-line-number" data-line-number="2075"></td>
        <td id="LC2075" class="blob-code blob-code-inner js-file-line">                        (<span class="pl-k">if</span> (<span class="pl-k">and</span> floatp org-export-latex-table-caption-above)</td>
      </tr>
      <tr>
        <td id="L2076" class="blob-num js-line-number" data-line-number="2076"></td>
        <td id="LC2076" class="blob-code blob-code-inner js-file-line">                            (<span class="pl-c1">format</span></td>
      </tr>
      <tr>
        <td id="L2077" class="blob-num js-line-number" data-line-number="2077"></td>
        <td id="LC2077" class="blob-code blob-code-inner js-file-line">                             <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>caption%s{%s} %s<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2078" class="blob-num js-line-number" data-line-number="2078"></td>
        <td id="LC2078" class="blob-code blob-code-inner js-file-line">                             (<span class="pl-k">if</span> shortn (concat <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span> shortn <span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2079" class="blob-num js-line-number" data-line-number="2079"></td>
        <td id="LC2079" class="blob-code blob-code-inner js-file-line">                             (<span class="pl-k">or</span> caption <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2080" class="blob-num js-line-number" data-line-number="2080"></td>
        <td id="LC2080" class="blob-code blob-code-inner js-file-line">			     (<span class="pl-k">if</span> label (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> label) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2081" class="blob-num js-line-number" data-line-number="2081"></td>
        <td id="LC2081" class="blob-code blob-code-inner js-file-line">			(<span class="pl-k">if</span> (<span class="pl-k">and</span> longtblp caption org-export-latex-table-caption-above)</td>
      </tr>
      <tr>
        <td id="L2082" class="blob-num js-line-number" data-line-number="2082"></td>
        <td id="LC2082" class="blob-code blob-code-inner js-file-line">			    <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\\n</span><span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2083" class="blob-num js-line-number" data-line-number="2083"></td>
        <td id="LC2083" class="blob-code blob-code-inner js-file-line">                        (<span class="pl-k">if</span> (<span class="pl-k">and</span> org-export-latex-tables-centered (<span class="pl-k">not</span> longtblp))</td>
      </tr>
      <tr>
        <td id="L2084" class="blob-num js-line-number" data-line-number="2084"></td>
        <td id="LC2084" class="blob-code blob-code-inner js-file-line">                            <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{center}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2085" class="blob-num js-line-number" data-line-number="2085"></td>
        <td id="LC2085" class="blob-code blob-code-inner js-file-line">                        (<span class="pl-k">if</span> (<span class="pl-k">not</span> longtblp)</td>
      </tr>
      <tr>
        <td id="L2086" class="blob-num js-line-number" data-line-number="2086"></td>
        <td id="LC2086" class="blob-code blob-code-inner js-file-line">			    (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>begin{<span class="pl-c1">%s</span>}<span class="pl-c1">%s</span>{<span class="pl-c1">%s</span>}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L2087" class="blob-num js-line-number" data-line-number="2087"></td>
        <td id="LC2087" class="blob-code blob-code-inner js-file-line">				    tabular-env</td>
      </tr>
      <tr>
        <td id="L2088" class="blob-num js-line-number" data-line-number="2088"></td>
        <td id="LC2088" class="blob-code blob-code-inner js-file-line">				    (<span class="pl-k">if</span> width (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s">{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> width) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2089" class="blob-num js-line-number" data-line-number="2089"></td>
        <td id="LC2089" class="blob-code blob-code-inner js-file-line">				    align))</td>
      </tr>
      <tr>
        <td id="L2090" class="blob-num js-line-number" data-line-number="2090"></td>
        <td id="LC2090" class="blob-code blob-code-inner js-file-line">                        (orgtbl-to-latex</td>
      </tr>
      <tr>
        <td id="L2091" class="blob-num js-line-number" data-line-number="2091"></td>
        <td id="LC2091" class="blob-code blob-code-inner js-file-line">                         lines</td>
      </tr>
      <tr>
        <td id="L2092" class="blob-num js-line-number" data-line-number="2092"></td>
        <td id="LC2092" class="blob-code blob-code-inner js-file-line">                         `(<span class="pl-c1">:tstart</span> ,org-export-latex-tables-tstart</td>
      </tr>
      <tr>
        <td id="L2093" class="blob-num js-line-number" data-line-number="2093"></td>
        <td id="LC2093" class="blob-code blob-code-inner js-file-line">				   <span class="pl-c1">:tend</span> ,org-export-latex-tables-tend</td>
      </tr>
      <tr>
        <td id="L2094" class="blob-num js-line-number" data-line-number="2094"></td>
        <td id="LC2094" class="blob-code blob-code-inner js-file-line">				   <span class="pl-c1">:hline</span> ,org-export-latex-tables-hline</td>
      </tr>
      <tr>
        <td id="L2095" class="blob-num js-line-number" data-line-number="2095"></td>
        <td id="LC2095" class="blob-code blob-code-inner js-file-line">                                   <span class="pl-c1">:skipheadrule</span> ,longtblp</td>
      </tr>
      <tr>
        <td id="L2096" class="blob-num js-line-number" data-line-number="2096"></td>
        <td id="LC2096" class="blob-code blob-code-inner js-file-line">				   <span class="pl-c1">:hfmt</span> ,hfmt</td>
      </tr>
      <tr>
        <td id="L2097" class="blob-num js-line-number" data-line-number="2097"></td>
        <td id="LC2097" class="blob-code blob-code-inner js-file-line">                                   <span class="pl-c1">:hlend</span> ,(<span class="pl-k">if</span> longtblp</td>
      </tr>
      <tr>
        <td id="L2098" class="blob-num js-line-number" data-line-number="2098"></td>
        <td id="LC2098" class="blob-code blob-code-inner js-file-line">                                               (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\\\</span></span></td>
      </tr>
      <tr>
        <td id="L2099" class="blob-num js-line-number" data-line-number="2099"></td>
        <td id="LC2099" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-c1">%s</span></span></td>
      </tr>
      <tr>
        <td id="L2100" class="blob-num js-line-number" data-line-number="2100"></td>
        <td id="LC2100" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>endhead</span></td>
      </tr>
      <tr>
        <td id="L2101" class="blob-num js-line-number" data-line-number="2101"></td>
        <td id="LC2101" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-c1">%s</span><span class="pl-cce">\\</span>multicolumn{<span class="pl-c1">%d</span>}{r}{Continued on next page}<span class="pl-cce">\\</span></span></td>
      </tr>
      <tr>
        <td id="L2102" class="blob-num js-line-number" data-line-number="2102"></td>
        <td id="LC2102" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>endfoot</span></td>
      </tr>
      <tr>
        <td id="L2103" class="blob-num js-line-number" data-line-number="2103"></td>
        <td id="LC2103" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>endlastfoot</span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L2104" class="blob-num js-line-number" data-line-number="2104"></td>
        <td id="LC2104" class="blob-code blob-code-inner js-file-line">                                           org-export-latex-tables-hline</td>
      </tr>
      <tr>
        <td id="L2105" class="blob-num js-line-number" data-line-number="2105"></td>
        <td id="LC2105" class="blob-code blob-code-inner js-file-line">                                           org-export-latex-tables-hline</td>
      </tr>
      <tr>
        <td id="L2106" class="blob-num js-line-number" data-line-number="2106"></td>
        <td id="LC2106" class="blob-code blob-code-inner js-file-line">                                           (<span class="pl-k">length</span> org-table-last-alignment))</td>
      </tr>
      <tr>
        <td id="L2107" class="blob-num js-line-number" data-line-number="2107"></td>
        <td id="LC2107" class="blob-code blob-code-inner js-file-line">                                             <span class="pl-c1">nil</span>)))</td>
      </tr>
      <tr>
        <td id="L2108" class="blob-num js-line-number" data-line-number="2108"></td>
        <td id="LC2108" class="blob-code blob-code-inner js-file-line">                        (<span class="pl-k">if</span> (<span class="pl-k">not</span> longtblp) (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\n\\</span>end{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> tabular-env))</td>
      </tr>
      <tr>
        <td id="L2109" class="blob-num js-line-number" data-line-number="2109"></td>
        <td id="LC2109" class="blob-code blob-code-inner js-file-line">                        (<span class="pl-k">if</span> longtblp <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> (<span class="pl-k">if</span> org-export-latex-tables-centered</td>
      </tr>
      <tr>
        <td id="L2110" class="blob-num js-line-number" data-line-number="2110"></td>
        <td id="LC2110" class="blob-code blob-code-inner js-file-line">                                              <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\\</span>end{center}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2111" class="blob-num js-line-number" data-line-number="2111"></td>
        <td id="LC2111" class="blob-code blob-code-inner js-file-line">                        (<span class="pl-k">if</span> (<span class="pl-k">and</span> floatp (<span class="pl-k">not</span> org-export-latex-table-caption-above))</td>
      </tr>
      <tr>
        <td id="L2112" class="blob-num js-line-number" data-line-number="2112"></td>
        <td id="LC2112" class="blob-code blob-code-inner js-file-line">                            (<span class="pl-c1">format</span></td>
      </tr>
      <tr>
        <td id="L2113" class="blob-num js-line-number" data-line-number="2113"></td>
        <td id="LC2113" class="blob-code blob-code-inner js-file-line">                             <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>caption%s{%s} %s<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2114" class="blob-num js-line-number" data-line-number="2114"></td>
        <td id="LC2114" class="blob-code blob-code-inner js-file-line">                             (<span class="pl-k">if</span> shortn (concat <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span> shortn <span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2115" class="blob-num js-line-number" data-line-number="2115"></td>
        <td id="LC2115" class="blob-code blob-code-inner js-file-line">                             (<span class="pl-k">or</span> caption <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2116" class="blob-num js-line-number" data-line-number="2116"></td>
        <td id="LC2116" class="blob-code blob-code-inner js-file-line">			     (<span class="pl-k">if</span> label (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> label) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2117" class="blob-num js-line-number" data-line-number="2117"></td>
        <td id="LC2117" class="blob-code blob-code-inner js-file-line">                        (<span class="pl-k">if</span> longtblp</td>
      </tr>
      <tr>
        <td id="L2118" class="blob-num js-line-number" data-line-number="2118"></td>
        <td id="LC2118" class="blob-code blob-code-inner js-file-line">                            <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{longtable}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2119" class="blob-num js-line-number" data-line-number="2119"></td>
        <td id="LC2119" class="blob-code blob-code-inner js-file-line">                          (<span class="pl-k">if</span> floatp (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>end{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> tblenv)))))</td>
      </tr>
      <tr>
        <td id="L2120" class="blob-num js-line-number" data-line-number="2120"></td>
        <td id="LC2120" class="blob-code blob-code-inner js-file-line">                      <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\n</span><span class="pl-pds">&quot;</span></span>))))))))</td>
      </tr>
      <tr>
        <td id="L2121" class="blob-num js-line-number" data-line-number="2121"></td>
        <td id="LC2121" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2122" class="blob-num js-line-number" data-line-number="2122"></td>
        <td id="LC2122" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-convert-table</span>.el-table ()</td>
      </tr>
      <tr>
        <td id="L2123" class="blob-num js-line-number" data-line-number="2123"></td>
        <td id="LC2123" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Replace table.el table at point with LaTeX code.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2124" class="blob-num js-line-number" data-line-number="2124"></td>
        <td id="LC2124" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> (tbl caption shortn label line floatp attr align rmlines)</td>
      </tr>
      <tr>
        <td id="L2125" class="blob-num js-line-number" data-line-number="2125"></td>
        <td id="LC2125" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> line (buffer-substring (point-at-bol) (point-at-eol))</td>
      </tr>
      <tr>
        <td id="L2126" class="blob-num js-line-number" data-line-number="2126"></td>
        <td id="LC2126" class="blob-code blob-code-inner js-file-line">	  label (org-get-text-property-any <span class="pl-c1">0</span> <span class="pl-c1">&#39;org-label</span> line)</td>
      </tr>
      <tr>
        <td id="L2127" class="blob-num js-line-number" data-line-number="2127"></td>
        <td id="LC2127" class="blob-code blob-code-inner js-file-line">	  caption (org-get-text-property-any <span class="pl-c1">0</span> <span class="pl-c1">&#39;org-caption</span> line)</td>
      </tr>
      <tr>
        <td id="L2128" class="blob-num js-line-number" data-line-number="2128"></td>
        <td id="LC2128" class="blob-code blob-code-inner js-file-line">	  shortn (org-get-text-property-any <span class="pl-c1">0</span> <span class="pl-c1">&#39;org-caption-shortn</span> line)</td>
      </tr>
      <tr>
        <td id="L2129" class="blob-num js-line-number" data-line-number="2129"></td>
        <td id="LC2129" class="blob-code blob-code-inner js-file-line">	  attr (org-get-text-property-any <span class="pl-c1">0</span> <span class="pl-c1">&#39;org-attributes</span> line)</td>
      </tr>
      <tr>
        <td id="L2130" class="blob-num js-line-number" data-line-number="2130"></td>
        <td id="LC2130" class="blob-code blob-code-inner js-file-line">	  align (<span class="pl-k">and</span> attr (stringp attr)</td>
      </tr>
      <tr>
        <td id="L2131" class="blob-num js-line-number" data-line-number="2131"></td>
        <td id="LC2131" class="blob-code blob-code-inner js-file-line">		     (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;align=<span class="pl-cce">\\</span>([^ <span class="pl-cce">\t\n\r</span>,]+<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L2132" class="blob-num js-line-number" data-line-number="2132"></td>
        <td id="LC2132" class="blob-code blob-code-inner js-file-line">		     (match-string <span class="pl-c1">1</span> attr))</td>
      </tr>
      <tr>
        <td id="L2133" class="blob-num js-line-number" data-line-number="2133"></td>
        <td id="LC2133" class="blob-code blob-code-inner js-file-line">	  rmlines (<span class="pl-k">and</span> attr (stringp attr)</td>
      </tr>
      <tr>
        <td id="L2134" class="blob-num js-line-number" data-line-number="2134"></td>
        <td id="LC2134" class="blob-code blob-code-inner js-file-line">		       (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;rmlines<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> attr))</td>
      </tr>
      <tr>
        <td id="L2135" class="blob-num js-line-number" data-line-number="2135"></td>
        <td id="LC2135" class="blob-code blob-code-inner js-file-line">	  floatp (<span class="pl-k">or</span> label caption))</td>
      </tr>
      <tr>
        <td id="L2136" class="blob-num js-line-number" data-line-number="2136"></td>
        <td id="LC2136" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">and</span> (get-buffer <span class="pl-s"><span class="pl-pds">&quot;</span>*org-export-table*<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2137" class="blob-num js-line-number" data-line-number="2137"></td>
        <td id="LC2137" class="blob-code blob-code-inner js-file-line">	 (kill-buffer (get-buffer <span class="pl-s"><span class="pl-pds">&quot;</span>*org-export-table*<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2138" class="blob-num js-line-number" data-line-number="2138"></td>
        <td id="LC2138" class="blob-code blob-code-inner js-file-line">    (table-generate-source <span class="pl-c1">&#39;latex</span> <span class="pl-s"><span class="pl-pds">&quot;</span>*org-export-table*<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>caption<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2139" class="blob-num js-line-number" data-line-number="2139"></td>
        <td id="LC2139" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> tbl (with-current-buffer <span class="pl-s"><span class="pl-pds">&quot;</span>*org-export-table*<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2140" class="blob-num js-line-number" data-line-number="2140"></td>
        <td id="LC2140" class="blob-code blob-code-inner js-file-line">		(buffer-string)))</td>
      </tr>
      <tr>
        <td id="L2141" class="blob-num js-line-number" data-line-number="2141"></td>
        <td id="LC2141" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^%.*<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> tbl)</td>
      </tr>
      <tr>
        <td id="L2142" class="blob-num js-line-number" data-line-number="2142"></td>
        <td id="LC2142" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> tbl (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span> tbl)))</td>
      </tr>
      <tr>
        <td id="L2143" class="blob-num js-line-number" data-line-number="2143"></td>
        <td id="LC2143" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; fix the hlines</span></td>
      </tr>
      <tr>
        <td id="L2144" class="blob-num js-line-number" data-line-number="2144"></td>
        <td id="LC2144" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> rmlines</td>
      </tr>
      <tr>
        <td id="L2145" class="blob-num js-line-number" data-line-number="2145"></td>
        <td id="LC2145" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">let</span> ((n <span class="pl-c1">0</span>) lines)</td>
      </tr>
      <tr>
        <td id="L2146" class="blob-num js-line-number" data-line-number="2146"></td>
        <td id="LC2146" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> lines (<span class="pl-k">mapcar</span> (<span class="pl-k">lambda</span> (<span class="pl-v">x</span>)</td>
      </tr>
      <tr>
        <td id="L2147" class="blob-num js-line-number" data-line-number="2147"></td>
        <td id="LC2147" class="blob-code blob-code-inner js-file-line">			      (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\\\</span>hline$<span class="pl-pds">&quot;</span></span> x)</td>
      </tr>
      <tr>
        <td id="L2148" class="blob-num js-line-number" data-line-number="2148"></td>
        <td id="LC2148" class="blob-code blob-code-inner js-file-line">				  (<span class="pl-k">progn</span></td>
      </tr>
      <tr>
        <td id="L2149" class="blob-num js-line-number" data-line-number="2149"></td>
        <td id="LC2149" class="blob-code blob-code-inner js-file-line">				    (<span class="pl-k">setq</span> n (1+ n))</td>
      </tr>
      <tr>
        <td id="L2150" class="blob-num js-line-number" data-line-number="2150"></td>
        <td id="LC2150" class="blob-code blob-code-inner js-file-line">				    (<span class="pl-k">if</span> (<span class="pl-k">=</span> n <span class="pl-c1">2</span>) x <span class="pl-c1">nil</span>))</td>
      </tr>
      <tr>
        <td id="L2151" class="blob-num js-line-number" data-line-number="2151"></td>
        <td id="LC2151" class="blob-code blob-code-inner js-file-line">				x))</td>
      </tr>
      <tr>
        <td id="L2152" class="blob-num js-line-number" data-line-number="2152"></td>
        <td id="LC2152" class="blob-code blob-code-inner js-file-line">			    (org-split-string tbl <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2153" class="blob-num js-line-number" data-line-number="2153"></td>
        <td id="LC2153" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> tbl (mapconcat <span class="pl-c1">&#39;identity</span> (delq <span class="pl-c1">nil</span> lines) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L2154" class="blob-num js-line-number" data-line-number="2154"></td>
        <td id="LC2154" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (<span class="pl-k">and</span> align (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\</span>begin{tabular}{.*}<span class="pl-pds">&quot;</span></span> tbl))</td>
      </tr>
      <tr>
        <td id="L2155" class="blob-num js-line-number" data-line-number="2155"></td>
        <td id="LC2155" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> tbl (replace-match (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{tabular}{<span class="pl-pds">&quot;</span></span> align <span class="pl-s"><span class="pl-pds">&quot;</span>}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2156" class="blob-num js-line-number" data-line-number="2156"></td>
        <td id="LC2156" class="blob-code blob-code-inner js-file-line">			       <span class="pl-c1">t</span> <span class="pl-c1">t</span> tbl)))</td>
      </tr>
      <tr>
        <td id="L2157" class="blob-num js-line-number" data-line-number="2157"></td>
        <td id="LC2157" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">and</span> (get-buffer <span class="pl-s"><span class="pl-pds">&quot;</span>*org-export-table*<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2158" class="blob-num js-line-number" data-line-number="2158"></td>
        <td id="LC2158" class="blob-code blob-code-inner js-file-line">	 (kill-buffer (get-buffer <span class="pl-s"><span class="pl-pds">&quot;</span>*org-export-table*<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2159" class="blob-num js-line-number" data-line-number="2159"></td>
        <td id="LC2159" class="blob-code blob-code-inner js-file-line">    (beginning-of-line <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L2160" class="blob-num js-line-number" data-line-number="2160"></td>
        <td id="LC2160" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>(|<span class="pl-cce">\\</span>|<span class="pl-cce">\\</span>+-<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2161" class="blob-num js-line-number" data-line-number="2161"></td>
        <td id="LC2161" class="blob-code blob-code-inner js-file-line">      (delete-region (point) (1+ (point-at-eol))))</td>
      </tr>
      <tr>
        <td id="L2162" class="blob-num js-line-number" data-line-number="2162"></td>
        <td id="LC2162" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> org-export-latex-tables-centered</td>
      </tr>
      <tr>
        <td id="L2163" class="blob-num js-line-number" data-line-number="2163"></td>
        <td id="LC2163" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> tbl (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{center}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> tbl <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{center}<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2164" class="blob-num js-line-number" data-line-number="2164"></td>
        <td id="LC2164" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> floatp</td>
      </tr>
      <tr>
        <td id="L2165" class="blob-num js-line-number" data-line-number="2165"></td>
        <td id="LC2165" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> tbl (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{table}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2166" class="blob-num js-line-number" data-line-number="2166"></td>
        <td id="LC2166" class="blob-code blob-code-inner js-file-line">			(<span class="pl-k">if</span> (<span class="pl-k">not</span> org-export-latex-table-caption-above) tbl)</td>
      </tr>
      <tr>
        <td id="L2167" class="blob-num js-line-number" data-line-number="2167"></td>
        <td id="LC2167" class="blob-code blob-code-inner js-file-line">			(<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>caption<span class="pl-c1">%s</span>{<span class="pl-c1">%s%s</span>}<span class="pl-cce">\n</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L2168" class="blob-num js-line-number" data-line-number="2168"></td>
        <td id="LC2168" class="blob-code blob-code-inner js-file-line">				(<span class="pl-k">if</span> shortn (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s">[<span class="pl-c1">%s</span>]</span><span class="pl-pds">&quot;</span> shortn) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2169" class="blob-num js-line-number" data-line-number="2169"></td>
        <td id="LC2169" class="blob-code blob-code-inner js-file-line">				(<span class="pl-k">if</span> label (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> label) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2170" class="blob-num js-line-number" data-line-number="2170"></td>
        <td id="LC2170" class="blob-code blob-code-inner js-file-line">				(<span class="pl-k">or</span> caption <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2171" class="blob-num js-line-number" data-line-number="2171"></td>
        <td id="LC2171" class="blob-code blob-code-inner js-file-line">			(<span class="pl-k">if</span> org-export-latex-table-caption-above tbl)</td>
      </tr>
      <tr>
        <td id="L2172" class="blob-num js-line-number" data-line-number="2172"></td>
        <td id="LC2172" class="blob-code blob-code-inner js-file-line">			<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\\</span>end{table}<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2173" class="blob-num js-line-number" data-line-number="2173"></td>
        <td id="LC2173" class="blob-code blob-code-inner js-file-line">    (insert (org-export-latex-protect-string tbl))))</td>
      </tr>
      <tr>
        <td id="L2174" class="blob-num js-line-number" data-line-number="2174"></td>
        <td id="LC2174" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2175" class="blob-num js-line-number" data-line-number="2175"></td>
        <td id="LC2175" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-fontify</span> ()</td>
      </tr>
      <tr>
        <td id="L2176" class="blob-num js-line-number" data-line-number="2176"></td>
        <td id="LC2176" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert fontification to LaTeX.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2177" class="blob-num js-line-number" data-line-number="2177"></td>
        <td id="LC2177" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2178" class="blob-num js-line-number" data-line-number="2178"></td>
        <td id="LC2178" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward org-emph-re <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2179" class="blob-num js-line-number" data-line-number="2179"></td>
        <td id="LC2179" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; The match goes one char after the *string*, except at the end of a line</span></td>
      </tr>
      <tr>
        <td id="L2180" class="blob-num js-line-number" data-line-number="2180"></td>
        <td id="LC2180" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">let</span> ((emph (<span class="pl-k">assoc</span> (match-string <span class="pl-c1">3</span>)</td>
      </tr>
      <tr>
        <td id="L2181" class="blob-num js-line-number" data-line-number="2181"></td>
        <td id="LC2181" class="blob-code blob-code-inner js-file-line">		       org-export-latex-emphasis-alist))</td>
      </tr>
      <tr>
        <td id="L2182" class="blob-num js-line-number" data-line-number="2182"></td>
        <td id="LC2182" class="blob-code blob-code-inner js-file-line">	  (beg (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L2183" class="blob-num js-line-number" data-line-number="2183"></td>
        <td id="LC2183" class="blob-code blob-code-inner js-file-line">	  (end (match-end <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L2184" class="blob-num js-line-number" data-line-number="2184"></td>
        <td id="LC2184" class="blob-code blob-code-inner js-file-line">	  rpl s)</td>
      </tr>
      <tr>
        <td id="L2185" class="blob-num js-line-number" data-line-number="2185"></td>
        <td id="LC2185" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">unless</span> emph</td>
      </tr>
      <tr>
        <td id="L2186" class="blob-num js-line-number" data-line-number="2186"></td>
        <td id="LC2186" class="blob-code blob-code-inner js-file-line">	(<span class="pl-c1">message</span> <span class="pl-pds">&quot;</span><span class="pl-s">`org-export-latex-emphasis-alist&#39; has no entry for formatting triggered by <span class="pl-cce">\&quot;</span><span class="pl-c1">%s</span><span class="pl-cce">\&quot;</span></span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L2187" class="blob-num js-line-number" data-line-number="2187"></td>
        <td id="LC2187" class="blob-code blob-code-inner js-file-line">		 (match-string <span class="pl-c1">3</span>)))</td>
      </tr>
      <tr>
        <td id="L2188" class="blob-num js-line-number" data-line-number="2188"></td>
        <td id="LC2188" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">unless</span> (<span class="pl-k">or</span> (<span class="pl-k">and</span> (get-text-property (<span class="pl-k">-</span> (point) <span class="pl-c1">2</span>) <span class="pl-c1">&#39;org-protected</span>)</td>
      </tr>
      <tr>
        <td id="L2189" class="blob-num js-line-number" data-line-number="2189"></td>
        <td id="LC2189" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-k">not</span> (get-text-property</td>
      </tr>
      <tr>
        <td id="L2190" class="blob-num js-line-number" data-line-number="2190"></td>
        <td id="LC2190" class="blob-code blob-code-inner js-file-line">			     (<span class="pl-k">-</span> (point) <span class="pl-c1">2</span>) <span class="pl-c1">&#39;org-verbatim-emph</span>)))</td>
      </tr>
      <tr>
        <td id="L2191" class="blob-num js-line-number" data-line-number="2191"></td>
        <td id="LC2191" class="blob-code blob-code-inner js-file-line">		  (<span class="pl-k">equal</span> (char-after (match-beginning <span class="pl-c1">3</span>))</td>
      </tr>
      <tr>
        <td id="L2192" class="blob-num js-line-number" data-line-number="2192"></td>
        <td id="LC2192" class="blob-code blob-code-inner js-file-line">			 (char-after (1+ (match-beginning <span class="pl-c1">3</span>))))</td>
      </tr>
      <tr>
        <td id="L2193" class="blob-num js-line-number" data-line-number="2193"></td>
        <td id="LC2193" class="blob-code blob-code-inner js-file-line">		  (save-excursion</td>
      </tr>
      <tr>
        <td id="L2194" class="blob-num js-line-number" data-line-number="2194"></td>
        <td id="LC2194" class="blob-code blob-code-inner js-file-line">		    (goto-char (match-beginning <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L2195" class="blob-num js-line-number" data-line-number="2195"></td>
        <td id="LC2195" class="blob-code blob-code-inner js-file-line">		    (save-match-data</td>
      </tr>
      <tr>
        <td id="L2196" class="blob-num js-line-number" data-line-number="2196"></td>
        <td id="LC2196" class="blob-code blob-code-inner js-file-line">		      (<span class="pl-k">and</span> (org-at-table-p)</td>
      </tr>
      <tr>
        <td id="L2197" class="blob-num js-line-number" data-line-number="2197"></td>
        <td id="LC2197" class="blob-code blob-code-inner js-file-line">			   (string-match</td>
      </tr>
      <tr>
        <td id="L2198" class="blob-num js-line-number" data-line-number="2198"></td>
        <td id="LC2198" class="blob-code blob-code-inner js-file-line">			    <span class="pl-s"><span class="pl-pds">&quot;</span>[|<span class="pl-cce">\n</span>]<span class="pl-pds">&quot;</span></span> (buffer-substring beg end)))))</td>
      </tr>
      <tr>
        <td id="L2199" class="blob-num js-line-number" data-line-number="2199"></td>
        <td id="LC2199" class="blob-code blob-code-inner js-file-line">		  (<span class="pl-k">and</span> (<span class="pl-k">equal</span> (match-string <span class="pl-c1">3</span>) <span class="pl-s"><span class="pl-pds">&quot;</span>+<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2200" class="blob-num js-line-number" data-line-number="2200"></td>
        <td id="LC2200" class="blob-code blob-code-inner js-file-line">		       (save-match-data</td>
      </tr>
      <tr>
        <td id="L2201" class="blob-num js-line-number" data-line-number="2201"></td>
        <td id="LC2201" class="blob-code blob-code-inner js-file-line">			 (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>`-+<span class="pl-cce">\\</span>&#39;<span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">4</span>)))))</td>
      </tr>
      <tr>
        <td id="L2202" class="blob-num js-line-number" data-line-number="2202"></td>
        <td id="LC2202" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> s (match-string <span class="pl-c1">4</span>))</td>
      </tr>
      <tr>
        <td id="L2203" class="blob-num js-line-number" data-line-number="2203"></td>
        <td id="LC2203" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> rpl (concat (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L2204" class="blob-num js-line-number" data-line-number="2204"></td>
        <td id="LC2204" class="blob-code blob-code-inner js-file-line">			  (org-export-latex-emph-format (<span class="pl-k">cadr</span> emph)</td>
      </tr>
      <tr>
        <td id="L2205" class="blob-num js-line-number" data-line-number="2205"></td>
        <td id="LC2205" class="blob-code blob-code-inner js-file-line">							(match-string <span class="pl-c1">4</span>))</td>
      </tr>
      <tr>
        <td id="L2206" class="blob-num js-line-number" data-line-number="2206"></td>
        <td id="LC2206" class="blob-code blob-code-inner js-file-line">			  (match-string <span class="pl-c1">5</span>)))</td>
      </tr>
      <tr>
        <td id="L2207" class="blob-num js-line-number" data-line-number="2207"></td>
        <td id="LC2207" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">if</span> (caddr emph)</td>
      </tr>
      <tr>
        <td id="L2208" class="blob-num js-line-number" data-line-number="2208"></td>
        <td id="LC2208" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> rpl (org-export-latex-protect-string rpl))</td>
      </tr>
      <tr>
        <td id="L2209" class="blob-num js-line-number" data-line-number="2209"></td>
        <td id="LC2209" class="blob-code blob-code-inner js-file-line">	  (save-match-data</td>
      </tr>
      <tr>
        <td id="L2210" class="blob-num js-line-number" data-line-number="2210"></td>
        <td id="LC2210" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>`.?<span class="pl-cce">\\</span>(<span class="pl-cce">\\\\</span>[a-z]+{<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>(.*<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>(}<span class="pl-cce">\\</span>).?<span class="pl-cce">\\</span>&#39;<span class="pl-pds">&quot;</span></span> rpl)</td>
      </tr>
      <tr>
        <td id="L2211" class="blob-num js-line-number" data-line-number="2211"></td>
        <td id="LC2211" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">progn</span></td>
      </tr>
      <tr>
        <td id="L2212" class="blob-num js-line-number" data-line-number="2212"></td>
        <td id="LC2212" class="blob-code blob-code-inner js-file-line">		  (add-text-properties (match-beginning <span class="pl-c1">1</span>) (match-end <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L2213" class="blob-num js-line-number" data-line-number="2213"></td>
        <td id="LC2213" class="blob-code blob-code-inner js-file-line">				       &#39;(org-protected <span class="pl-c1">t</span>) rpl)</td>
      </tr>
      <tr>
        <td id="L2214" class="blob-num js-line-number" data-line-number="2214"></td>
        <td id="LC2214" class="blob-code blob-code-inner js-file-line">		  (add-text-properties (match-beginning <span class="pl-c1">3</span>) (match-end <span class="pl-c1">3</span>)</td>
      </tr>
      <tr>
        <td id="L2215" class="blob-num js-line-number" data-line-number="2215"></td>
        <td id="LC2215" class="blob-code blob-code-inner js-file-line">				       &#39;(org-protected <span class="pl-c1">t</span>) rpl)))))</td>
      </tr>
      <tr>
        <td id="L2216" class="blob-num js-line-number" data-line-number="2216"></td>
        <td id="LC2216" class="blob-code blob-code-inner js-file-line">	(replace-match rpl <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L2217" class="blob-num js-line-number" data-line-number="2217"></td>
        <td id="LC2217" class="blob-code blob-code-inner js-file-line">    (backward-char)))</td>
      </tr>
      <tr>
        <td id="L2218" class="blob-num js-line-number" data-line-number="2218"></td>
        <td id="LC2218" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2219" class="blob-num js-line-number" data-line-number="2219"></td>
        <td id="LC2219" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-emph-format</span> (<span class="pl-v">format</span> <span class="pl-v">string</span>)</td>
      </tr>
      <tr>
        <td id="L2220" class="blob-num js-line-number" data-line-number="2220"></td>
        <td id="LC2220" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Format an emphasis string and handle the <span class="pl-cce">\\</span>verb special case.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2221" class="blob-num js-line-number" data-line-number="2221"></td>
        <td id="LC2221" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">when</span> (<span class="pl-k">member</span> format &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>verb<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>protectedtexttt<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2222" class="blob-num js-line-number" data-line-number="2222"></td>
        <td id="LC2222" class="blob-code blob-code-inner js-file-line">    (save-match-data</td>
      </tr>
      <tr>
        <td id="L2223" class="blob-num js-line-number" data-line-number="2223"></td>
        <td id="LC2223" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (<span class="pl-k">equal</span> format <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>verb<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2224" class="blob-num js-line-number" data-line-number="2224"></td>
        <td id="LC2224" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">let</span> ((ll <span class="pl-s"><span class="pl-pds">&quot;</span>~,./?;&#39;:<span class="pl-cce">\&quot;</span>|!@#%^&amp;-_=+abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ&lt;&gt;()[]{}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2225" class="blob-num js-line-number" data-line-number="2225"></td>
        <td id="LC2225" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">catch</span> <span class="pl-c1">&#39;exit</span></td>
      </tr>
      <tr>
        <td id="L2226" class="blob-num js-line-number" data-line-number="2226"></td>
        <td id="LC2226" class="blob-code blob-code-inner js-file-line">	      (loop for i from <span class="pl-c1">0</span> to (1- (<span class="pl-k">length</span> ll)) do</td>
      </tr>
      <tr>
        <td id="L2227" class="blob-num js-line-number" data-line-number="2227"></td>
        <td id="LC2227" class="blob-code blob-code-inner js-file-line">		    (<span class="pl-k">if</span> (<span class="pl-k">not</span> (string-match (regexp-quote (substring ll i (1+ i)))</td>
      </tr>
      <tr>
        <td id="L2228" class="blob-num js-line-number" data-line-number="2228"></td>
        <td id="LC2228" class="blob-code blob-code-inner js-file-line">					   string))</td>
      </tr>
      <tr>
        <td id="L2229" class="blob-num js-line-number" data-line-number="2229"></td>
        <td id="LC2229" class="blob-code blob-code-inner js-file-line">			(<span class="pl-k">progn</span></td>
      </tr>
      <tr>
        <td id="L2230" class="blob-num js-line-number" data-line-number="2230"></td>
        <td id="LC2230" class="blob-code blob-code-inner js-file-line">			  (<span class="pl-k">setq</span> format (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>verb<span class="pl-pds">&quot;</span></span> (substring ll i (1+ i))</td>
      </tr>
      <tr>
        <td id="L2231" class="blob-num js-line-number" data-line-number="2231"></td>
        <td id="LC2231" class="blob-code blob-code-inner js-file-line">					       <span class="pl-s"><span class="pl-pds">&quot;</span>%s<span class="pl-pds">&quot;</span></span> (substring ll i (1+ i))))</td>
      </tr>
      <tr>
        <td id="L2232" class="blob-num js-line-number" data-line-number="2232"></td>
        <td id="LC2232" class="blob-code blob-code-inner js-file-line">			  (<span class="pl-k">throw</span> <span class="pl-c1">&#39;exit</span> <span class="pl-c1">nil</span>))))))</td>
      </tr>
      <tr>
        <td id="L2233" class="blob-num js-line-number" data-line-number="2233"></td>
        <td id="LC2233" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">let</span> ((start <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L2234" class="blob-num js-line-number" data-line-number="2234"></td>
        <td id="LC2234" class="blob-code blob-code-inner js-file-line">	      (trans &#39;((<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textbackslash{}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2235" class="blob-num js-line-number" data-line-number="2235"></td>
        <td id="LC2235" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-s"><span class="pl-pds">&quot;</span>~<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textasciitilde{}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2236" class="blob-num js-line-number" data-line-number="2236"></td>
        <td id="LC2236" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-pds">&quot;</span></span> <span class="pl-k">.</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>textasciicircum{}<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2237" class="blob-num js-line-number" data-line-number="2237"></td>
        <td id="LC2237" class="blob-code blob-code-inner js-file-line">	      (rtn <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>) char)</td>
      </tr>
      <tr>
        <td id="L2238" class="blob-num js-line-number" data-line-number="2238"></td>
        <td id="LC2238" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">while</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-cce">\\</span>{}$%&amp;_#~^]<span class="pl-pds">&quot;</span></span> string)</td>
      </tr>
      <tr>
        <td id="L2239" class="blob-num js-line-number" data-line-number="2239"></td>
        <td id="LC2239" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> char (match-string <span class="pl-c1">0</span> string))</td>
      </tr>
      <tr>
        <td id="L2240" class="blob-num js-line-number" data-line-number="2240"></td>
        <td id="LC2240" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">if</span> (<span class="pl-k">&gt;</span> (match-beginning <span class="pl-c1">0</span>) <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L2241" class="blob-num js-line-number" data-line-number="2241"></td>
        <td id="LC2241" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">setq</span> rtn (concat rtn (substring string</td>
      </tr>
      <tr>
        <td id="L2242" class="blob-num js-line-number" data-line-number="2242"></td>
        <td id="LC2242" class="blob-code blob-code-inner js-file-line">						 <span class="pl-c1">0</span> (match-beginning <span class="pl-c1">0</span>)))))</td>
      </tr>
      <tr>
        <td id="L2243" class="blob-num js-line-number" data-line-number="2243"></td>
        <td id="LC2243" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> string (substring string (1+ (match-beginning <span class="pl-c1">0</span>))))</td>
      </tr>
      <tr>
        <td id="L2244" class="blob-num js-line-number" data-line-number="2244"></td>
        <td id="LC2244" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> char (<span class="pl-k">or</span> (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> char trans)) (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> char))</td>
      </tr>
      <tr>
        <td id="L2245" class="blob-num js-line-number" data-line-number="2245"></td>
        <td id="LC2245" class="blob-code blob-code-inner js-file-line">		  rtn (concat rtn char)))</td>
      </tr>
      <tr>
        <td id="L2246" class="blob-num js-line-number" data-line-number="2246"></td>
        <td id="LC2246" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> string (concat rtn string) format <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>texttt{%s}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2247" class="blob-num js-line-number" data-line-number="2247"></td>
        <td id="LC2247" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">while</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>--<span class="pl-pds">&quot;</span></span> string)</td>
      </tr>
      <tr>
        <td id="L2248" class="blob-num js-line-number" data-line-number="2248"></td>
        <td id="LC2248" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">setq</span> string (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span>-{}-<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span> string)))))))</td>
      </tr>
      <tr>
        <td id="L2249" class="blob-num js-line-number" data-line-number="2249"></td>
        <td id="LC2249" class="blob-code blob-code-inner js-file-line">  (<span class="pl-c1">format</span> format string))</td>
      </tr>
      <tr>
        <td id="L2250" class="blob-num js-line-number" data-line-number="2250"></td>
        <td id="LC2250" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2251" class="blob-num js-line-number" data-line-number="2251"></td>
        <td id="LC2251" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-links</span> ()</td>
      </tr>
      <tr>
        <td id="L2252" class="blob-num js-line-number" data-line-number="2252"></td>
        <td id="LC2252" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Make sure to use the LaTeX hyperref and graphicx package</span></td>
      </tr>
      <tr>
        <td id="L2253" class="blob-num js-line-number" data-line-number="2253"></td>
        <td id="LC2253" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; or send some warnings.</span></td>
      </tr>
      <tr>
        <td id="L2254" class="blob-num js-line-number" data-line-number="2254"></td>
        <td id="LC2254" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert links to LaTeX.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2255" class="blob-num js-line-number" data-line-number="2255"></td>
        <td id="LC2255" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2256" class="blob-num js-line-number" data-line-number="2256"></td>
        <td id="LC2256" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward org-bracket-link-analytic-regexp++ <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2257" class="blob-num js-line-number" data-line-number="2257"></td>
        <td id="LC2257" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected-1</td>
      </tr>
      <tr>
        <td id="L2258" class="blob-num js-line-number" data-line-number="2258"></td>
        <td id="LC2258" class="blob-code blob-code-inner js-file-line">     (goto-char (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L2259" class="blob-num js-line-number" data-line-number="2259"></td>
        <td id="LC2259" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">let*</span> ((re-radio org-export-latex-all-targets-re)</td>
      </tr>
      <tr>
        <td id="L2260" class="blob-num js-line-number" data-line-number="2260"></td>
        <td id="LC2260" class="blob-code blob-code-inner js-file-line">	    (remove (<span class="pl-k">list</span> (match-beginning <span class="pl-c1">0</span>) (match-end <span class="pl-c1">0</span>)))</td>
      </tr>
      <tr>
        <td id="L2261" class="blob-num js-line-number" data-line-number="2261"></td>
        <td id="LC2261" class="blob-code blob-code-inner js-file-line">	    (raw-path (org-extract-attributes (match-string <span class="pl-c1">3</span>)))</td>
      </tr>
      <tr>
        <td id="L2262" class="blob-num js-line-number" data-line-number="2262"></td>
        <td id="LC2262" class="blob-code blob-code-inner js-file-line">	    (full-raw-path (concat (match-string <span class="pl-c1">1</span>) raw-path))</td>
      </tr>
      <tr>
        <td id="L2263" class="blob-num js-line-number" data-line-number="2263"></td>
        <td id="LC2263" class="blob-code blob-code-inner js-file-line">	    (desc (match-string <span class="pl-c1">5</span>))</td>
      </tr>
      <tr>
        <td id="L2264" class="blob-num js-line-number" data-line-number="2264"></td>
        <td id="LC2264" class="blob-code blob-code-inner js-file-line">	    (type (<span class="pl-k">or</span> (match-string <span class="pl-c1">2</span>)</td>
      </tr>
      <tr>
        <td id="L2265" class="blob-num js-line-number" data-line-number="2265"></td>
        <td id="LC2265" class="blob-code blob-code-inner js-file-line">		      (<span class="pl-k">if</span> (<span class="pl-k">or</span> (file-name-absolute-p raw-path)</td>
      </tr>
      <tr>
        <td id="L2266" class="blob-num js-line-number" data-line-number="2266"></td>
        <td id="LC2266" class="blob-code blob-code-inner js-file-line">			      (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\</span>.<span class="pl-cce">\\</span>.?/<span class="pl-pds">&quot;</span></span> raw-path))</td>
      </tr>
      <tr>
        <td id="L2267" class="blob-num js-line-number" data-line-number="2267"></td>
        <td id="LC2267" class="blob-code blob-code-inner js-file-line">			  <span class="pl-s"><span class="pl-pds">&quot;</span>file<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2268" class="blob-num js-line-number" data-line-number="2268"></td>
        <td id="LC2268" class="blob-code blob-code-inner js-file-line">	    (coderefp (<span class="pl-k">equal</span> type <span class="pl-s"><span class="pl-pds">&quot;</span>coderef<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2269" class="blob-num js-line-number" data-line-number="2269"></td>
        <td id="LC2269" class="blob-code blob-code-inner js-file-line">	    (caption (org-find-text-property-in-string <span class="pl-c1">&#39;org-caption</span> raw-path))</td>
      </tr>
      <tr>
        <td id="L2270" class="blob-num js-line-number" data-line-number="2270"></td>
        <td id="LC2270" class="blob-code blob-code-inner js-file-line">	    (shortn (org-find-text-property-in-string <span class="pl-c1">&#39;org-caption-shortn</span> raw-path))</td>
      </tr>
      <tr>
        <td id="L2271" class="blob-num js-line-number" data-line-number="2271"></td>
        <td id="LC2271" class="blob-code blob-code-inner js-file-line">	    (attr (<span class="pl-k">or</span> (org-find-text-property-in-string <span class="pl-c1">&#39;org-attributes</span> raw-path)</td>
      </tr>
      <tr>
        <td id="L2272" class="blob-num js-line-number" data-line-number="2272"></td>
        <td id="LC2272" class="blob-code blob-code-inner js-file-line">		      (plist-get org-export-latex-options-plist <span class="pl-c1">:latex-image-options</span>)))</td>
      </tr>
      <tr>
        <td id="L2273" class="blob-num js-line-number" data-line-number="2273"></td>
        <td id="LC2273" class="blob-code blob-code-inner js-file-line">	    (label (org-find-text-property-in-string <span class="pl-c1">&#39;org-label</span> raw-path))</td>
      </tr>
      <tr>
        <td id="L2274" class="blob-num js-line-number" data-line-number="2274"></td>
        <td id="LC2274" class="blob-code blob-code-inner js-file-line">	    imgp radiop fnc</td>
      </tr>
      <tr>
        <td id="L2275" class="blob-num js-line-number" data-line-number="2275"></td>
        <td id="LC2275" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; define the path of the link</span></td>
      </tr>
      <tr>
        <td id="L2276" class="blob-num js-line-number" data-line-number="2276"></td>
        <td id="LC2276" class="blob-code blob-code-inner js-file-line">	    (path (<span class="pl-k">cond</span></td>
      </tr>
      <tr>
        <td id="L2277" class="blob-num js-line-number" data-line-number="2277"></td>
        <td id="LC2277" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">member</span> type &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>coderef<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2278" class="blob-num js-line-number" data-line-number="2278"></td>
        <td id="LC2278" class="blob-code blob-code-inner js-file-line">		    raw-path)</td>
      </tr>
      <tr>
        <td id="L2279" class="blob-num js-line-number" data-line-number="2279"></td>
        <td id="LC2279" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">member</span> type &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>http<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>https<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>ftp<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2280" class="blob-num js-line-number" data-line-number="2280"></td>
        <td id="LC2280" class="blob-code blob-code-inner js-file-line">		    (concat type <span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span> raw-path))</td>
      </tr>
      <tr>
        <td id="L2281" class="blob-num js-line-number" data-line-number="2281"></td>
        <td id="LC2281" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">and</span> re-radio (string-match re-radio raw-path))</td>
      </tr>
      <tr>
        <td id="L2282" class="blob-num js-line-number" data-line-number="2282"></td>
        <td id="LC2282" class="blob-code blob-code-inner js-file-line">		    (<span class="pl-k">setq</span> radiop <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L2283" class="blob-num js-line-number" data-line-number="2283"></td>
        <td id="LC2283" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">equal</span> type <span class="pl-s"><span class="pl-pds">&quot;</span>mailto<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2284" class="blob-num js-line-number" data-line-number="2284"></td>
        <td id="LC2284" class="blob-code blob-code-inner js-file-line">		    (concat type <span class="pl-s"><span class="pl-pds">&quot;</span>:<span class="pl-pds">&quot;</span></span> raw-path))</td>
      </tr>
      <tr>
        <td id="L2285" class="blob-num js-line-number" data-line-number="2285"></td>
        <td id="LC2285" class="blob-code blob-code-inner js-file-line">		   ((<span class="pl-k">equal</span> type <span class="pl-s"><span class="pl-pds">&quot;</span>file<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2286" class="blob-num js-line-number" data-line-number="2286"></td>
        <td id="LC2286" class="blob-code blob-code-inner js-file-line">		    (<span class="pl-k">if</span> (<span class="pl-k">and</span> (org-file-image-p</td>
      </tr>
      <tr>
        <td id="L2287" class="blob-num js-line-number" data-line-number="2287"></td>
        <td id="LC2287" class="blob-code blob-code-inner js-file-line">			      (expand-file-name</td>
      </tr>
      <tr>
        <td id="L2288" class="blob-num js-line-number" data-line-number="2288"></td>
        <td id="LC2288" class="blob-code blob-code-inner js-file-line">			       raw-path)</td>
      </tr>
      <tr>
        <td id="L2289" class="blob-num js-line-number" data-line-number="2289"></td>
        <td id="LC2289" class="blob-code blob-code-inner js-file-line">			      org-export-latex-inline-image-extensions)</td>
      </tr>
      <tr>
        <td id="L2290" class="blob-num js-line-number" data-line-number="2290"></td>
        <td id="LC2290" class="blob-code blob-code-inner js-file-line">			     (<span class="pl-k">or</span> (get-text-property <span class="pl-c1">0</span> <span class="pl-c1">&#39;org-no-description</span></td>
      </tr>
      <tr>
        <td id="L2291" class="blob-num js-line-number" data-line-number="2291"></td>
        <td id="LC2291" class="blob-code blob-code-inner js-file-line">						    raw-path)</td>
      </tr>
      <tr>
        <td id="L2292" class="blob-num js-line-number" data-line-number="2292"></td>
        <td id="LC2292" class="blob-code blob-code-inner js-file-line">				 (<span class="pl-k">equal</span> desc full-raw-path)))</td>
      </tr>
      <tr>
        <td id="L2293" class="blob-num js-line-number" data-line-number="2293"></td>
        <td id="LC2293" class="blob-code blob-code-inner js-file-line">			(<span class="pl-k">setq</span> imgp <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2294" class="blob-num js-line-number" data-line-number="2294"></td>
        <td id="LC2294" class="blob-code blob-code-inner js-file-line">		      (<span class="pl-k">progn</span> (<span class="pl-k">when</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(.+<span class="pl-cce">\\</span>)::.+<span class="pl-pds">&quot;</span></span> raw-path)</td>
      </tr>
      <tr>
        <td id="L2295" class="blob-num js-line-number" data-line-number="2295"></td>
        <td id="LC2295" class="blob-code blob-code-inner js-file-line">			       (<span class="pl-k">setq</span> raw-path (match-string <span class="pl-c1">1</span> raw-path)))</td>
      </tr>
      <tr>
        <td id="L2296" class="blob-num js-line-number" data-line-number="2296"></td>
        <td id="LC2296" class="blob-code blob-code-inner js-file-line">			     (<span class="pl-k">if</span> (file-exists-p raw-path)</td>
      </tr>
      <tr>
        <td id="L2297" class="blob-num js-line-number" data-line-number="2297"></td>
        <td id="LC2297" class="blob-code blob-code-inner js-file-line">				 (concat type <span class="pl-s"><span class="pl-pds">&quot;</span>://<span class="pl-pds">&quot;</span></span> (expand-file-name raw-path))</td>
      </tr>
      <tr>
        <td id="L2298" class="blob-num js-line-number" data-line-number="2298"></td>
        <td id="LC2298" class="blob-code blob-code-inner js-file-line">			       (concat type <span class="pl-s"><span class="pl-pds">&quot;</span>://<span class="pl-pds">&quot;</span></span> (org-export-directory</td>
      </tr>
      <tr>
        <td id="L2299" class="blob-num js-line-number" data-line-number="2299"></td>
        <td id="LC2299" class="blob-code blob-code-inner js-file-line">						   <span class="pl-c1">:LaTeX</span> org-export-latex-options-plist)</td>
      </tr>
      <tr>
        <td id="L2300" class="blob-num js-line-number" data-line-number="2300"></td>
        <td id="LC2300" class="blob-code blob-code-inner js-file-line">				       raw-path))))))))</td>
      </tr>
      <tr>
        <td id="L2301" class="blob-num js-line-number" data-line-number="2301"></td>
        <td id="LC2301" class="blob-code blob-code-inner js-file-line">       <span class="pl-c">;; process with link inserting</span></td>
      </tr>
      <tr>
        <td id="L2302" class="blob-num js-line-number" data-line-number="2302"></td>
        <td id="LC2302" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">apply</span> <span class="pl-c1">&#39;delete-region</span> remove)</td>
      </tr>
      <tr>
        <td id="L2303" class="blob-num js-line-number" data-line-number="2303"></td>
        <td id="LC2303" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">setq</span> caption (<span class="pl-k">and</span> caption (org-export-latex-fontify-headline caption)))</td>
      </tr>
      <tr>
        <td id="L2304" class="blob-num js-line-number" data-line-number="2304"></td>
        <td id="LC2304" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">cond</span> ((<span class="pl-k">and</span> imgp</td>
      </tr>
      <tr>
        <td id="L2305" class="blob-num js-line-number" data-line-number="2305"></td>
        <td id="LC2305" class="blob-code blob-code-inner js-file-line">		   (plist-get org-export-latex-options-plist <span class="pl-c1">:inline-images</span>))</td>
      </tr>
      <tr>
        <td id="L2306" class="blob-num js-line-number" data-line-number="2306"></td>
        <td id="LC2306" class="blob-code blob-code-inner js-file-line">	      <span class="pl-c">;; OK, we need to inline an image</span></td>
      </tr>
      <tr>
        <td id="L2307" class="blob-num js-line-number" data-line-number="2307"></td>
        <td id="LC2307" class="blob-code blob-code-inner js-file-line">	      (insert</td>
      </tr>
      <tr>
        <td id="L2308" class="blob-num js-line-number" data-line-number="2308"></td>
        <td id="LC2308" class="blob-code blob-code-inner js-file-line">	       (org-export-latex-format-image raw-path caption label attr shortn)))</td>
      </tr>
      <tr>
        <td id="L2309" class="blob-num js-line-number" data-line-number="2309"></td>
        <td id="LC2309" class="blob-code blob-code-inner js-file-line">	     (coderefp</td>
      </tr>
      <tr>
        <td id="L2310" class="blob-num js-line-number" data-line-number="2310"></td>
        <td id="LC2310" class="blob-code blob-code-inner js-file-line">	      (insert (<span class="pl-c1">format</span></td>
      </tr>
      <tr>
        <td id="L2311" class="blob-num js-line-number" data-line-number="2311"></td>
        <td id="LC2311" class="blob-code blob-code-inner js-file-line">		       (org-export-get-coderef-format path desc)</td>
      </tr>
      <tr>
        <td id="L2312" class="blob-num js-line-number" data-line-number="2312"></td>
        <td id="LC2312" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> path org-export-code-refs)))))</td>
      </tr>
      <tr>
        <td id="L2313" class="blob-num js-line-number" data-line-number="2313"></td>
        <td id="LC2313" class="blob-code blob-code-inner js-file-line">	     (radiop (insert (<span class="pl-c1">format</span> org-export-latex-hyperref-format</td>
      </tr>
      <tr>
        <td id="L2314" class="blob-num js-line-number" data-line-number="2314"></td>
        <td id="LC2314" class="blob-code blob-code-inner js-file-line">				     (org-solidify-link-text raw-path) desc)))</td>
      </tr>
      <tr>
        <td id="L2315" class="blob-num js-line-number" data-line-number="2315"></td>
        <td id="LC2315" class="blob-code blob-code-inner js-file-line">	     ((<span class="pl-k">not</span> type)</td>
      </tr>
      <tr>
        <td id="L2316" class="blob-num js-line-number" data-line-number="2316"></td>
        <td id="LC2316" class="blob-code blob-code-inner js-file-line">	      (insert (<span class="pl-c1">format</span> org-export-latex-hyperref-format</td>
      </tr>
      <tr>
        <td id="L2317" class="blob-num js-line-number" data-line-number="2317"></td>
        <td id="LC2317" class="blob-code blob-code-inner js-file-line">			      (org-remove-initial-hash</td>
      </tr>
      <tr>
        <td id="L2318" class="blob-num js-line-number" data-line-number="2318"></td>
        <td id="LC2318" class="blob-code blob-code-inner js-file-line">			       (org-solidify-link-text raw-path))</td>
      </tr>
      <tr>
        <td id="L2319" class="blob-num js-line-number" data-line-number="2319"></td>
        <td id="LC2319" class="blob-code blob-code-inner js-file-line">			      desc)))</td>
      </tr>
      <tr>
        <td id="L2320" class="blob-num js-line-number" data-line-number="2320"></td>
        <td id="LC2320" class="blob-code blob-code-inner js-file-line">	     (path</td>
      </tr>
      <tr>
        <td id="L2321" class="blob-num js-line-number" data-line-number="2321"></td>
        <td id="LC2321" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">when</span> (org-at-table-p)</td>
      </tr>
      <tr>
        <td id="L2322" class="blob-num js-line-number" data-line-number="2322"></td>
        <td id="LC2322" class="blob-code blob-code-inner js-file-line">		<span class="pl-c">;; There is a strange problem when we have a link in a table,</span></td>
      </tr>
      <tr>
        <td id="L2323" class="blob-num js-line-number" data-line-number="2323"></td>
        <td id="LC2323" class="blob-code blob-code-inner js-file-line">		<span class="pl-c">;; ampersands then cause a problem.  I think this must be</span></td>
      </tr>
      <tr>
        <td id="L2324" class="blob-num js-line-number" data-line-number="2324"></td>
        <td id="LC2324" class="blob-code blob-code-inner js-file-line">		<span class="pl-c">;; a LaTeX issue, but we here implement a work-around anyway.</span></td>
      </tr>
      <tr>
        <td id="L2325" class="blob-num js-line-number" data-line-number="2325"></td>
        <td id="LC2325" class="blob-code blob-code-inner js-file-line">		(<span class="pl-k">setq</span> path (org-export-latex-protect-amp path)</td>
      </tr>
      <tr>
        <td id="L2326" class="blob-num js-line-number" data-line-number="2326"></td>
        <td id="LC2326" class="blob-code blob-code-inner js-file-line">		      desc (org-export-latex-protect-amp desc)))</td>
      </tr>
      <tr>
        <td id="L2327" class="blob-num js-line-number" data-line-number="2327"></td>
        <td id="LC2327" class="blob-code blob-code-inner js-file-line">	      (insert</td>
      </tr>
      <tr>
        <td id="L2328" class="blob-num js-line-number" data-line-number="2328"></td>
        <td id="LC2328" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>%s.*%s<span class="pl-pds">&quot;</span></span> org-export-latex-href-format)</td>
      </tr>
      <tr>
        <td id="L2329" class="blob-num js-line-number" data-line-number="2329"></td>
        <td id="LC2329" class="blob-code blob-code-inner js-file-line">		   (<span class="pl-c1">format</span> org-export-latex-href-format path desc)</td>
      </tr>
      <tr>
        <td id="L2330" class="blob-num js-line-number" data-line-number="2330"></td>
        <td id="LC2330" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-c1">format</span> org-export-latex-href-format path))))</td>
      </tr>
      <tr>
        <td id="L2331" class="blob-num js-line-number" data-line-number="2331"></td>
        <td id="LC2331" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2332" class="blob-num js-line-number" data-line-number="2332"></td>
        <td id="LC2332" class="blob-code blob-code-inner js-file-line">	     ((functionp (<span class="pl-k">setq</span> fnc (<span class="pl-k">nth</span> <span class="pl-c1">2</span> (<span class="pl-k">assoc</span> type org-link-protocols))))</td>
      </tr>
      <tr>
        <td id="L2333" class="blob-num js-line-number" data-line-number="2333"></td>
        <td id="LC2333" class="blob-code blob-code-inner js-file-line">	      <span class="pl-c">;; The link protocol has a function for formatting the link</span></td>
      </tr>
      <tr>
        <td id="L2334" class="blob-num js-line-number" data-line-number="2334"></td>
        <td id="LC2334" class="blob-code blob-code-inner js-file-line">	      (insert</td>
      </tr>
      <tr>
        <td id="L2335" class="blob-num js-line-number" data-line-number="2335"></td>
        <td id="LC2335" class="blob-code blob-code-inner js-file-line">	       (save-match-data</td>
      </tr>
      <tr>
        <td id="L2336" class="blob-num js-line-number" data-line-number="2336"></td>
        <td id="LC2336" class="blob-code blob-code-inner js-file-line">		 (<span class="pl-k">funcall</span> fnc (org-link-unescape raw-path) desc <span class="pl-c1">&#39;latex</span>))))</td>
      </tr>
      <tr>
        <td id="L2337" class="blob-num js-line-number" data-line-number="2337"></td>
        <td id="LC2337" class="blob-code blob-code-inner js-file-line">	     <span class="pl-c">;; Unrecognized path type</span></td>
      </tr>
      <tr>
        <td id="L2338" class="blob-num js-line-number" data-line-number="2338"></td>
        <td id="LC2338" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-c1">t</span> (insert (<span class="pl-c1">format</span> org-export-latex-link-with-unknown-path-format desc))))))))</td>
      </tr>
      <tr>
        <td id="L2339" class="blob-num js-line-number" data-line-number="2339"></td>
        <td id="LC2339" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2340" class="blob-num js-line-number" data-line-number="2340"></td>
        <td id="LC2340" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2341" class="blob-num js-line-number" data-line-number="2341"></td>
        <td id="LC2341" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-format-image</span> (<span class="pl-v">path</span> <span class="pl-v">caption</span> <span class="pl-v">label</span> <span class="pl-v">attr</span> <span class="pl-c1">&amp;optional</span> <span class="pl-v">shortn</span>)</td>
      </tr>
      <tr>
        <td id="L2342" class="blob-num js-line-number" data-line-number="2342"></td>
        <td id="LC2342" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Format the image element, depending on user settings.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2343" class="blob-num js-line-number" data-line-number="2343"></td>
        <td id="LC2343" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> (ind floatp wrapp multicolumnp placement figenv)</td>
      </tr>
      <tr>
        <td id="L2344" class="blob-num js-line-number" data-line-number="2344"></td>
        <td id="LC2344" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> floatp (<span class="pl-k">or</span> caption label))</td>
      </tr>
      <tr>
        <td id="L2345" class="blob-num js-line-number" data-line-number="2345"></td>
        <td id="LC2345" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> ind (org-get-text-property-any <span class="pl-c1">0</span> <span class="pl-c1">&#39;original-indentation</span> path))</td>
      </tr>
      <tr>
        <td id="L2346" class="blob-num js-line-number" data-line-number="2346"></td>
        <td id="LC2346" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (<span class="pl-k">and</span> attr (stringp attr))</td>
      </tr>
      <tr>
        <td id="L2347" class="blob-num js-line-number" data-line-number="2347"></td>
        <td id="LC2347" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>&lt;wrap<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L2348" class="blob-num js-line-number" data-line-number="2348"></td>
        <td id="LC2348" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> wrapp <span class="pl-c1">t</span> floatp <span class="pl-c1">nil</span> attr (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span> attr)))</td>
      </tr>
      <tr>
        <td id="L2349" class="blob-num js-line-number" data-line-number="2349"></td>
        <td id="LC2349" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>&lt;float<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L2350" class="blob-num js-line-number" data-line-number="2350"></td>
        <td id="LC2350" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> wrapp <span class="pl-c1">nil</span> floatp <span class="pl-c1">t</span> attr (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span> attr)))</td>
      </tr>
      <tr>
        <td id="L2351" class="blob-num js-line-number" data-line-number="2351"></td>
        <td id="LC2351" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>&lt;multicolumn<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L2352" class="blob-num js-line-number" data-line-number="2352"></td>
        <td id="LC2352" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> multicolumnp <span class="pl-c1">t</span> attr (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span> attr))))</td>
      </tr>
      <tr>
        <td id="L2353" class="blob-num js-line-number" data-line-number="2353"></td>
        <td id="LC2353" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2354" class="blob-num js-line-number" data-line-number="2354"></td>
        <td id="LC2354" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> placement</td>
      </tr>
      <tr>
        <td id="L2355" class="blob-num js-line-number" data-line-number="2355"></td>
        <td id="LC2355" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">cond</span></td>
      </tr>
      <tr>
        <td id="L2356" class="blob-num js-line-number" data-line-number="2356"></td>
        <td id="LC2356" class="blob-code blob-code-inner js-file-line">	   (wrapp <span class="pl-s"><span class="pl-pds">&quot;</span>{l}{0.5<span class="pl-cce">\\</span>textwidth}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2357" class="blob-num js-line-number" data-line-number="2357"></td>
        <td id="LC2357" class="blob-code blob-code-inner js-file-line">	   (floatp (concat <span class="pl-s"><span class="pl-pds">&quot;</span>[<span class="pl-pds">&quot;</span></span> org-latex-default-figure-position <span class="pl-s"><span class="pl-pds">&quot;</span>]<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2358" class="blob-num js-line-number" data-line-number="2358"></td>
        <td id="LC2358" class="blob-code blob-code-inner js-file-line">	   (<span class="pl-c1">t</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2359" class="blob-num js-line-number" data-line-number="2359"></td>
        <td id="LC2359" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2360" class="blob-num js-line-number" data-line-number="2360"></td>
        <td id="LC2360" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (<span class="pl-k">and</span> attr (stringp attr)</td>
      </tr>
      <tr>
        <td id="L2361" class="blob-num js-line-number" data-line-number="2361"></td>
        <td id="LC2361" class="blob-code blob-code-inner js-file-line">	       (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>&lt;placement=<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>S-+<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> attr))</td>
      </tr>
      <tr>
        <td id="L2362" class="blob-num js-line-number" data-line-number="2362"></td>
        <td id="LC2362" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> placement (match-string <span class="pl-c1">1</span> attr)</td>
      </tr>
      <tr>
        <td id="L2363" class="blob-num js-line-number" data-line-number="2363"></td>
        <td id="LC2363" class="blob-code blob-code-inner js-file-line">	    attr (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span> attr)))</td>
      </tr>
      <tr>
        <td id="L2364" class="blob-num js-line-number" data-line-number="2364"></td>
        <td id="LC2364" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> attr (<span class="pl-k">and</span> attr (org-trim attr)))</td>
      </tr>
      <tr>
        <td id="L2365" class="blob-num js-line-number" data-line-number="2365"></td>
        <td id="LC2365" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> (<span class="pl-k">or</span> (<span class="pl-k">not</span> attr) (<span class="pl-k">=</span> (<span class="pl-k">length</span> attr) <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L2366" class="blob-num js-line-number" data-line-number="2366"></td>
        <td id="LC2366" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> attr (<span class="pl-k">cond</span> (floatp <span class="pl-s"><span class="pl-pds">&quot;</span>width=0.7<span class="pl-cce">\\</span>textwidth<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2367" class="blob-num js-line-number" data-line-number="2367"></td>
        <td id="LC2367" class="blob-code blob-code-inner js-file-line">		       (wrapp <span class="pl-s"><span class="pl-pds">&quot;</span>width=0.48<span class="pl-cce">\\</span>textwidth<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2368" class="blob-num js-line-number" data-line-number="2368"></td>
        <td id="LC2368" class="blob-code blob-code-inner js-file-line">		       (<span class="pl-c1">t</span> attr))))</td>
      </tr>
      <tr>
        <td id="L2369" class="blob-num js-line-number" data-line-number="2369"></td>
        <td id="LC2369" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> figenv</td>
      </tr>
      <tr>
        <td id="L2370" class="blob-num js-line-number" data-line-number="2370"></td>
        <td id="LC2370" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">cond</span></td>
      </tr>
      <tr>
        <td id="L2371" class="blob-num js-line-number" data-line-number="2371"></td>
        <td id="LC2371" class="blob-code blob-code-inner js-file-line">	   (wrapp <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{wrapfigure}%placement</span></td>
      </tr>
      <tr>
        <td id="L2372" class="blob-num js-line-number" data-line-number="2372"></td>
        <td id="LC2372" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>centering</span></td>
      </tr>
      <tr>
        <td id="L2373" class="blob-num js-line-number" data-line-number="2373"></td>
        <td id="LC2373" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>includegraphics[%attr]{%path}</span></td>
      </tr>
      <tr>
        <td id="L2374" class="blob-num js-line-number" data-line-number="2374"></td>
        <td id="LC2374" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>caption%shortn{%labelcmd%caption}</span></td>
      </tr>
      <tr>
        <td id="L2375" class="blob-num js-line-number" data-line-number="2375"></td>
        <td id="LC2375" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>end{wrapfigure}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2376" class="blob-num js-line-number" data-line-number="2376"></td>
        <td id="LC2376" class="blob-code blob-code-inner js-file-line">	   (multicolumnp <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{figure*}%placement</span></td>
      </tr>
      <tr>
        <td id="L2377" class="blob-num js-line-number" data-line-number="2377"></td>
        <td id="LC2377" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>centering</span></td>
      </tr>
      <tr>
        <td id="L2378" class="blob-num js-line-number" data-line-number="2378"></td>
        <td id="LC2378" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>includegraphics[%attr]{%path}</span></td>
      </tr>
      <tr>
        <td id="L2379" class="blob-num js-line-number" data-line-number="2379"></td>
        <td id="LC2379" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>caption%shortn{%labelcmd%caption}</span></td>
      </tr>
      <tr>
        <td id="L2380" class="blob-num js-line-number" data-line-number="2380"></td>
        <td id="LC2380" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>end{figure*}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2381" class="blob-num js-line-number" data-line-number="2381"></td>
        <td id="LC2381" class="blob-code blob-code-inner js-file-line">	   (floatp <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{figure}%placement</span></td>
      </tr>
      <tr>
        <td id="L2382" class="blob-num js-line-number" data-line-number="2382"></td>
        <td id="LC2382" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>centering</span></td>
      </tr>
      <tr>
        <td id="L2383" class="blob-num js-line-number" data-line-number="2383"></td>
        <td id="LC2383" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>includegraphics[%attr]{%path}</span></td>
      </tr>
      <tr>
        <td id="L2384" class="blob-num js-line-number" data-line-number="2384"></td>
        <td id="LC2384" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>caption%shortn{%labelcmd%caption}</span></td>
      </tr>
      <tr>
        <td id="L2385" class="blob-num js-line-number" data-line-number="2385"></td>
        <td id="LC2385" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-cce">\\</span>end{figure}<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2386" class="blob-num js-line-number" data-line-number="2386"></td>
        <td id="LC2386" class="blob-code blob-code-inner js-file-line">	   (<span class="pl-c1">t</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>includegraphics[%attr]{%path}<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2387" class="blob-num js-line-number" data-line-number="2387"></td>
        <td id="LC2387" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2388" class="blob-num js-line-number" data-line-number="2388"></td>
        <td id="LC2388" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2389" class="blob-num js-line-number" data-line-number="2389"></td>
        <td id="LC2389" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> figenv (mapconcat <span class="pl-c1">&#39;identity</span> (split-string figenv <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2390" class="blob-num js-line-number" data-line-number="2390"></td>
        <td id="LC2390" class="blob-code blob-code-inner js-file-line">			    (save-excursion (beginning-of-line <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L2391" class="blob-num js-line-number" data-line-number="2391"></td>
        <td id="LC2391" class="blob-code blob-code-inner js-file-line">					    (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2392" class="blob-num js-line-number" data-line-number="2392"></td>
        <td id="LC2392" class="blob-code blob-code-inner js-file-line">					    (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">0</span>)))))</td>
      </tr>
      <tr>
        <td id="L2393" class="blob-num js-line-number" data-line-number="2393"></td>
        <td id="LC2393" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2394" class="blob-num js-line-number" data-line-number="2394"></td>
        <td id="LC2394" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">if</span> (<span class="pl-k">and</span> (<span class="pl-k">not</span> label) (<span class="pl-k">not</span> caption)</td>
      </tr>
      <tr>
        <td id="L2395" class="blob-num js-line-number" data-line-number="2395"></td>
        <td id="LC2395" class="blob-code blob-code-inner js-file-line">	     (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-cce">\\\\</span>caption{.*<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> figenv))</td>
      </tr>
      <tr>
        <td id="L2396" class="blob-num js-line-number" data-line-number="2396"></td>
        <td id="LC2396" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">setq</span> figenv (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span> figenv)))</td>
      </tr>
      <tr>
        <td id="L2397" class="blob-num js-line-number" data-line-number="2397"></td>
        <td id="LC2397" class="blob-code blob-code-inner js-file-line">    (org-add-props</td>
      </tr>
      <tr>
        <td id="L2398" class="blob-num js-line-number" data-line-number="2398"></td>
        <td id="LC2398" class="blob-code blob-code-inner js-file-line">	(org-fill-template</td>
      </tr>
      <tr>
        <td id="L2399" class="blob-num js-line-number" data-line-number="2399"></td>
        <td id="LC2399" class="blob-code blob-code-inner js-file-line">	 figenv</td>
      </tr>
      <tr>
        <td id="L2400" class="blob-num js-line-number" data-line-number="2400"></td>
        <td id="LC2400" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">list</span> (<span class="pl-k">cons</span> <span class="pl-s"><span class="pl-pds">&quot;</span>path<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2401" class="blob-num js-line-number" data-line-number="2401"></td>
        <td id="LC2401" class="blob-code blob-code-inner js-file-line">		     (<span class="pl-k">if</span> (file-name-absolute-p path)</td>
      </tr>
      <tr>
        <td id="L2402" class="blob-num js-line-number" data-line-number="2402"></td>
        <td id="LC2402" class="blob-code blob-code-inner js-file-line">			 (expand-file-name path)</td>
      </tr>
      <tr>
        <td id="L2403" class="blob-num js-line-number" data-line-number="2403"></td>
        <td id="LC2403" class="blob-code blob-code-inner js-file-line">		       path))</td>
      </tr>
      <tr>
        <td id="L2404" class="blob-num js-line-number" data-line-number="2404"></td>
        <td id="LC2404" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">cons</span> <span class="pl-s"><span class="pl-pds">&quot;</span>attr<span class="pl-pds">&quot;</span></span> attr)</td>
      </tr>
      <tr>
        <td id="L2405" class="blob-num js-line-number" data-line-number="2405"></td>
        <td id="LC2405" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">cons</span> <span class="pl-s"><span class="pl-pds">&quot;</span>shortn<span class="pl-pds">&quot;</span></span> (<span class="pl-k">if</span> shortn (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s">[<span class="pl-c1">%s</span>]</span><span class="pl-pds">&quot;</span> shortn) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2406" class="blob-num js-line-number" data-line-number="2406"></td>
        <td id="LC2406" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">cons</span> <span class="pl-s"><span class="pl-pds">&quot;</span>labelcmd<span class="pl-pds">&quot;</span></span> (<span class="pl-k">if</span> label (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span></td>
      </tr>
      <tr>
        <td id="L2407" class="blob-num js-line-number" data-line-number="2407"></td>
        <td id="LC2407" class="blob-code blob-code-inner js-file-line">						  label)<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2408" class="blob-num js-line-number" data-line-number="2408"></td>
        <td id="LC2408" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">cons</span> <span class="pl-s"><span class="pl-pds">&quot;</span>caption<span class="pl-pds">&quot;</span></span> (<span class="pl-k">or</span> caption <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2409" class="blob-num js-line-number" data-line-number="2409"></td>
        <td id="LC2409" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">cons</span> <span class="pl-s"><span class="pl-pds">&quot;</span>placement<span class="pl-pds">&quot;</span></span> (<span class="pl-k">or</span> placement <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L2410" class="blob-num js-line-number" data-line-number="2410"></td>
        <td id="LC2410" class="blob-code blob-code-inner js-file-line">	<span class="pl-c1">nil</span> <span class="pl-c1">&#39;original-indentation</span> ind)))</td>
      </tr>
      <tr>
        <td id="L2411" class="blob-num js-line-number" data-line-number="2411"></td>
        <td id="LC2411" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2412" class="blob-num js-line-number" data-line-number="2412"></td>
        <td id="LC2412" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-protect-amp</span> (<span class="pl-v">s</span>)</td>
      </tr>
      <tr>
        <td id="L2413" class="blob-num js-line-number" data-line-number="2413"></td>
        <td id="LC2413" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>([^<span class="pl-cce">\\\\</span>]<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>(&amp;<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> s)</td>
      </tr>
      <tr>
        <td id="L2414" class="blob-num js-line-number" data-line-number="2414"></td>
        <td id="LC2414" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">setq</span> s (replace-match (concat (match-string <span class="pl-c1">1</span> s) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">2</span> s))</td>
      </tr>
      <tr>
        <td id="L2415" class="blob-num js-line-number" data-line-number="2415"></td>
        <td id="LC2415" class="blob-code blob-code-inner js-file-line">			   <span class="pl-c1">t</span> <span class="pl-c1">t</span> s)))</td>
      </tr>
      <tr>
        <td id="L2416" class="blob-num js-line-number" data-line-number="2416"></td>
        <td id="LC2416" class="blob-code blob-code-inner js-file-line">  s)</td>
      </tr>
      <tr>
        <td id="L2417" class="blob-num js-line-number" data-line-number="2417"></td>
        <td id="LC2417" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2418" class="blob-num js-line-number" data-line-number="2418"></td>
        <td id="LC2418" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-remove-initial-hash</span> (<span class="pl-v">s</span>)</td>
      </tr>
      <tr>
        <td id="L2419" class="blob-num js-line-number" data-line-number="2419"></td>
        <td id="LC2419" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>`#<span class="pl-pds">&quot;</span></span> s)</td>
      </tr>
      <tr>
        <td id="L2420" class="blob-num js-line-number" data-line-number="2420"></td>
        <td id="LC2420" class="blob-code blob-code-inner js-file-line">      (substring s <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L2421" class="blob-num js-line-number" data-line-number="2421"></td>
        <td id="LC2421" class="blob-code blob-code-inner js-file-line">    s))</td>
      </tr>
      <tr>
        <td id="L2422" class="blob-num js-line-number" data-line-number="2422"></td>
        <td id="LC2422" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-latex-entities</span>)   <span class="pl-c">; defined below</span></td>
      </tr>
      <tr>
        <td id="L2423" class="blob-num js-line-number" data-line-number="2423"></td>
        <td id="LC2423" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defvar</span> <span class="pl-en">org-latex-entities-regexp</span>)   <span class="pl-c">; defined below</span></td>
      </tr>
      <tr>
        <td id="L2424" class="blob-num js-line-number" data-line-number="2424"></td>
        <td id="LC2424" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2425" class="blob-num js-line-number" data-line-number="2425"></td>
        <td id="LC2425" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-preprocess</span> (<span class="pl-v">parameters</span>)</td>
      </tr>
      <tr>
        <td id="L2426" class="blob-num js-line-number" data-line-number="2426"></td>
        <td id="LC2426" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Clean stuff in the LaTeX export.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2427" class="blob-num js-line-number" data-line-number="2427"></td>
        <td id="LC2427" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Replace footnotes.</span></td>
      </tr>
      <tr>
        <td id="L2428" class="blob-num js-line-number" data-line-number="2428"></td>
        <td id="LC2428" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">when</span> (plist-get parameters <span class="pl-c1">:footnotes</span>)</td>
      </tr>
      <tr>
        <td id="L2429" class="blob-num js-line-number" data-line-number="2429"></td>
        <td id="LC2429" class="blob-code blob-code-inner js-file-line">    (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2430" class="blob-num js-line-number" data-line-number="2430"></td>
        <td id="LC2430" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">let</span> (ref)</td>
      </tr>
      <tr>
        <td id="L2431" class="blob-num js-line-number" data-line-number="2431"></td>
        <td id="LC2431" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">while</span> (<span class="pl-k">setq</span> ref (org-footnote-get-next-reference))</td>
      </tr>
      <tr>
        <td id="L2432" class="blob-num js-line-number" data-line-number="2432"></td>
        <td id="LC2432" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">let*</span> ((beg (<span class="pl-k">nth</span> <span class="pl-c1">1</span> ref))</td>
      </tr>
      <tr>
        <td id="L2433" class="blob-num js-line-number" data-line-number="2433"></td>
        <td id="LC2433" class="blob-code blob-code-inner js-file-line">	       (lbl (<span class="pl-k">car</span> ref))</td>
      </tr>
      <tr>
        <td id="L2434" class="blob-num js-line-number" data-line-number="2434"></td>
        <td id="LC2434" class="blob-code blob-code-inner js-file-line">	       (def (<span class="pl-k">nth</span> <span class="pl-c1">1</span> (<span class="pl-k">assoc</span> (string-to-number lbl)</td>
      </tr>
      <tr>
        <td id="L2435" class="blob-num js-line-number" data-line-number="2435"></td>
        <td id="LC2435" class="blob-code blob-code-inner js-file-line">				  (<span class="pl-k">mapcar</span> (<span class="pl-k">lambda</span> (<span class="pl-v">e</span>) (<span class="pl-k">cdr</span> e))</td>
      </tr>
      <tr>
        <td id="L2436" class="blob-num js-line-number" data-line-number="2436"></td>
        <td id="LC2436" class="blob-code blob-code-inner js-file-line">					  org-export-footnotes-seen)))))</td>
      </tr>
      <tr>
        <td id="L2437" class="blob-num js-line-number" data-line-number="2437"></td>
        <td id="LC2437" class="blob-code blob-code-inner js-file-line">	  <span class="pl-c">;; Fix body for footnotes ending on a link or a list and</span></td>
      </tr>
      <tr>
        <td id="L2438" class="blob-num js-line-number" data-line-number="2438"></td>
        <td id="LC2438" class="blob-code blob-code-inner js-file-line">	  <span class="pl-c">;; remove definition from buffer.</span></td>
      </tr>
      <tr>
        <td id="L2439" class="blob-num js-line-number" data-line-number="2439"></td>
        <td id="LC2439" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> def</td>
      </tr>
      <tr>
        <td id="L2440" class="blob-num js-line-number" data-line-number="2440"></td>
        <td id="LC2440" class="blob-code blob-code-inner js-file-line">		(concat def</td>
      </tr>
      <tr>
        <td id="L2441" class="blob-num js-line-number" data-line-number="2441"></td>
        <td id="LC2441" class="blob-code blob-code-inner js-file-line">			(<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>ORG-LIST-END-MARKER<span class="pl-cce">\\</span>&#39;<span class="pl-pds">&quot;</span></span> def)</td>
      </tr>
      <tr>
        <td id="L2442" class="blob-num js-line-number" data-line-number="2442"></td>
        <td id="LC2442" class="blob-code blob-code-inner js-file-line">			    <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2443" class="blob-num js-line-number" data-line-number="2443"></td>
        <td id="LC2443" class="blob-code blob-code-inner js-file-line">	  (org-footnote-delete-definitions lbl)</td>
      </tr>
      <tr>
        <td id="L2444" class="blob-num js-line-number" data-line-number="2444"></td>
        <td id="LC2444" class="blob-code blob-code-inner js-file-line">	  <span class="pl-c">;; Compute string to insert (FNOTE), and protect the outside</span></td>
      </tr>
      <tr>
        <td id="L2445" class="blob-num js-line-number" data-line-number="2445"></td>
        <td id="LC2445" class="blob-code blob-code-inner js-file-line">	  <span class="pl-c">;; macro from further transformation.  When footnote at</span></td>
      </tr>
      <tr>
        <td id="L2446" class="blob-num js-line-number" data-line-number="2446"></td>
        <td id="LC2446" class="blob-code blob-code-inner js-file-line">	  <span class="pl-c">;; point is referring to a previously defined footnote, use</span></td>
      </tr>
      <tr>
        <td id="L2447" class="blob-num js-line-number" data-line-number="2447"></td>
        <td id="LC2447" class="blob-code blob-code-inner js-file-line">	  <span class="pl-c">;; \footnotemark. Otherwise, use \footnote.</span></td>
      </tr>
      <tr>
        <td id="L2448" class="blob-num js-line-number" data-line-number="2448"></td>
        <td id="LC2448" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">let</span> ((fnote (<span class="pl-k">if</span> (<span class="pl-k">member</span> lbl org-export-latex-footmark-seen)</td>
      </tr>
      <tr>
        <td id="L2449" class="blob-num js-line-number" data-line-number="2449"></td>
        <td id="LC2449" class="blob-code blob-code-inner js-file-line">			   (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L2450" class="blob-num js-line-number" data-line-number="2450"></td>
        <td id="LC2450" class="blob-code blob-code-inner js-file-line">			    (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>footnotemark[<span class="pl-c1">%s</span>]</span><span class="pl-pds">&quot;</span> lbl))</td>
      </tr>
      <tr>
        <td id="L2451" class="blob-num js-line-number" data-line-number="2451"></td>
        <td id="LC2451" class="blob-code blob-code-inner js-file-line">			 (<span class="pl-k">push</span> lbl org-export-latex-footmark-seen)</td>
      </tr>
      <tr>
        <td id="L2452" class="blob-num js-line-number" data-line-number="2452"></td>
        <td id="LC2452" class="blob-code blob-code-inner js-file-line">			 (concat (org-export-latex-protect-string <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>footnote{<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2453" class="blob-num js-line-number" data-line-number="2453"></td>
        <td id="LC2453" class="blob-code blob-code-inner js-file-line">				 def</td>
      </tr>
      <tr>
        <td id="L2454" class="blob-num js-line-number" data-line-number="2454"></td>
        <td id="LC2454" class="blob-code blob-code-inner js-file-line">				 (org-export-latex-protect-string <span class="pl-s"><span class="pl-pds">&quot;</span>}<span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L2455" class="blob-num js-line-number" data-line-number="2455"></td>
        <td id="LC2455" class="blob-code blob-code-inner js-file-line">		<span class="pl-c">;; Check if another footnote is immediately following.</span></td>
      </tr>
      <tr>
        <td id="L2456" class="blob-num js-line-number" data-line-number="2456"></td>
        <td id="LC2456" class="blob-code blob-code-inner js-file-line">		<span class="pl-c">;; If so, add a separator in-between.</span></td>
      </tr>
      <tr>
        <td id="L2457" class="blob-num js-line-number" data-line-number="2457"></td>
        <td id="LC2457" class="blob-code blob-code-inner js-file-line">		(sep (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L2458" class="blob-num js-line-number" data-line-number="2458"></td>
        <td id="LC2458" class="blob-code blob-code-inner js-file-line">		      (<span class="pl-k">if</span> (save-excursion (goto-char (1- (<span class="pl-k">nth</span> <span class="pl-c1">2</span> ref)))</td>
      </tr>
      <tr>
        <td id="L2459" class="blob-num js-line-number" data-line-number="2459"></td>
        <td id="LC2459" class="blob-code blob-code-inner js-file-line">					  (<span class="pl-k">let</span> ((next (org-footnote-get-next-reference)))</td>
      </tr>
      <tr>
        <td id="L2460" class="blob-num js-line-number" data-line-number="2460"></td>
        <td id="LC2460" class="blob-code blob-code-inner js-file-line">					    (<span class="pl-k">and</span> next (<span class="pl-k">=</span> (<span class="pl-k">nth</span> <span class="pl-c1">1</span> next) (<span class="pl-k">nth</span> <span class="pl-c1">2</span> ref)))))</td>
      </tr>
      <tr>
        <td id="L2461" class="blob-num js-line-number" data-line-number="2461"></td>
        <td id="LC2461" class="blob-code blob-code-inner js-file-line">			  org-export-latex-footnote-separator <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L2462" class="blob-num js-line-number" data-line-number="2462"></td>
        <td id="LC2462" class="blob-code blob-code-inner js-file-line">	    (<span class="pl-k">when</span> (org-at-heading-p)</td>
      </tr>
      <tr>
        <td id="L2463" class="blob-num js-line-number" data-line-number="2463"></td>
        <td id="LC2463" class="blob-code blob-code-inner js-file-line">	      (<span class="pl-k">setq</span> fnote (concat (org-export-latex-protect-string <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>protect<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2464" class="blob-num js-line-number" data-line-number="2464"></td>
        <td id="LC2464" class="blob-code blob-code-inner js-file-line">				  fnote)))</td>
      </tr>
      <tr>
        <td id="L2465" class="blob-num js-line-number" data-line-number="2465"></td>
        <td id="LC2465" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; Ensure a footnote at column 0 cannot end a list</span></td>
      </tr>
      <tr>
        <td id="L2466" class="blob-num js-line-number" data-line-number="2466"></td>
        <td id="LC2466" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; containing it.</span></td>
      </tr>
      <tr>
        <td id="L2467" class="blob-num js-line-number" data-line-number="2467"></td>
        <td id="LC2467" class="blob-code blob-code-inner js-file-line">	    (put-text-property <span class="pl-c1">0</span> (<span class="pl-k">length</span> fnote) <span class="pl-c1">&#39;original-indentation</span> <span class="pl-c1">1000</span> fnote)</td>
      </tr>
      <tr>
        <td id="L2468" class="blob-num js-line-number" data-line-number="2468"></td>
        <td id="LC2468" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; Replace footnote reference with FNOTE and, maybe, SEP.</span></td>
      </tr>
      <tr>
        <td id="L2469" class="blob-num js-line-number" data-line-number="2469"></td>
        <td id="LC2469" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; `save-excursion&#39; is required if there are two footnotes</span></td>
      </tr>
      <tr>
        <td id="L2470" class="blob-num js-line-number" data-line-number="2470"></td>
        <td id="LC2470" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; in a row.  In that case, point would be left at the</span></td>
      </tr>
      <tr>
        <td id="L2471" class="blob-num js-line-number" data-line-number="2471"></td>
        <td id="LC2471" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; beginning of the second one, and</span></td>
      </tr>
      <tr>
        <td id="L2472" class="blob-num js-line-number" data-line-number="2472"></td>
        <td id="LC2472" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c">;; `org-footnote-get-next-reference&#39; would then skip it.</span></td>
      </tr>
      <tr>
        <td id="L2473" class="blob-num js-line-number" data-line-number="2473"></td>
        <td id="LC2473" class="blob-code blob-code-inner js-file-line">	    (goto-char beg)</td>
      </tr>
      <tr>
        <td id="L2474" class="blob-num js-line-number" data-line-number="2474"></td>
        <td id="LC2474" class="blob-code blob-code-inner js-file-line">	    (delete-region beg (<span class="pl-k">nth</span> <span class="pl-c1">2</span> ref))</td>
      </tr>
      <tr>
        <td id="L2475" class="blob-num js-line-number" data-line-number="2475"></td>
        <td id="LC2475" class="blob-code blob-code-inner js-file-line">	    (save-excursion (insert fnote sep)))))))</td>
      </tr>
      <tr>
        <td id="L2476" class="blob-num js-line-number" data-line-number="2476"></td>
        <td id="LC2476" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2477" class="blob-num js-line-number" data-line-number="2477"></td>
        <td id="LC2477" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Remove footnote section tag for LaTeX</span></td>
      </tr>
      <tr>
        <td id="L2478" class="blob-num js-line-number" data-line-number="2478"></td>
        <td id="LC2478" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2479" class="blob-num js-line-number" data-line-number="2479"></td>
        <td id="LC2479" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward</td>
      </tr>
      <tr>
        <td id="L2480" class="blob-num js-line-number" data-line-number="2480"></td>
        <td id="LC2480" class="blob-code blob-code-inner js-file-line">	  (concat <span class="pl-s"><span class="pl-pds">&quot;</span>^<span class="pl-pds">&quot;</span></span> footnote-section-tag-regexp) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2481" class="blob-num js-line-number" data-line-number="2481"></td>
        <td id="LC2481" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected</td>
      </tr>
      <tr>
        <td id="L2482" class="blob-num js-line-number" data-line-number="2482"></td>
        <td id="LC2482" class="blob-code blob-code-inner js-file-line">     (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2483" class="blob-num js-line-number" data-line-number="2483"></td>
        <td id="LC2483" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Remove any left-over footnote definition.</span></td>
      </tr>
      <tr>
        <td id="L2484" class="blob-num js-line-number" data-line-number="2484"></td>
        <td id="LC2484" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">mapc</span> (<span class="pl-k">lambda</span> (<span class="pl-v">fn</span>) (org-footnote-delete-definitions (<span class="pl-k">car</span> fn)))</td>
      </tr>
      <tr>
        <td id="L2485" class="blob-num js-line-number" data-line-number="2485"></td>
        <td id="LC2485" class="blob-code blob-code-inner js-file-line">	org-export-footnotes-data)</td>
      </tr>
      <tr>
        <td id="L2486" class="blob-num js-line-number" data-line-number="2486"></td>
        <td id="LC2486" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">mapc</span> (<span class="pl-k">lambda</span> (<span class="pl-v">fn</span>) (org-footnote-delete-definitions fn))</td>
      </tr>
      <tr>
        <td id="L2487" class="blob-num js-line-number" data-line-number="2487"></td>
        <td id="LC2487" class="blob-code blob-code-inner js-file-line">	org-export-latex-footmark-seen)</td>
      </tr>
      <tr>
        <td id="L2488" class="blob-num js-line-number" data-line-number="2488"></td>
        <td id="LC2488" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2489" class="blob-num js-line-number" data-line-number="2489"></td>
        <td id="LC2489" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Preserve line breaks</span></td>
      </tr>
      <tr>
        <td id="L2490" class="blob-num js-line-number" data-line-number="2490"></td>
        <td id="LC2490" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2491" class="blob-num js-line-number" data-line-number="2491"></td>
        <td id="LC2491" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\\\\\</span><span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2492" class="blob-num js-line-number" data-line-number="2492"></td>
        <td id="LC2492" class="blob-code blob-code-inner js-file-line">    (add-text-properties (match-beginning <span class="pl-c1">0</span>) (match-end <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L2493" class="blob-num js-line-number" data-line-number="2493"></td>
        <td id="LC2493" class="blob-code blob-code-inner js-file-line">			 &#39;(org-protected <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L2494" class="blob-num js-line-number" data-line-number="2494"></td>
        <td id="LC2494" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2495" class="blob-num js-line-number" data-line-number="2495"></td>
        <td id="LC2495" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Preserve latex environments</span></td>
      </tr>
      <tr>
        <td id="L2496" class="blob-num js-line-number" data-line-number="2496"></td>
        <td id="LC2496" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2497" class="blob-num js-line-number" data-line-number="2497"></td>
        <td id="LC2497" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\\\</span>begin{<span class="pl-cce">\\</span>([a-zA-Z]+<span class="pl-cce">\\</span>*?<span class="pl-cce">\\</span>)}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2498" class="blob-num js-line-number" data-line-number="2498"></td>
        <td id="LC2498" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected</td>
      </tr>
      <tr>
        <td id="L2499" class="blob-num js-line-number" data-line-number="2499"></td>
        <td id="LC2499" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">let*</span> ((start (<span class="pl-k">progn</span> (beginning-of-line) (point)))</td>
      </tr>
      <tr>
        <td id="L2500" class="blob-num js-line-number" data-line-number="2500"></td>
        <td id="LC2500" class="blob-code blob-code-inner js-file-line">	    (end (<span class="pl-k">and</span> (re-search-forward</td>
      </tr>
      <tr>
        <td id="L2501" class="blob-num js-line-number" data-line-number="2501"></td>
        <td id="LC2501" class="blob-code blob-code-inner js-file-line">		       (concat <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\\\</span>end{<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2502" class="blob-num js-line-number" data-line-number="2502"></td>
        <td id="LC2502" class="blob-code blob-code-inner js-file-line">			       (regexp-quote (match-string <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L2503" class="blob-num js-line-number" data-line-number="2503"></td>
        <td id="LC2503" class="blob-code blob-code-inner js-file-line">			       <span class="pl-s"><span class="pl-pds">&quot;</span>}<span class="pl-pds">&quot;</span></span>) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2504" class="blob-num js-line-number" data-line-number="2504"></td>
        <td id="LC2504" class="blob-code blob-code-inner js-file-line">		      (point-at-eol))))</td>
      </tr>
      <tr>
        <td id="L2505" class="blob-num js-line-number" data-line-number="2505"></td>
        <td id="LC2505" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">if</span> end</td>
      </tr>
      <tr>
        <td id="L2506" class="blob-num js-line-number" data-line-number="2506"></td>
        <td id="LC2506" class="blob-code blob-code-inner js-file-line">	   (add-text-properties start end &#39;(org-protected <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L2507" class="blob-num js-line-number" data-line-number="2507"></td>
        <td id="LC2507" class="blob-code blob-code-inner js-file-line">	 (goto-char (point-at-eol))))))</td>
      </tr>
      <tr>
        <td id="L2508" class="blob-num js-line-number" data-line-number="2508"></td>
        <td id="LC2508" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2509" class="blob-num js-line-number" data-line-number="2509"></td>
        <td id="LC2509" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Preserve math snippets</span></td>
      </tr>
      <tr>
        <td id="L2510" class="blob-num js-line-number" data-line-number="2510"></td>
        <td id="LC2510" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let*</span> ((matchers (plist-get org-format-latex-options <span class="pl-c1">:matchers</span>))</td>
      </tr>
      <tr>
        <td id="L2511" class="blob-num js-line-number" data-line-number="2511"></td>
        <td id="LC2511" class="blob-code blob-code-inner js-file-line">	 (re-list org-latex-regexps)</td>
      </tr>
      <tr>
        <td id="L2512" class="blob-num js-line-number" data-line-number="2512"></td>
        <td id="LC2512" class="blob-code blob-code-inner js-file-line">	 beg end re e m n block off)</td>
      </tr>
      <tr>
        <td id="L2513" class="blob-num js-line-number" data-line-number="2513"></td>
        <td id="LC2513" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">;; Check the different regular expressions</span></td>
      </tr>
      <tr>
        <td id="L2514" class="blob-num js-line-number" data-line-number="2514"></td>
        <td id="LC2514" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (<span class="pl-k">setq</span> e (<span class="pl-k">pop</span> re-list))</td>
      </tr>
      <tr>
        <td id="L2515" class="blob-num js-line-number" data-line-number="2515"></td>
        <td id="LC2515" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> m (<span class="pl-k">car</span> e) re (<span class="pl-k">nth</span> <span class="pl-c1">1</span> e) n (<span class="pl-k">nth</span> <span class="pl-c1">2</span> e)</td>
      </tr>
      <tr>
        <td id="L2516" class="blob-num js-line-number" data-line-number="2516"></td>
        <td id="LC2516" class="blob-code blob-code-inner js-file-line">	    block (<span class="pl-k">if</span> (<span class="pl-k">nth</span> <span class="pl-c1">3</span> e) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\n\n</span><span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2517" class="blob-num js-line-number" data-line-number="2517"></td>
        <td id="LC2517" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> off (<span class="pl-k">if</span> (<span class="pl-k">member</span> m &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span>$<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>$1<span class="pl-pds">&quot;</span></span>)) <span class="pl-c1">1</span> <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L2518" class="blob-num js-line-number" data-line-number="2518"></td>
        <td id="LC2518" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">when</span> (<span class="pl-k">and</span> (<span class="pl-k">member</span> m matchers) (<span class="pl-k">not</span> (<span class="pl-k">equal</span> m <span class="pl-s"><span class="pl-pds">&quot;</span>begin<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2519" class="blob-num js-line-number" data-line-number="2519"></td>
        <td id="LC2519" class="blob-code blob-code-inner js-file-line">	(goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2520" class="blob-num js-line-number" data-line-number="2520"></td>
        <td id="LC2520" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">while</span> (re-search-forward re <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2521" class="blob-num js-line-number" data-line-number="2521"></td>
        <td id="LC2521" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">setq</span> beg (<span class="pl-k">+</span> (match-beginning <span class="pl-c1">0</span>) off) end (<span class="pl-k">-</span> (match-end <span class="pl-c1">0</span>) <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L2522" class="blob-num js-line-number" data-line-number="2522"></td>
        <td id="LC2522" class="blob-code blob-code-inner js-file-line">	  (add-text-properties beg end &#39;(org-protected <span class="pl-c1">t</span> org-latex-math <span class="pl-c1">t</span>))))))</td>
      </tr>
      <tr>
        <td id="L2523" class="blob-num js-line-number" data-line-number="2523"></td>
        <td id="LC2523" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2524" class="blob-num js-line-number" data-line-number="2524"></td>
        <td id="LC2524" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Convert LaTeX to \LaTeX{} and TeX to \TeX{}</span></td>
      </tr>
      <tr>
        <td id="L2525" class="blob-num js-line-number" data-line-number="2525"></td>
        <td id="LC2525" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2526" class="blob-num js-line-number" data-line-number="2526"></td>
        <td id="LC2526" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((case-fold-search <span class="pl-c1">nil</span>))</td>
      </tr>
      <tr>
        <td id="L2527" class="blob-num js-line-number" data-line-number="2527"></td>
        <td id="LC2527" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;<span class="pl-cce">\\</span>(<span class="pl-cce">\\</span>(La<span class="pl-cce">\\</span>)?TeX<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2528" class="blob-num js-line-number" data-line-number="2528"></td>
        <td id="LC2528" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">unless</span> (<span class="pl-k">eq</span> (char-before (match-beginning <span class="pl-c1">1</span>)) <span class="pl-c1">?\\</span>)</td>
      </tr>
      <tr>
        <td id="L2529" class="blob-num js-line-number" data-line-number="2529"></td>
        <td id="LC2529" class="blob-code blob-code-inner js-file-line">	(org-if-unprotected-1</td>
      </tr>
      <tr>
        <td id="L2530" class="blob-num js-line-number" data-line-number="2530"></td>
        <td id="LC2530" class="blob-code blob-code-inner js-file-line">	 (replace-match (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L2531" class="blob-num js-line-number" data-line-number="2531"></td>
        <td id="LC2531" class="blob-code blob-code-inner js-file-line">			 (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span><span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L2532" class="blob-num js-line-number" data-line-number="2532"></td>
        <td id="LC2532" class="blob-code blob-code-inner js-file-line">				 <span class="pl-s"><span class="pl-pds">&quot;</span>{}<span class="pl-pds">&quot;</span></span>)) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))))</td>
      </tr>
      <tr>
        <td id="L2533" class="blob-num js-line-number" data-line-number="2533"></td>
        <td id="LC2533" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2534" class="blob-num js-line-number" data-line-number="2534"></td>
        <td id="LC2534" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Convert blockquotes</span></td>
      </tr>
      <tr>
        <td id="L2535" class="blob-num js-line-number" data-line-number="2535"></td>
        <td id="LC2535" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2536" class="blob-num js-line-number" data-line-number="2536"></td>
        <td id="LC2536" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>ORG-BLOCKQUOTE-START<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2537" class="blob-num js-line-number" data-line-number="2537"></td>
        <td id="LC2537" class="blob-code blob-code-inner js-file-line">    (org-replace-match-keep-properties <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{quote}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L2538" class="blob-num js-line-number" data-line-number="2538"></td>
        <td id="LC2538" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2539" class="blob-num js-line-number" data-line-number="2539"></td>
        <td id="LC2539" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>ORG-BLOCKQUOTE-END<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2540" class="blob-num js-line-number" data-line-number="2540"></td>
        <td id="LC2540" class="blob-code blob-code-inner js-file-line">    (org-replace-match-keep-properties <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{quote}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L2541" class="blob-num js-line-number" data-line-number="2541"></td>
        <td id="LC2541" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2542" class="blob-num js-line-number" data-line-number="2542"></td>
        <td id="LC2542" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Convert verse</span></td>
      </tr>
      <tr>
        <td id="L2543" class="blob-num js-line-number" data-line-number="2543"></td>
        <td id="LC2543" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2544" class="blob-num js-line-number" data-line-number="2544"></td>
        <td id="LC2544" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>ORG-VERSE-START<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2545" class="blob-num js-line-number" data-line-number="2545"></td>
        <td id="LC2545" class="blob-code blob-code-inner js-file-line">    (org-replace-match-keep-properties <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{verse}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2546" class="blob-num js-line-number" data-line-number="2546"></td>
        <td id="LC2546" class="blob-code blob-code-inner js-file-line">    (beginning-of-line <span class="pl-c1">2</span>)</td>
      </tr>
      <tr>
        <td id="L2547" class="blob-num js-line-number" data-line-number="2547"></td>
        <td id="LC2547" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (<span class="pl-k">and</span> (<span class="pl-k">not</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*ORG-VERSE-END.*<span class="pl-pds">&quot;</span></span>)) (<span class="pl-k">not</span> (eobp)))</td>
      </tr>
      <tr>
        <td id="L2548" class="blob-num js-line-number" data-line-number="2548"></td>
        <td id="LC2548" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">when</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>([ <span class="pl-cce">\t</span>]+<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>([^ <span class="pl-cce">\t\n</span>]<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2549" class="blob-num js-line-number" data-line-number="2549"></td>
        <td id="LC2549" class="blob-code blob-code-inner js-file-line">	(goto-char (match-end <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L2550" class="blob-num js-line-number" data-line-number="2550"></td>
        <td id="LC2550" class="blob-code blob-code-inner js-file-line">	(org-replace-match-keep-properties</td>
      </tr>
      <tr>
        <td id="L2551" class="blob-num js-line-number" data-line-number="2551"></td>
        <td id="LC2551" class="blob-code blob-code-inner js-file-line">	 (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L2552" class="blob-num js-line-number" data-line-number="2552"></td>
        <td id="LC2552" class="blob-code blob-code-inner js-file-line">	  (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hspace*{1cm}<span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">2</span>))) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2553" class="blob-num js-line-number" data-line-number="2553"></td>
        <td id="LC2553" class="blob-code blob-code-inner js-file-line">	(beginning-of-line <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L2554" class="blob-num js-line-number" data-line-number="2554"></td>
        <td id="LC2554" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*$<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2555" class="blob-num js-line-number" data-line-number="2555"></td>
        <td id="LC2555" class="blob-code blob-code-inner js-file-line">	  (insert (org-export-latex-protect-string <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>vspace*{1em}<span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2556" class="blob-num js-line-number" data-line-number="2556"></td>
        <td id="LC2556" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">unless</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>.*?[^ <span class="pl-cce">\t\n</span>].*?<span class="pl-cce">\\\\\\\\</span>[ <span class="pl-cce">\t</span>]*$<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2557" class="blob-num js-line-number" data-line-number="2557"></td>
        <td id="LC2557" class="blob-code blob-code-inner js-file-line">	  (end-of-line <span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L2558" class="blob-num js-line-number" data-line-number="2558"></td>
        <td id="LC2558" class="blob-code blob-code-inner js-file-line">	  (insert <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\</span><span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2559" class="blob-num js-line-number" data-line-number="2559"></td>
        <td id="LC2559" class="blob-code blob-code-inner js-file-line">      (beginning-of-line <span class="pl-c1">2</span>))</td>
      </tr>
      <tr>
        <td id="L2560" class="blob-num js-line-number" data-line-number="2560"></td>
        <td id="LC2560" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">and</span> (looking-at <span class="pl-s"><span class="pl-pds">&quot;</span>[ <span class="pl-cce">\t</span>]*ORG-VERSE-END.*<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2561" class="blob-num js-line-number" data-line-number="2561"></td>
        <td id="LC2561" class="blob-code blob-code-inner js-file-line">	 (org-replace-match-keep-properties <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{verse}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L2562" class="blob-num js-line-number" data-line-number="2562"></td>
        <td id="LC2562" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2563" class="blob-num js-line-number" data-line-number="2563"></td>
        <td id="LC2563" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Convert #+INDEX to LaTeX \\index.</span></td>
      </tr>
      <tr>
        <td id="L2564" class="blob-num js-line-number" data-line-number="2564"></td>
        <td id="LC2564" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2565" class="blob-num js-line-number" data-line-number="2565"></td>
        <td id="LC2565" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((case-fold-search <span class="pl-c1">t</span>) entry)</td>
      </tr>
      <tr>
        <td id="L2566" class="blob-num js-line-number" data-line-number="2566"></td>
        <td id="LC2566" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (re-search-forward</td>
      </tr>
      <tr>
        <td id="L2567" class="blob-num js-line-number" data-line-number="2567"></td>
        <td id="LC2567" class="blob-code blob-code-inner js-file-line">	    <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*#<span class="pl-cce">\\</span>+index:[ <span class="pl-cce">\t</span>]*<span class="pl-cce">\\</span>([^ <span class="pl-cce">\t\r\n</span>].*?<span class="pl-cce">\\</span>)[ <span class="pl-cce">\t</span>]*$<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2568" class="blob-num js-line-number" data-line-number="2568"></td>
        <td id="LC2568" class="blob-code blob-code-inner js-file-line">	    <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2569" class="blob-num js-line-number" data-line-number="2569"></td>
        <td id="LC2569" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> entry</td>
      </tr>
      <tr>
        <td id="L2570" class="blob-num js-line-number" data-line-number="2570"></td>
        <td id="LC2570" class="blob-code blob-code-inner js-file-line">	    (save-match-data</td>
      </tr>
      <tr>
        <td id="L2571" class="blob-num js-line-number" data-line-number="2571"></td>
        <td id="LC2571" class="blob-code blob-code-inner js-file-line">	      (org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L2572" class="blob-num js-line-number" data-line-number="2572"></td>
        <td id="LC2572" class="blob-code blob-code-inner js-file-line">	       (org-export-latex-fontify-headline (match-string <span class="pl-c1">1</span>)))))</td>
      </tr>
      <tr>
        <td id="L2573" class="blob-num js-line-number" data-line-number="2573"></td>
        <td id="LC2573" class="blob-code blob-code-inner js-file-line">      (replace-match (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>index{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> entry) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L2574" class="blob-num js-line-number" data-line-number="2574"></td>
        <td id="LC2574" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2575" class="blob-num js-line-number" data-line-number="2575"></td>
        <td id="LC2575" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Convert center</span></td>
      </tr>
      <tr>
        <td id="L2576" class="blob-num js-line-number" data-line-number="2576"></td>
        <td id="LC2576" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2577" class="blob-num js-line-number" data-line-number="2577"></td>
        <td id="LC2577" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>ORG-CENTER-START<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2578" class="blob-num js-line-number" data-line-number="2578"></td>
        <td id="LC2578" class="blob-code blob-code-inner js-file-line">    (org-replace-match-keep-properties <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{center}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L2579" class="blob-num js-line-number" data-line-number="2579"></td>
        <td id="LC2579" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2580" class="blob-num js-line-number" data-line-number="2580"></td>
        <td id="LC2580" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>ORG-CENTER-END<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2581" class="blob-num js-line-number" data-line-number="2581"></td>
        <td id="LC2581" class="blob-code blob-code-inner js-file-line">    (org-replace-match-keep-properties <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>end{center}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">t</span> <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L2582" class="blob-num js-line-number" data-line-number="2582"></td>
        <td id="LC2582" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2583" class="blob-num js-line-number" data-line-number="2583"></td>
        <td id="LC2583" class="blob-code blob-code-inner js-file-line">  (run-hooks <span class="pl-c1">&#39;org-export-latex-after-blockquotes-hook</span>)</td>
      </tr>
      <tr>
        <td id="L2584" class="blob-num js-line-number" data-line-number="2584"></td>
        <td id="LC2584" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2585" class="blob-num js-line-number" data-line-number="2585"></td>
        <td id="LC2585" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Convert horizontal rules</span></td>
      </tr>
      <tr>
        <td id="L2586" class="blob-num js-line-number" data-line-number="2586"></td>
        <td id="LC2586" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2587" class="blob-num js-line-number" data-line-number="2587"></td>
        <td id="LC2587" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>^[ <span class="pl-cce">\t</span>]*-<span class="pl-cce">\\</span>{5,<span class="pl-cce">\\</span>}[ <span class="pl-cce">\t</span>]*$<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2588" class="blob-num js-line-number" data-line-number="2588"></td>
        <td id="LC2588" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected</td>
      </tr>
      <tr>
        <td id="L2589" class="blob-num js-line-number" data-line-number="2589"></td>
        <td id="LC2589" class="blob-code blob-code-inner js-file-line">     (replace-match (org-export-latex-protect-string <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hrule<span class="pl-pds">&quot;</span></span>) <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L2590" class="blob-num js-line-number" data-line-number="2590"></td>
        <td id="LC2590" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2591" class="blob-num js-line-number" data-line-number="2591"></td>
        <td id="LC2591" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Protect LaTeX commands like \command[...]{...} or \command{...}</span></td>
      </tr>
      <tr>
        <td id="L2592" class="blob-num js-line-number" data-line-number="2592"></td>
        <td id="LC2592" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2593" class="blob-num js-line-number" data-line-number="2593"></td>
        <td id="LC2593" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((re (concat</td>
      </tr>
      <tr>
        <td id="L2594" class="blob-num js-line-number" data-line-number="2594"></td>
        <td id="LC2594" class="blob-code blob-code-inner js-file-line">	     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\\\</span>([a-zA-Z]+<span class="pl-cce">\\</span>*?<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2595" class="blob-num js-line-number" data-line-number="2595"></td>
        <td id="LC2595" class="blob-code blob-code-inner js-file-line">	     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(?:&lt;[^&lt;&gt;<span class="pl-cce">\n</span>]*&gt;<span class="pl-cce">\\</span>)*<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2596" class="blob-num js-line-number" data-line-number="2596"></td>
        <td id="LC2596" class="blob-code blob-code-inner js-file-line">	     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(?:<span class="pl-cce">\\</span>[[^][<span class="pl-cce">\n</span>]*?<span class="pl-cce">\\</span>]<span class="pl-cce">\\</span>)*<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2597" class="blob-num js-line-number" data-line-number="2597"></td>
        <td id="LC2597" class="blob-code blob-code-inner js-file-line">	     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(?:&lt;[^&lt;&gt;<span class="pl-cce">\n</span>]*&gt;<span class="pl-cce">\\</span>)*<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2598" class="blob-num js-line-number" data-line-number="2598"></td>
        <td id="LC2598" class="blob-code blob-code-inner js-file-line">	     <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-pds">&quot;</span></span> (org-create-multibrace-regexp <span class="pl-s"><span class="pl-pds">&quot;</span>{<span class="pl-pds">&quot;</span></span> <span class="pl-s"><span class="pl-pds">&quot;</span>}<span class="pl-pds">&quot;</span></span> <span class="pl-c1">3</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>{1,3<span class="pl-cce">\\</span>}<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2599" class="blob-num js-line-number" data-line-number="2599"></td>
        <td id="LC2599" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">while</span> (re-search-forward re <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2600" class="blob-num js-line-number" data-line-number="2600"></td>
        <td id="LC2600" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">unless</span> (<span class="pl-k">or</span></td>
      </tr>
      <tr>
        <td id="L2601" class="blob-num js-line-number" data-line-number="2601"></td>
        <td id="LC2601" class="blob-code blob-code-inner js-file-line">	       <span class="pl-c">;; Check for comment line.</span></td>
      </tr>
      <tr>
        <td id="L2602" class="blob-num js-line-number" data-line-number="2602"></td>
        <td id="LC2602" class="blob-code blob-code-inner js-file-line">	       (save-excursion (goto-char (match-beginning <span class="pl-c1">0</span>))</td>
      </tr>
      <tr>
        <td id="L2603" class="blob-num js-line-number" data-line-number="2603"></td>
        <td id="LC2603" class="blob-code blob-code-inner js-file-line">			       (org-in-indented-comment-line))</td>
      </tr>
      <tr>
        <td id="L2604" class="blob-num js-line-number" data-line-number="2604"></td>
        <td id="LC2604" class="blob-code blob-code-inner js-file-line">	       <span class="pl-c">;; Check if this is a defined entity, so that is may</span></td>
      </tr>
      <tr>
        <td id="L2605" class="blob-num js-line-number" data-line-number="2605"></td>
        <td id="LC2605" class="blob-code blob-code-inner js-file-line">	       <span class="pl-c">;; need conversion.</span></td>
      </tr>
      <tr>
        <td id="L2606" class="blob-num js-line-number" data-line-number="2606"></td>
        <td id="LC2606" class="blob-code blob-code-inner js-file-line">	       (org-entity-get (match-string <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L2607" class="blob-num js-line-number" data-line-number="2607"></td>
        <td id="LC2607" class="blob-code blob-code-inner js-file-line">	       <span class="pl-c">;; Do not protect interior of footnotes.  Those have</span></td>
      </tr>
      <tr>
        <td id="L2608" class="blob-num js-line-number" data-line-number="2608"></td>
        <td id="LC2608" class="blob-code blob-code-inner js-file-line">	       <span class="pl-c">;; already been taken care of earlier in the function.</span></td>
      </tr>
      <tr>
        <td id="L2609" class="blob-num js-line-number" data-line-number="2609"></td>
        <td id="LC2609" class="blob-code blob-code-inner js-file-line">	       <span class="pl-c">;; Yet, keep looking inside them for more commands.</span></td>
      </tr>
      <tr>
        <td id="L2610" class="blob-num js-line-number" data-line-number="2610"></td>
        <td id="LC2610" class="blob-code blob-code-inner js-file-line">	       (<span class="pl-k">and</span> (<span class="pl-k">equal</span> (match-string <span class="pl-c1">1</span>) <span class="pl-s"><span class="pl-pds">&quot;</span>footnote<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2611" class="blob-num js-line-number" data-line-number="2611"></td>
        <td id="LC2611" class="blob-code blob-code-inner js-file-line">		    (goto-char (match-end <span class="pl-c1">1</span>))))</td>
      </tr>
      <tr>
        <td id="L2612" class="blob-num js-line-number" data-line-number="2612"></td>
        <td id="LC2612" class="blob-code blob-code-inner js-file-line">	(add-text-properties (match-beginning <span class="pl-c1">0</span>) (match-end <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L2613" class="blob-num js-line-number" data-line-number="2613"></td>
        <td id="LC2613" class="blob-code blob-code-inner js-file-line">			     &#39;(org-protected <span class="pl-c1">t</span>)))))</td>
      </tr>
      <tr>
        <td id="L2614" class="blob-num js-line-number" data-line-number="2614"></td>
        <td id="LC2614" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2615" class="blob-num js-line-number" data-line-number="2615"></td>
        <td id="LC2615" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Special case for \nbsp</span></td>
      </tr>
      <tr>
        <td id="L2616" class="blob-num js-line-number" data-line-number="2616"></td>
        <td id="LC2616" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2617" class="blob-num js-line-number" data-line-number="2617"></td>
        <td id="LC2617" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\</span>nbsp<span class="pl-cce">\\</span>({}<span class="pl-cce">\\</span>|<span class="pl-cce">\\</span>&gt;<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2618" class="blob-num js-line-number" data-line-number="2618"></td>
        <td id="LC2618" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected</td>
      </tr>
      <tr>
        <td id="L2619" class="blob-num js-line-number" data-line-number="2619"></td>
        <td id="LC2619" class="blob-code blob-code-inner js-file-line">     (replace-match (org-export-latex-protect-string <span class="pl-s"><span class="pl-pds">&quot;</span>~<span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L2620" class="blob-num js-line-number" data-line-number="2620"></td>
        <td id="LC2620" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2621" class="blob-num js-line-number" data-line-number="2621"></td>
        <td id="LC2621" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Protect LaTeX entities</span></td>
      </tr>
      <tr>
        <td id="L2622" class="blob-num js-line-number" data-line-number="2622"></td>
        <td id="LC2622" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2623" class="blob-num js-line-number" data-line-number="2623"></td>
        <td id="LC2623" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward org-latex-entities-regexp <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2624" class="blob-num js-line-number" data-line-number="2624"></td>
        <td id="LC2624" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected</td>
      </tr>
      <tr>
        <td id="L2625" class="blob-num js-line-number" data-line-number="2625"></td>
        <td id="LC2625" class="blob-code blob-code-inner js-file-line">     (add-text-properties (match-beginning <span class="pl-c1">0</span>) (match-end <span class="pl-c1">0</span>)</td>
      </tr>
      <tr>
        <td id="L2626" class="blob-num js-line-number" data-line-number="2626"></td>
        <td id="LC2626" class="blob-code blob-code-inner js-file-line">			  &#39;(org-protected <span class="pl-c1">t</span>))))</td>
      </tr>
      <tr>
        <td id="L2627" class="blob-num js-line-number" data-line-number="2627"></td>
        <td id="LC2627" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2628" class="blob-num js-line-number" data-line-number="2628"></td>
        <td id="LC2628" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Replace radio links</span></td>
      </tr>
      <tr>
        <td id="L2629" class="blob-num js-line-number" data-line-number="2629"></td>
        <td id="LC2629" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2630" class="blob-num js-line-number" data-line-number="2630"></td>
        <td id="LC2630" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward</td>
      </tr>
      <tr>
        <td id="L2631" class="blob-num js-line-number" data-line-number="2631"></td>
        <td id="LC2631" class="blob-code blob-code-inner js-file-line">	  (concat <span class="pl-s"><span class="pl-pds">&quot;</span>&lt;&lt;&lt;?<span class="pl-pds">&quot;</span></span> org-export-latex-all-targets-re</td>
      </tr>
      <tr>
        <td id="L2632" class="blob-num js-line-number" data-line-number="2632"></td>
        <td id="LC2632" class="blob-code blob-code-inner js-file-line">		  <span class="pl-s"><span class="pl-pds">&quot;</span>&gt;&gt;&gt;?<span class="pl-cce">\\</span>((INVISIBLE)<span class="pl-cce">\\</span>)?<span class="pl-pds">&quot;</span></span>) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2633" class="blob-num js-line-number" data-line-number="2633"></td>
        <td id="LC2633" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected-at (<span class="pl-k">+</span> (match-beginning <span class="pl-c1">0</span>) <span class="pl-c1">2</span>)</td>
      </tr>
      <tr>
        <td id="L2634" class="blob-num js-line-number" data-line-number="2634"></td>
        <td id="LC2634" class="blob-code blob-code-inner js-file-line">      (replace-match</td>
      </tr>
      <tr>
        <td id="L2635" class="blob-num js-line-number" data-line-number="2635"></td>
        <td id="LC2635" class="blob-code blob-code-inner js-file-line">       (concat</td>
      </tr>
      <tr>
        <td id="L2636" class="blob-num js-line-number" data-line-number="2636"></td>
        <td id="LC2636" class="blob-code blob-code-inner js-file-line">	(org-export-latex-protect-string</td>
      </tr>
      <tr>
        <td id="L2637" class="blob-num js-line-number" data-line-number="2637"></td>
        <td id="LC2637" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-c1">format</span> <span class="pl-pds">&quot;</span><span class="pl-s"><span class="pl-cce">\\</span>label{<span class="pl-c1">%s</span>}</span><span class="pl-pds">&quot;</span> (save-match-data (org-solidify-link-text</td>
      </tr>
      <tr>
        <td id="L2638" class="blob-num js-line-number" data-line-number="2638"></td>
        <td id="LC2638" class="blob-code blob-code-inner js-file-line">						 (match-string <span class="pl-c1">1</span>)))))</td>
      </tr>
      <tr>
        <td id="L2639" class="blob-num js-line-number" data-line-number="2639"></td>
        <td id="LC2639" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">if</span> (match-string <span class="pl-c1">2</span>) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span> (match-string <span class="pl-c1">1</span>)))</td>
      </tr>
      <tr>
        <td id="L2640" class="blob-num js-line-number" data-line-number="2640"></td>
        <td id="LC2640" class="blob-code blob-code-inner js-file-line">       <span class="pl-c1">t</span> <span class="pl-c1">t</span>)))</td>
      </tr>
      <tr>
        <td id="L2641" class="blob-num js-line-number" data-line-number="2641"></td>
        <td id="LC2641" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2642" class="blob-num js-line-number" data-line-number="2642"></td>
        <td id="LC2642" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Delete @&lt;...&gt; constructs</span></td>
      </tr>
      <tr>
        <td id="L2643" class="blob-num js-line-number" data-line-number="2643"></td>
        <td id="LC2643" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; Thanks to Daniel Clemente for this regexp</span></td>
      </tr>
      <tr>
        <td id="L2644" class="blob-num js-line-number" data-line-number="2644"></td>
        <td id="LC2644" class="blob-code blob-code-inner js-file-line">  (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2645" class="blob-num js-line-number" data-line-number="2645"></td>
        <td id="LC2645" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span>@&lt;<span class="pl-cce">\\</span>(?:[^<span class="pl-cce">\&quot;\n</span>]<span class="pl-cce">\\</span>|<span class="pl-cce">\&quot;</span>.*<span class="pl-cce">\&quot;\\</span>)*?&gt;<span class="pl-pds">&quot;</span></span> <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2646" class="blob-num js-line-number" data-line-number="2646"></td>
        <td id="LC2646" class="blob-code blob-code-inner js-file-line">    (org-if-unprotected</td>
      </tr>
      <tr>
        <td id="L2647" class="blob-num js-line-number" data-line-number="2647"></td>
        <td id="LC2647" class="blob-code blob-code-inner js-file-line">     (replace-match <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pds">&quot;</span></span>))))</td>
      </tr>
      <tr>
        <td id="L2648" class="blob-num js-line-number" data-line-number="2648"></td>
        <td id="LC2648" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2649" class="blob-num js-line-number" data-line-number="2649"></td>
        <td id="LC2649" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-fix-inputenc</span> ()</td>
      </tr>
      <tr>
        <td id="L2650" class="blob-num js-line-number" data-line-number="2650"></td>
        <td id="LC2650" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Set the coding system in inputenc to what the buffer is.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2651" class="blob-num js-line-number" data-line-number="2651"></td>
        <td id="LC2651" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let*</span> ((cs buffer-file-coding-system)</td>
      </tr>
      <tr>
        <td id="L2652" class="blob-num js-line-number" data-line-number="2652"></td>
        <td id="LC2652" class="blob-code blob-code-inner js-file-line">	 (opt (<span class="pl-k">or</span> (ignore-errors (latexenc-coding-system-to-inputenc cs))</td>
      </tr>
      <tr>
        <td id="L2653" class="blob-num js-line-number" data-line-number="2653"></td>
        <td id="LC2653" class="blob-code blob-code-inner js-file-line">		  <span class="pl-s"><span class="pl-pds">&quot;</span>utf8<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2654" class="blob-num js-line-number" data-line-number="2654"></td>
        <td id="LC2654" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">when</span> opt</td>
      </tr>
      <tr>
        <td id="L2655" class="blob-num js-line-number" data-line-number="2655"></td>
        <td id="LC2655" class="blob-code blob-code-inner js-file-line">      <span class="pl-c">;; Translate if that is requested</span></td>
      </tr>
      <tr>
        <td id="L2656" class="blob-num js-line-number" data-line-number="2656"></td>
        <td id="LC2656" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">setq</span> opt (<span class="pl-k">or</span> (<span class="pl-k">cdr</span> (<span class="pl-k">assoc</span> opt org-export-latex-inputenc-alist)) opt))</td>
      </tr>
      <tr>
        <td id="L2657" class="blob-num js-line-number" data-line-number="2657"></td>
        <td id="LC2657" class="blob-code blob-code-inner js-file-line">      <span class="pl-c">;; find the \usepackage statement and replace the option</span></td>
      </tr>
      <tr>
        <td id="L2658" class="blob-num js-line-number" data-line-number="2658"></td>
        <td id="LC2658" class="blob-code blob-code-inner js-file-line">      (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2659" class="blob-num js-line-number" data-line-number="2659"></td>
        <td id="LC2659" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">while</span> (re-search-forward <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\</span>usepackage<span class="pl-cce">\\</span>[<span class="pl-cce">\\</span>(AUTO<span class="pl-cce">\\</span>)<span class="pl-cce">\\</span>]{inputenc}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2660" class="blob-num js-line-number" data-line-number="2660"></td>
        <td id="LC2660" class="blob-code blob-code-inner js-file-line">				<span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2661" class="blob-num js-line-number" data-line-number="2661"></td>
        <td id="LC2661" class="blob-code blob-code-inner js-file-line">	(goto-char (match-beginning <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L2662" class="blob-num js-line-number" data-line-number="2662"></td>
        <td id="LC2662" class="blob-code blob-code-inner js-file-line">	(delete-region (match-beginning <span class="pl-c1">1</span>) (match-end <span class="pl-c1">1</span>))</td>
      </tr>
      <tr>
        <td id="L2663" class="blob-num js-line-number" data-line-number="2663"></td>
        <td id="LC2663" class="blob-code blob-code-inner js-file-line">	(insert opt))</td>
      </tr>
      <tr>
        <td id="L2664" class="blob-num js-line-number" data-line-number="2664"></td>
        <td id="LC2664" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">and</span> buffer-file-name</td>
      </tr>
      <tr>
        <td id="L2665" class="blob-num js-line-number" data-line-number="2665"></td>
        <td id="LC2665" class="blob-code blob-code-inner js-file-line">	   (save-buffer)))))</td>
      </tr>
      <tr>
        <td id="L2666" class="blob-num js-line-number" data-line-number="2666"></td>
        <td id="LC2666" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2667" class="blob-num js-line-number" data-line-number="2667"></td>
        <td id="LC2667" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; List handling:</span></td>
      </tr>
      <tr>
        <td id="L2668" class="blob-num js-line-number" data-line-number="2668"></td>
        <td id="LC2668" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2669" class="blob-num js-line-number" data-line-number="2669"></td>
        <td id="LC2669" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defun</span> <span class="pl-e">org-export-latex-lists</span> ()</td>
      </tr>
      <tr>
        <td id="L2670" class="blob-num js-line-number" data-line-number="2670"></td>
        <td id="LC2670" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">&quot;</span>Convert plain text lists in current buffer into LaTeX lists.<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2671" class="blob-num js-line-number" data-line-number="2671"></td>
        <td id="LC2671" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; `org-list-end-re&#39; output has changed since preprocess from</span></td>
      </tr>
      <tr>
        <td id="L2672" class="blob-num js-line-number" data-line-number="2672"></td>
        <td id="LC2672" class="blob-code blob-code-inner js-file-line">  <span class="pl-c">;; org-exp.el. Make sure it is taken into account.</span></td>
      </tr>
      <tr>
        <td id="L2673" class="blob-num js-line-number" data-line-number="2673"></td>
        <td id="LC2673" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> ((org-list-end-re <span class="pl-s"><span class="pl-pds">&quot;</span>^ORG-LIST-END-MARKER<span class="pl-cce">\n</span><span class="pl-pds">&quot;</span></span>))</td>
      </tr>
      <tr>
        <td id="L2674" class="blob-num js-line-number" data-line-number="2674"></td>
        <td id="LC2674" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">mapc</span></td>
      </tr>
      <tr>
        <td id="L2675" class="blob-num js-line-number" data-line-number="2675"></td>
        <td id="LC2675" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">lambda</span> (<span class="pl-v">e</span>)</td>
      </tr>
      <tr>
        <td id="L2676" class="blob-num js-line-number" data-line-number="2676"></td>
        <td id="LC2676" class="blob-code blob-code-inner js-file-line">       <span class="pl-c">;; For each type of context allowed for list export (E), find</span></td>
      </tr>
      <tr>
        <td id="L2677" class="blob-num js-line-number" data-line-number="2677"></td>
        <td id="LC2677" class="blob-code blob-code-inner js-file-line">       <span class="pl-c">;; every list, parse it, delete it and insert resulting</span></td>
      </tr>
      <tr>
        <td id="L2678" class="blob-num js-line-number" data-line-number="2678"></td>
        <td id="LC2678" class="blob-code blob-code-inner js-file-line">       <span class="pl-c">;; conversion to latex (RES), while keeping the same</span></td>
      </tr>
      <tr>
        <td id="L2679" class="blob-num js-line-number" data-line-number="2679"></td>
        <td id="LC2679" class="blob-code blob-code-inner js-file-line">       <span class="pl-c">;; `original-indentation&#39; property.</span></td>
      </tr>
      <tr>
        <td id="L2680" class="blob-num js-line-number" data-line-number="2680"></td>
        <td id="LC2680" class="blob-code blob-code-inner js-file-line">       (<span class="pl-k">let</span> (res)</td>
      </tr>
      <tr>
        <td id="L2681" class="blob-num js-line-number" data-line-number="2681"></td>
        <td id="LC2681" class="blob-code blob-code-inner js-file-line">	 (goto-char (point-min))</td>
      </tr>
      <tr>
        <td id="L2682" class="blob-num js-line-number" data-line-number="2682"></td>
        <td id="LC2682" class="blob-code blob-code-inner js-file-line">	 (<span class="pl-k">while</span> (re-search-forward (org-item-beginning-re) <span class="pl-c1">nil</span> <span class="pl-c1">t</span>)</td>
      </tr>
      <tr>
        <td id="L2683" class="blob-num js-line-number" data-line-number="2683"></td>
        <td id="LC2683" class="blob-code blob-code-inner js-file-line">	   (<span class="pl-k">when</span> (<span class="pl-k">and</span> (<span class="pl-k">eq</span> (get-text-property (point) <span class="pl-c1">&#39;list-context</span>) e)</td>
      </tr>
      <tr>
        <td id="L2684" class="blob-num js-line-number" data-line-number="2684"></td>
        <td id="LC2684" class="blob-code blob-code-inner js-file-line">		      (<span class="pl-k">not</span> (get-text-property (point) <span class="pl-c1">&#39;org-example</span>)))</td>
      </tr>
      <tr>
        <td id="L2685" class="blob-num js-line-number" data-line-number="2685"></td>
        <td id="LC2685" class="blob-code blob-code-inner js-file-line">	     (beginning-of-line)</td>
      </tr>
      <tr>
        <td id="L2686" class="blob-num js-line-number" data-line-number="2686"></td>
        <td id="LC2686" class="blob-code blob-code-inner js-file-line">	     (<span class="pl-k">setq</span> res</td>
      </tr>
      <tr>
        <td id="L2687" class="blob-num js-line-number" data-line-number="2687"></td>
        <td id="LC2687" class="blob-code blob-code-inner js-file-line">		   (org-list-to-latex</td>
      </tr>
      <tr>
        <td id="L2688" class="blob-num js-line-number" data-line-number="2688"></td>
        <td id="LC2688" class="blob-code blob-code-inner js-file-line">		    <span class="pl-c">;; Narrowing is needed because we&#39;re converting</span></td>
      </tr>
      <tr>
        <td id="L2689" class="blob-num js-line-number" data-line-number="2689"></td>
        <td id="LC2689" class="blob-code blob-code-inner js-file-line">		    <span class="pl-c">;; from inner functions to outer ones.</span></td>
      </tr>
      <tr>
        <td id="L2690" class="blob-num js-line-number" data-line-number="2690"></td>
        <td id="LC2690" class="blob-code blob-code-inner js-file-line">		    (save-restriction</td>
      </tr>
      <tr>
        <td id="L2691" class="blob-num js-line-number" data-line-number="2691"></td>
        <td id="LC2691" class="blob-code blob-code-inner js-file-line">		      (narrow-to-region (point) (point-max))</td>
      </tr>
      <tr>
        <td id="L2692" class="blob-num js-line-number" data-line-number="2692"></td>
        <td id="LC2692" class="blob-code blob-code-inner js-file-line">		      (org-list-parse-list <span class="pl-c1">t</span>))</td>
      </tr>
      <tr>
        <td id="L2693" class="blob-num js-line-number" data-line-number="2693"></td>
        <td id="LC2693" class="blob-code blob-code-inner js-file-line">		    org-export-latex-list-parameters))</td>
      </tr>
      <tr>
        <td id="L2694" class="blob-num js-line-number" data-line-number="2694"></td>
        <td id="LC2694" class="blob-code blob-code-inner js-file-line">	     <span class="pl-c">;; Extend previous value of original-indentation to the</span></td>
      </tr>
      <tr>
        <td id="L2695" class="blob-num js-line-number" data-line-number="2695"></td>
        <td id="LC2695" class="blob-code blob-code-inner js-file-line">	     <span class="pl-c">;; whole string</span></td>
      </tr>
      <tr>
        <td id="L2696" class="blob-num js-line-number" data-line-number="2696"></td>
        <td id="LC2696" class="blob-code blob-code-inner js-file-line">	     (insert (org-add-props res <span class="pl-c1">nil</span> <span class="pl-c1">&#39;original-indentation</span></td>
      </tr>
      <tr>
        <td id="L2697" class="blob-num js-line-number" data-line-number="2697"></td>
        <td id="LC2697" class="blob-code blob-code-inner js-file-line">				    (org-find-text-property-in-string</td>
      </tr>
      <tr>
        <td id="L2698" class="blob-num js-line-number" data-line-number="2698"></td>
        <td id="LC2698" class="blob-code blob-code-inner js-file-line">				     <span class="pl-c1">&#39;original-indentation</span> res)))))))</td>
      </tr>
      <tr>
        <td id="L2699" class="blob-num js-line-number" data-line-number="2699"></td>
        <td id="LC2699" class="blob-code blob-code-inner js-file-line">     <span class="pl-c">;; List of allowed contexts for export, and the default one.</span></td>
      </tr>
      <tr>
        <td id="L2700" class="blob-num js-line-number" data-line-number="2700"></td>
        <td id="LC2700" class="blob-code blob-code-inner js-file-line">     (<span class="pl-k">append</span> org-list-export-context &#39;(<span class="pl-c1">nil</span>)))))</td>
      </tr>
      <tr>
        <td id="L2701" class="blob-num js-line-number" data-line-number="2701"></td>
        <td id="LC2701" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2702" class="blob-num js-line-number" data-line-number="2702"></td>
        <td id="LC2702" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defconst</span> <span class="pl-en">org-latex-entities</span></td>
      </tr>
      <tr>
        <td id="L2703" class="blob-num js-line-number" data-line-number="2703"></td>
        <td id="LC2703" class="blob-code blob-code-inner js-file-line"> &#39;(<span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>!<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2704" class="blob-num js-line-number" data-line-number="2704"></td>
        <td id="LC2704" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&#39;<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2705" class="blob-num js-line-number" data-line-number="2705"></td>
        <td id="LC2705" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>+<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2706" class="blob-num js-line-number" data-line-number="2706"></td>
        <td id="LC2706" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>,<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2707" class="blob-num js-line-number" data-line-number="2707"></td>
        <td id="LC2707" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>-<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2708" class="blob-num js-line-number" data-line-number="2708"></td>
        <td id="LC2708" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>:<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2709" class="blob-num js-line-number" data-line-number="2709"></td>
        <td id="LC2709" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>;<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2710" class="blob-num js-line-number" data-line-number="2710"></td>
        <td id="LC2710" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&lt;<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2711" class="blob-num js-line-number" data-line-number="2711"></td>
        <td id="LC2711" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>=<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2712" class="blob-num js-line-number" data-line-number="2712"></td>
        <td id="LC2712" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&gt;<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2713" class="blob-num js-line-number" data-line-number="2713"></td>
        <td id="LC2713" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>Huge<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2714" class="blob-num js-line-number" data-line-number="2714"></td>
        <td id="LC2714" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>LARGE<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2715" class="blob-num js-line-number" data-line-number="2715"></td>
        <td id="LC2715" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>Large<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2716" class="blob-num js-line-number" data-line-number="2716"></td>
        <td id="LC2716" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>Styles<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2717" class="blob-num js-line-number" data-line-number="2717"></td>
        <td id="LC2717" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\\</span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2718" class="blob-num js-line-number" data-line-number="2718"></td>
        <td id="LC2718" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>`<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2719" class="blob-num js-line-number" data-line-number="2719"></td>
        <td id="LC2719" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\\&quot;</span><span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2720" class="blob-num js-line-number" data-line-number="2720"></td>
        <td id="LC2720" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>addcontentsline<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2721" class="blob-num js-line-number" data-line-number="2721"></td>
        <td id="LC2721" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>address<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2722" class="blob-num js-line-number" data-line-number="2722"></td>
        <td id="LC2722" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>addtocontents<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2723" class="blob-num js-line-number" data-line-number="2723"></td>
        <td id="LC2723" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>addtocounter<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2724" class="blob-num js-line-number" data-line-number="2724"></td>
        <td id="LC2724" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>addtolength<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2725" class="blob-num js-line-number" data-line-number="2725"></td>
        <td id="LC2725" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>addvspace<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2726" class="blob-num js-line-number" data-line-number="2726"></td>
        <td id="LC2726" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>alph<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2727" class="blob-num js-line-number" data-line-number="2727"></td>
        <td id="LC2727" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>appendix<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2728" class="blob-num js-line-number" data-line-number="2728"></td>
        <td id="LC2728" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>arabic<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2729" class="blob-num js-line-number" data-line-number="2729"></td>
        <td id="LC2729" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>author<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2730" class="blob-num js-line-number" data-line-number="2730"></td>
        <td id="LC2730" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{array}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2731" class="blob-num js-line-number" data-line-number="2731"></td>
        <td id="LC2731" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{center}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2732" class="blob-num js-line-number" data-line-number="2732"></td>
        <td id="LC2732" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{description}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2733" class="blob-num js-line-number" data-line-number="2733"></td>
        <td id="LC2733" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{enumerate}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2734" class="blob-num js-line-number" data-line-number="2734"></td>
        <td id="LC2734" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{eqnarray}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2735" class="blob-num js-line-number" data-line-number="2735"></td>
        <td id="LC2735" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{equation}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2736" class="blob-num js-line-number" data-line-number="2736"></td>
        <td id="LC2736" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{figure}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2737" class="blob-num js-line-number" data-line-number="2737"></td>
        <td id="LC2737" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{flushleft}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2738" class="blob-num js-line-number" data-line-number="2738"></td>
        <td id="LC2738" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{flushright}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2739" class="blob-num js-line-number" data-line-number="2739"></td>
        <td id="LC2739" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{itemize}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2740" class="blob-num js-line-number" data-line-number="2740"></td>
        <td id="LC2740" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{list}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2741" class="blob-num js-line-number" data-line-number="2741"></td>
        <td id="LC2741" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{minipage}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2742" class="blob-num js-line-number" data-line-number="2742"></td>
        <td id="LC2742" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{picture}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2743" class="blob-num js-line-number" data-line-number="2743"></td>
        <td id="LC2743" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{quotation}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2744" class="blob-num js-line-number" data-line-number="2744"></td>
        <td id="LC2744" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{quote}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2745" class="blob-num js-line-number" data-line-number="2745"></td>
        <td id="LC2745" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{tabbing}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2746" class="blob-num js-line-number" data-line-number="2746"></td>
        <td id="LC2746" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{table}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2747" class="blob-num js-line-number" data-line-number="2747"></td>
        <td id="LC2747" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{tabular}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2748" class="blob-num js-line-number" data-line-number="2748"></td>
        <td id="LC2748" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{thebibliography}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2749" class="blob-num js-line-number" data-line-number="2749"></td>
        <td id="LC2749" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{theorem}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2750" class="blob-num js-line-number" data-line-number="2750"></td>
        <td id="LC2750" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{titlepage}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2751" class="blob-num js-line-number" data-line-number="2751"></td>
        <td id="LC2751" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{verbatim}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2752" class="blob-num js-line-number" data-line-number="2752"></td>
        <td id="LC2752" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>begin{verse}<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2753" class="blob-num js-line-number" data-line-number="2753"></td>
        <td id="LC2753" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>bf<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2754" class="blob-num js-line-number" data-line-number="2754"></td>
        <td id="LC2754" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>bf<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2755" class="blob-num js-line-number" data-line-number="2755"></td>
        <td id="LC2755" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>bibitem<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2756" class="blob-num js-line-number" data-line-number="2756"></td>
        <td id="LC2756" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>bigskip<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2757" class="blob-num js-line-number" data-line-number="2757"></td>
        <td id="LC2757" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>cdots<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2758" class="blob-num js-line-number" data-line-number="2758"></td>
        <td id="LC2758" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>centering<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2759" class="blob-num js-line-number" data-line-number="2759"></td>
        <td id="LC2759" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>circle<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2760" class="blob-num js-line-number" data-line-number="2760"></td>
        <td id="LC2760" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>cite<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2761" class="blob-num js-line-number" data-line-number="2761"></td>
        <td id="LC2761" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>cleardoublepage<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2762" class="blob-num js-line-number" data-line-number="2762"></td>
        <td id="LC2762" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>clearpage<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2763" class="blob-num js-line-number" data-line-number="2763"></td>
        <td id="LC2763" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>cline<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2764" class="blob-num js-line-number" data-line-number="2764"></td>
        <td id="LC2764" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>closing<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2765" class="blob-num js-line-number" data-line-number="2765"></td>
        <td id="LC2765" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>dashbox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2766" class="blob-num js-line-number" data-line-number="2766"></td>
        <td id="LC2766" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>date<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2767" class="blob-num js-line-number" data-line-number="2767"></td>
        <td id="LC2767" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>ddots<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2768" class="blob-num js-line-number" data-line-number="2768"></td>
        <td id="LC2768" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>dotfill<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2769" class="blob-num js-line-number" data-line-number="2769"></td>
        <td id="LC2769" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>em<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2770" class="blob-num js-line-number" data-line-number="2770"></td>
        <td id="LC2770" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>fbox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2771" class="blob-num js-line-number" data-line-number="2771"></td>
        <td id="LC2771" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>flushbottom<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2772" class="blob-num js-line-number" data-line-number="2772"></td>
        <td id="LC2772" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>fnsymbol<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2773" class="blob-num js-line-number" data-line-number="2773"></td>
        <td id="LC2773" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>footnote<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2774" class="blob-num js-line-number" data-line-number="2774"></td>
        <td id="LC2774" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>footnotemark<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2775" class="blob-num js-line-number" data-line-number="2775"></td>
        <td id="LC2775" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>footnotesize<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2776" class="blob-num js-line-number" data-line-number="2776"></td>
        <td id="LC2776" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>footnotetext<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2777" class="blob-num js-line-number" data-line-number="2777"></td>
        <td id="LC2777" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>frac<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2778" class="blob-num js-line-number" data-line-number="2778"></td>
        <td id="LC2778" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>frame<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2779" class="blob-num js-line-number" data-line-number="2779"></td>
        <td id="LC2779" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>framebox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2780" class="blob-num js-line-number" data-line-number="2780"></td>
        <td id="LC2780" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hfill<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2781" class="blob-num js-line-number" data-line-number="2781"></td>
        <td id="LC2781" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hline<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2782" class="blob-num js-line-number" data-line-number="2782"></td>
        <td id="LC2782" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hrulespace<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2783" class="blob-num js-line-number" data-line-number="2783"></td>
        <td id="LC2783" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hspace<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2784" class="blob-num js-line-number" data-line-number="2784"></td>
        <td id="LC2784" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>huge<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2785" class="blob-num js-line-number" data-line-number="2785"></td>
        <td id="LC2785" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>hyphenation<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2786" class="blob-num js-line-number" data-line-number="2786"></td>
        <td id="LC2786" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>include<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2787" class="blob-num js-line-number" data-line-number="2787"></td>
        <td id="LC2787" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>includeonly<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2788" class="blob-num js-line-number" data-line-number="2788"></td>
        <td id="LC2788" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>indent<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2789" class="blob-num js-line-number" data-line-number="2789"></td>
        <td id="LC2789" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>input<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2790" class="blob-num js-line-number" data-line-number="2790"></td>
        <td id="LC2790" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>it<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2791" class="blob-num js-line-number" data-line-number="2791"></td>
        <td id="LC2791" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>kill<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2792" class="blob-num js-line-number" data-line-number="2792"></td>
        <td id="LC2792" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>label<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2793" class="blob-num js-line-number" data-line-number="2793"></td>
        <td id="LC2793" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>large<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2794" class="blob-num js-line-number" data-line-number="2794"></td>
        <td id="LC2794" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>ldots<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2795" class="blob-num js-line-number" data-line-number="2795"></td>
        <td id="LC2795" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>line<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2796" class="blob-num js-line-number" data-line-number="2796"></td>
        <td id="LC2796" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>linebreak<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2797" class="blob-num js-line-number" data-line-number="2797"></td>
        <td id="LC2797" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>linethickness<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2798" class="blob-num js-line-number" data-line-number="2798"></td>
        <td id="LC2798" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>listoffigures<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2799" class="blob-num js-line-number" data-line-number="2799"></td>
        <td id="LC2799" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>listoftables<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2800" class="blob-num js-line-number" data-line-number="2800"></td>
        <td id="LC2800" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>location<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2801" class="blob-num js-line-number" data-line-number="2801"></td>
        <td id="LC2801" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>makebox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2802" class="blob-num js-line-number" data-line-number="2802"></td>
        <td id="LC2802" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>maketitle<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2803" class="blob-num js-line-number" data-line-number="2803"></td>
        <td id="LC2803" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>mark<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2804" class="blob-num js-line-number" data-line-number="2804"></td>
        <td id="LC2804" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>mbox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2805" class="blob-num js-line-number" data-line-number="2805"></td>
        <td id="LC2805" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>medskip<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2806" class="blob-num js-line-number" data-line-number="2806"></td>
        <td id="LC2806" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>multicolumn<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2807" class="blob-num js-line-number" data-line-number="2807"></td>
        <td id="LC2807" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>multiput<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2808" class="blob-num js-line-number" data-line-number="2808"></td>
        <td id="LC2808" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newcommand<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2809" class="blob-num js-line-number" data-line-number="2809"></td>
        <td id="LC2809" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newcounter<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2810" class="blob-num js-line-number" data-line-number="2810"></td>
        <td id="LC2810" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newenvironment<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2811" class="blob-num js-line-number" data-line-number="2811"></td>
        <td id="LC2811" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newfont<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2812" class="blob-num js-line-number" data-line-number="2812"></td>
        <td id="LC2812" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newlength<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2813" class="blob-num js-line-number" data-line-number="2813"></td>
        <td id="LC2813" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newline<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2814" class="blob-num js-line-number" data-line-number="2814"></td>
        <td id="LC2814" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newpage<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2815" class="blob-num js-line-number" data-line-number="2815"></td>
        <td id="LC2815" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newsavebox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2816" class="blob-num js-line-number" data-line-number="2816"></td>
        <td id="LC2816" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>newtheorem<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2817" class="blob-num js-line-number" data-line-number="2817"></td>
        <td id="LC2817" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>nocite<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2818" class="blob-num js-line-number" data-line-number="2818"></td>
        <td id="LC2818" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>nofiles<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2819" class="blob-num js-line-number" data-line-number="2819"></td>
        <td id="LC2819" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>noindent<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2820" class="blob-num js-line-number" data-line-number="2820"></td>
        <td id="LC2820" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>nolinebreak<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2821" class="blob-num js-line-number" data-line-number="2821"></td>
        <td id="LC2821" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>nopagebreak<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2822" class="blob-num js-line-number" data-line-number="2822"></td>
        <td id="LC2822" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>normalsize<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2823" class="blob-num js-line-number" data-line-number="2823"></td>
        <td id="LC2823" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>onecolumn<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2824" class="blob-num js-line-number" data-line-number="2824"></td>
        <td id="LC2824" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>opening<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2825" class="blob-num js-line-number" data-line-number="2825"></td>
        <td id="LC2825" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>oval<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2826" class="blob-num js-line-number" data-line-number="2826"></td>
        <td id="LC2826" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>overbrace<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2827" class="blob-num js-line-number" data-line-number="2827"></td>
        <td id="LC2827" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>overline<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2828" class="blob-num js-line-number" data-line-number="2828"></td>
        <td id="LC2828" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>pagebreak<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2829" class="blob-num js-line-number" data-line-number="2829"></td>
        <td id="LC2829" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>pagenumbering<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2830" class="blob-num js-line-number" data-line-number="2830"></td>
        <td id="LC2830" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>pageref<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2831" class="blob-num js-line-number" data-line-number="2831"></td>
        <td id="LC2831" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>pagestyle<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2832" class="blob-num js-line-number" data-line-number="2832"></td>
        <td id="LC2832" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>par<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2833" class="blob-num js-line-number" data-line-number="2833"></td>
        <td id="LC2833" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>parbox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2834" class="blob-num js-line-number" data-line-number="2834"></td>
        <td id="LC2834" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>put<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2835" class="blob-num js-line-number" data-line-number="2835"></td>
        <td id="LC2835" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>raggedbottom<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2836" class="blob-num js-line-number" data-line-number="2836"></td>
        <td id="LC2836" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>raggedleft<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2837" class="blob-num js-line-number" data-line-number="2837"></td>
        <td id="LC2837" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>raggedright<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2838" class="blob-num js-line-number" data-line-number="2838"></td>
        <td id="LC2838" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>raisebox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2839" class="blob-num js-line-number" data-line-number="2839"></td>
        <td id="LC2839" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>ref<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2840" class="blob-num js-line-number" data-line-number="2840"></td>
        <td id="LC2840" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>rm<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2841" class="blob-num js-line-number" data-line-number="2841"></td>
        <td id="LC2841" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>roman<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2842" class="blob-num js-line-number" data-line-number="2842"></td>
        <td id="LC2842" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>rule<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2843" class="blob-num js-line-number" data-line-number="2843"></td>
        <td id="LC2843" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>savebox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2844" class="blob-num js-line-number" data-line-number="2844"></td>
        <td id="LC2844" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>sc<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2845" class="blob-num js-line-number" data-line-number="2845"></td>
        <td id="LC2845" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>scriptsize<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2846" class="blob-num js-line-number" data-line-number="2846"></td>
        <td id="LC2846" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>setcounter<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2847" class="blob-num js-line-number" data-line-number="2847"></td>
        <td id="LC2847" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>setlength<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2848" class="blob-num js-line-number" data-line-number="2848"></td>
        <td id="LC2848" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>settowidth<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2849" class="blob-num js-line-number" data-line-number="2849"></td>
        <td id="LC2849" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>sf<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2850" class="blob-num js-line-number" data-line-number="2850"></td>
        <td id="LC2850" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>shortstack<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2851" class="blob-num js-line-number" data-line-number="2851"></td>
        <td id="LC2851" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>signature<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2852" class="blob-num js-line-number" data-line-number="2852"></td>
        <td id="LC2852" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>sl<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2853" class="blob-num js-line-number" data-line-number="2853"></td>
        <td id="LC2853" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>small<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2854" class="blob-num js-line-number" data-line-number="2854"></td>
        <td id="LC2854" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>smallskip<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2855" class="blob-num js-line-number" data-line-number="2855"></td>
        <td id="LC2855" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>sqrt<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2856" class="blob-num js-line-number" data-line-number="2856"></td>
        <td id="LC2856" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>tableofcontents<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2857" class="blob-num js-line-number" data-line-number="2857"></td>
        <td id="LC2857" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>telephone<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2858" class="blob-num js-line-number" data-line-number="2858"></td>
        <td id="LC2858" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>thanks<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2859" class="blob-num js-line-number" data-line-number="2859"></td>
        <td id="LC2859" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>thispagestyle<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2860" class="blob-num js-line-number" data-line-number="2860"></td>
        <td id="LC2860" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>tiny<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2861" class="blob-num js-line-number" data-line-number="2861"></td>
        <td id="LC2861" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>title<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2862" class="blob-num js-line-number" data-line-number="2862"></td>
        <td id="LC2862" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>tt<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2863" class="blob-num js-line-number" data-line-number="2863"></td>
        <td id="LC2863" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>twocolumn<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2864" class="blob-num js-line-number" data-line-number="2864"></td>
        <td id="LC2864" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>typein<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2865" class="blob-num js-line-number" data-line-number="2865"></td>
        <td id="LC2865" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>typeout<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2866" class="blob-num js-line-number" data-line-number="2866"></td>
        <td id="LC2866" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>underbrace<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2867" class="blob-num js-line-number" data-line-number="2867"></td>
        <td id="LC2867" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>underline<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2868" class="blob-num js-line-number" data-line-number="2868"></td>
        <td id="LC2868" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>usebox<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2869" class="blob-num js-line-number" data-line-number="2869"></td>
        <td id="LC2869" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>usecounter<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2870" class="blob-num js-line-number" data-line-number="2870"></td>
        <td id="LC2870" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>value<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2871" class="blob-num js-line-number" data-line-number="2871"></td>
        <td id="LC2871" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>vdots<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2872" class="blob-num js-line-number" data-line-number="2872"></td>
        <td id="LC2872" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>vector<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2873" class="blob-num js-line-number" data-line-number="2873"></td>
        <td id="LC2873" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>verb<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2874" class="blob-num js-line-number" data-line-number="2874"></td>
        <td id="LC2874" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>vfill<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2875" class="blob-num js-line-number" data-line-number="2875"></td>
        <td id="LC2875" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>vline<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2876" class="blob-num js-line-number" data-line-number="2876"></td>
        <td id="LC2876" class="blob-code blob-code-inner js-file-line">   <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>vspace<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2877" class="blob-num js-line-number" data-line-number="2877"></td>
        <td id="LC2877" class="blob-code blob-code-inner js-file-line"> <span class="pl-s"><span class="pl-pds">&quot;</span>A list of LaTeX commands to be protected when performing conversion.<span class="pl-pds">&quot;</span></span>)</td>
      </tr>
      <tr>
        <td id="L2878" class="blob-num js-line-number" data-line-number="2878"></td>
        <td id="LC2878" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2879" class="blob-num js-line-number" data-line-number="2879"></td>
        <td id="LC2879" class="blob-code blob-code-inner js-file-line">(<span class="pl-k">defconst</span> <span class="pl-en">org-latex-entities-regexp</span></td>
      </tr>
      <tr>
        <td id="L2880" class="blob-num js-line-number" data-line-number="2880"></td>
        <td id="LC2880" class="blob-code blob-code-inner js-file-line">  (<span class="pl-k">let</span> (names rest)</td>
      </tr>
      <tr>
        <td id="L2881" class="blob-num js-line-number" data-line-number="2881"></td>
        <td id="LC2881" class="blob-code blob-code-inner js-file-line">    (<span class="pl-k">dolist</span> (x org-latex-entities)</td>
      </tr>
      <tr>
        <td id="L2882" class="blob-num js-line-number" data-line-number="2882"></td>
        <td id="LC2882" class="blob-code blob-code-inner js-file-line">      (<span class="pl-k">if</span> (string-match <span class="pl-s"><span class="pl-pds">&quot;</span>[a-zA-Z]$<span class="pl-pds">&quot;</span></span> x)</td>
      </tr>
      <tr>
        <td id="L2883" class="blob-num js-line-number" data-line-number="2883"></td>
        <td id="LC2883" class="blob-code blob-code-inner js-file-line">	  (<span class="pl-k">push</span> x names)</td>
      </tr>
      <tr>
        <td id="L2884" class="blob-num js-line-number" data-line-number="2884"></td>
        <td id="LC2884" class="blob-code blob-code-inner js-file-line">	(<span class="pl-k">push</span> x rest)))</td>
      </tr>
      <tr>
        <td id="L2885" class="blob-num js-line-number" data-line-number="2885"></td>
        <td id="LC2885" class="blob-code blob-code-inner js-file-line">    (concat <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>(<span class="pl-pds">&quot;</span></span> (regexp-opt (<span class="pl-k">nreverse</span> names)) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>&gt;<span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L2886" class="blob-num js-line-number" data-line-number="2886"></td>
        <td id="LC2886" class="blob-code blob-code-inner js-file-line">	    <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>|<span class="pl-cce">\\</span>(<span class="pl-pds">&quot;</span></span> (regexp-opt (<span class="pl-k">nreverse</span> rest)) <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-cce">\\</span>)<span class="pl-pds">&quot;</span></span>)))</td>
      </tr>
      <tr>
        <td id="L2887" class="blob-num js-line-number" data-line-number="2887"></td>
        <td id="LC2887" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2888" class="blob-num js-line-number" data-line-number="2888"></td>
        <td id="LC2888" class="blob-code blob-code-inner js-file-line">(provide <span class="pl-c1">&#39;org-export-latex</span>)</td>
      </tr>
      <tr>
        <td id="L2889" class="blob-num js-line-number" data-line-number="2889"></td>
        <td id="LC2889" class="blob-code blob-code-inner js-file-line">(provide <span class="pl-c1">&#39;org-latex</span>)</td>
      </tr>
      <tr>
        <td id="L2890" class="blob-num js-line-number" data-line-number="2890"></td>
        <td id="LC2890" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2891" class="blob-num js-line-number" data-line-number="2891"></td>
        <td id="LC2891" class="blob-code blob-code-inner js-file-line"><span class="pl-c">;;; org-latex.el ends here</span></td>
      </tr>
</table>

  </div>

</div>

<button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="d-none">Jump to Line</button>
<div id="jump-to-line" style="display:none">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>


    </div>
  </div>

    </div>

        <div class="container site-footer-container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links float-right">
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact GitHub</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage" class="site-footer-mark" title="GitHub">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2016 <span title="0.08648s from github-fe-5989992.cp1-iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    

    <div id="ajax-error-message" class="ajax-error-message flash flash-error">
      <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
      </button>
      You can't perform that action at this time.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/compat-30ce4c86c27f88c3d1b4eb03efda59b45d8d7c871880dee0b8f73d5ef1b25fdf.js"></script>
      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-ab50fbfeb2c0b8748fa2bfed5d0bcccfc06b80abf290586a7d1c6f23902f5df3.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-ab53b9e62460a1ebcef4aab9e7963b5bd2497474686964d27e4ce756a65fa7e0.js"></script>
      
      
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
      <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
    <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
  </div>
</div>

  </body>
</html>

