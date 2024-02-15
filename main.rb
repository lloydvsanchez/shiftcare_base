require 'json'
require './clients_parser'

def menu
  txt = <<-TXT

  Usage: [COMMAND] [ARG]
  Commands:
    S - search for clients by name given a query string
    CD - check for clients with duplicate emails
    quit - to quit
  Example: 'S foo' or 'CD'

  TXT
  puts txt
end

def parse(str)
  command, arg = str.split(' ')

  case command
  when 'S'
    puts ClientsParser.search(clients, arg)
  when 'CD'
    puts ClientsParser.check_duplicates(clients)
  end
end

def clients
  JSON.parse(File.read('clients.json'))
end

while true
  menu
  command = gets.chomp

  parse(command) if command =~ /^(S\s[\w@.]*|CD)$/

  return if command == 'quit'
end
