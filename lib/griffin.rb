# frozen_string_literal: true

require 'logger'
require 'grpc_kit'

require 'griffin/server'
require 'griffin/version'

module Griffin
  def self.logger
    @logger ||= Logger.new(STDOUT, level: :info)
  end
end

GrpcKit.logger = Griffin.logger
