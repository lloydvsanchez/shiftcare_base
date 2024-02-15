require './hash_parser'

class ClientsParser
  include HashParser

  def self.search(clients, query)
    return if !clients || !query

    new(clients).send(:search, query)
  end

  def self.check_duplicates(clients)
    return unless clients

    new(clients).send(:check_duplicates)
  end

  private

  attr_reader :clients

  def initialize(clients)
    @clients = clients
  end

  def search(query)
    search_by_name(query)
  end

  def search_by_name(query)
    search_by(clients, "full_name", query)
  end

  def check_duplicates
    check_duplicates_by(clients, "email")
  end
end
