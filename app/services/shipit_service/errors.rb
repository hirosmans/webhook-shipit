module ShipitService
  class Error < ::StandardError; end

  class ApiError < Error; end
  class CalculatorError < Error; end
  class PackageError < Error; end
  class SkuError < Error; end
  class CommuneError < Error; end
  class WebhookError < Error; end
end
