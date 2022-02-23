+++
fragment = "config"

[[config]]
  type = "js"
  # block = true # Default is false
  html = """
  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-181241343-1"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-181241343-1');
  </script>
  """
+++
