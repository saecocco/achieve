require 'webrick'
server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
  })
  ['INT','TERM'].each {|signal|
    Signal.trap(signal){ server.shutdown}
  }
  server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'top.html.erb')
  server.mount('/not_self.cgi', WEBrick::HTTPServlet::CGIHandler, 'not_self.rb')
  server.mount('/false.cgi', WEBrick::HTTPServlet::CGIHandler, 'false.rb')
  server.start
