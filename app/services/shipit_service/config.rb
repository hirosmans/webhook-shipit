module ShipitService
  class Config
    BASE_URL = 'https://api.shipit.cl/v/'.freeze
    EXTENSION = '.json'.freeze
    CONTENT_TYPE = 'application/json'.freeze
    VERSION = '2'.freeze
    ACCEPT = 'application/vnd.shipit.v'.freeze

    attr_accessor :x_shipit_email, :x_shipit_access_token, :content_type, :version, :base_url, :accept, :headers, :connection

    def self.settings
      @settings ||= Config.new
    end

    def self.setup(&block)
      yield(settings) if block_given?
    end

    def initialize
      @extension = EXTENSION
      @content_type = CONTENT_TYPE
      @version = VERSION
      @base_url = BASE_URL
      @accept = "#{ACCEPT}#{VERSION}"
    end


    def headers
      { 'X-Shipit-Email' => @x_shipit_email, 'X-Shipit-Access-Token' => @x_shipit_access_token, 'Content-Type' => @content_type, 'Accept' => @accept }
    end
  end
end
