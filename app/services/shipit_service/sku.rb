module ShipitService
  class Sku < Config
    def self.all(opts = {})
      new(opts).all
    end

    def initialize(opts)
      @opts = opts
      @api_call = Session.connection(self.class.name)
    end

    def all
      binding.pry
      response = @api_call.get('', @opts)
      binding.pry
      JSON.parse(response.body)
    end
  end
end
