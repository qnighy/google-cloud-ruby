# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/asset/v1beta1/asset_service.proto for package 'google.cloud.asset.v1beta1'
# Original file comments:
# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/asset/v1beta1/asset_service_pb'

module Google
  module Cloud
    module Asset
      module V1beta1
        module AssetService
          # Asset service definition.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.asset.v1beta1.AssetService'

            # Exports assets with time and resource types to a given Google Cloud Storage
            # location. The output format is newline delimited JSON.
            # This API implements the [google.longrunning.Operation][google.longrunning.Operation] API allowing users
            # to keep track of the export.
            rpc :ExportAssets, ExportAssetsRequest, Google::Longrunning::Operation
            # Batch gets assets update history that overlaps a time window.
            # For RESOURCE content, this API outputs history with asset in both
            # non-delete or deleted status.
            # For IAM_POLICY content, this API only outputs history when asset and its
            # attached IAM POLICY both exist. So there may be gaps in the output history.
            rpc :BatchGetAssetsHistory, BatchGetAssetsHistoryRequest, BatchGetAssetsHistoryResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
