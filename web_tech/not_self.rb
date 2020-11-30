require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "utf-8"){
  get = cgi['not_self']
  "<html>
    <body>
      <p>売った相手と、ゴーヤの重さ・長さの情報は下記になります</p>
      文字列：#{get}
    </body>
  </html>"
}
