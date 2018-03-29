class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def webhook
    Package.create(content: params["info"])
  end
end
