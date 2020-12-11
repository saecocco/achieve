require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "utf-8"){
  get = cgi['false']
  "<html>
    <body>
      <p>品質の悪かったゴーヤの重さ・長さと収穫日の情報は下記になります</p>
      文字列：#{get}
    </body>
  </html>"
}
