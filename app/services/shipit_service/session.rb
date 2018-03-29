module ShipitService
  class Session
    def self.connection(name)
      name = name.split("::").last.pluralize.downcase
      endpoint = "#{Config.settings.base_url}#{name}"
      connection = Faraday.new(endpoint)
      connection.headers = Config.settings.headers
      connection
    end
  end
end
