require 'connector_kit/models/model'

module ConnectorKit
  # Simple model class for representing Apps
  class App < Model
    attr_reader :bundle_id, :name, :sku, :all_attrs

    def initialize(options)
      super(options)

      attrs = options['attributes']
      @bundle_id = attrs['bundleId']
      @name = attrs['name']
      @sku = attrs['sku']
      @all_attrs = options
    end
  end
end
