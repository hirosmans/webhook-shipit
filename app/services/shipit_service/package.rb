module ShipitService
  class Package < Config
    def self.all(opts = {})
      opts = opts.blank? ? { year: Date.current.year, month: Date.current.month } : opts
      new(opts).all
    end

    def initialize(opts)
      @opts = opts
      @api_call = Session.connection(self.class.name)
    end

    def all
      response = @api_call.get('', @opts)
      JSON.parse(response.body)
    end
  end
end
