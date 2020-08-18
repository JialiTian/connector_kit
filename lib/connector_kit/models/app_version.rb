require 'connector_kit/models/model'

module ConnectorKit
  # Simple model class for representing Apps
  class AppVersion < Model
    attr_reader :app_store_status, :version_string, :platform, :all_attrs

    def initialize(options)
      super(options)
      attrs = options['attributes']
      @app_store_status = attrs['appStoreState']
      @version_string = attrs['versionString']
      @platform = attrs['platform']
      @all_attrs = options
    end
  end
end
