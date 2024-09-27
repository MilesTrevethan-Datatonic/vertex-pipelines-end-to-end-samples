/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

cloud_schedulers_config = {

  training = {
    description  = "Trigger training pipeline in Vertex AI"
    schedule     = "0 0 * * 0"
    time_zone    = "UTC"
    template_path = "https://europe-west2-kfp.pkg.dev/dt-miles-sandbox-dev/vertex-pipelines/turbo-training-pipeline/latest"
    enable_caching = "false"
    pipeline_parameters = {
      project = "dt-miles-sandbox-dev"
      location = "europe-west2"
      bq_location = "US"
      bq_source_uri = "bigquery-public-data.chicago_taxi_trips.taxi_trips"
      model_name = "xgb_regressor"
      dataset = "turbo_templates"
      timestamp = "2022-12-01 00:00:00"
      test_data_gcs_uri: ""
    }
  }
}
