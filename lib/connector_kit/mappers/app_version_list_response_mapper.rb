require 'connector_kit/models/app_version'

module ConnectorKit
  # Mapper between a HTTParty response and a list of Apps
  class AppVersionListResponseMapper
    def map(data)
      data.map { |app| AppVersion.new(app) }
    end
  end
end
