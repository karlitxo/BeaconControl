###
# Copyright (c) 2015, Upnext Technologies Sp. z o.o.
# All rights reserved.
#
# This source code is licensed under the BSD 3-Clause License found in the
# LICENSE.txt file in the root directory of this source tree.
###

module Api
  module V1
    class ZonesController < BaseController

      rescue_from JSON::ParserError do
        render json: { error: 'data json malformed' }, status: :unprocessable_entity
      end

      def index
        render json: application.zones,
               each_serializer: ::S2sApi::V1::ZoneSerializer
      end
    end
  end
end
