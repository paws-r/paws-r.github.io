<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Forecast Service

### Description

Provides APIs for creating and managing Amazon Forecast resources.

### Usage

    forecastservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="forecastservice_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- forecastservice(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_create_auto_predictor/"> create_auto_predictor </a></td>
<td style="text-align: left;">Creates an Amazon Forecast predictor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_create_dataset/"> create_dataset </a></td>
<td style="text-align: left;">Creates an Amazon Forecast dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_create_dataset_group/"> create_dataset_group </a></td>
<td style="text-align: left;">Creates a dataset group, which holds a
collection of related datasets</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_create_dataset_import_job/"> create_dataset_import_job </a></td>
<td style="text-align: left;">Imports your training data to an Amazon
Forecast dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_create_explainability/"> create_explainability </a></td>
<td style="text-align: left;">Explainability is only available for
Forecasts and Predictors generated from an AutoPredictor
(CreateAutoPredictor)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_create_explainability_export/"> create_explainability_export </a></td>
<td style="text-align: left;">Exports an Explainability resource created
by the CreateExplainability operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_create_forecast/"> create_forecast </a></td>
<td style="text-align: left;">Creates a forecast for each item in the
TARGET_TIME_SERIES dataset that was used to train the predictor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_create_forecast_export_job/"> create_forecast_export_job </a></td>
<td style="text-align: left;">Exports a forecast created by the
CreateForecast operation to your Amazon Simple Storage Service (Amazon
S3) bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_create_monitor/"> create_monitor </a></td>
<td style="text-align: left;">Creates a predictor monitor resource for
an existing auto predictor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_create_predictor/"> create_predictor </a></td>
<td style="text-align: left;">This operation creates a legacy predictor
that does not include all the predictor functionalities provided by
Amazon Forecast</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_create_predictor_backtest_export_job/"> create_predictor_backtest_export_job </a></td>
<td style="text-align: left;">Exports backtest forecasts and accuracy
metrics generated by the CreateAutoPredictor or CreatePredictor
operations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_create_what_if_analysis/"> create_what_if_analysis </a></td>
<td style="text-align: left;">What-if analysis is a scenario modeling
technique where you make a hypothetical change to a time series and
compare the forecasts generated by these changes against the baseline,
unchanged time series</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_create_what_if_forecast/"> create_what_if_forecast </a></td>
<td style="text-align: left;">A what-if forecast is a forecast that is
created from a modified version of the baseline forecast</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_create_what_if_forecast_export/"> create_what_if_forecast_export </a></td>
<td style="text-align: left;">Exports a forecast created by the
CreateWhatIfForecast operation to your Amazon Simple Storage Service
(Amazon S3) bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_delete_dataset/"> delete_dataset </a></td>
<td style="text-align: left;">Deletes an Amazon Forecast dataset that
was created using the CreateDataset operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_delete_dataset_group/"> delete_dataset_group </a></td>
<td style="text-align: left;">Deletes a dataset group created using the
CreateDatasetGroup operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_delete_dataset_import_job/"> delete_dataset_import_job </a></td>
<td style="text-align: left;">Deletes a dataset import job created using
the CreateDatasetImportJob operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_delete_explainability/"> delete_explainability </a></td>
<td style="text-align: left;">Deletes an Explainability resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_delete_explainability_export/"> delete_explainability_export </a></td>
<td style="text-align: left;">Deletes an Explainability export</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_delete_forecast/"> delete_forecast </a></td>
<td style="text-align: left;">Deletes a forecast created using the
CreateForecast operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_delete_forecast_export_job/"> delete_forecast_export_job </a></td>
<td style="text-align: left;">Deletes a forecast export job created
using the CreateForecastExportJob operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_delete_monitor/"> delete_monitor </a></td>
<td style="text-align: left;">Deletes a monitor resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_delete_predictor/"> delete_predictor </a></td>
<td style="text-align: left;">Deletes a predictor created using the
DescribePredictor or CreatePredictor operations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_delete_predictor_backtest_export_job/"> delete_predictor_backtest_export_job </a></td>
<td style="text-align: left;">Deletes a predictor backtest export
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_delete_resource_tree/"> delete_resource_tree </a></td>
<td style="text-align: left;">Deletes an entire resource tree</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_delete_what_if_analysis/"> delete_what_if_analysis </a></td>
<td style="text-align: left;">Deletes a what-if analysis created using
the CreateWhatIfAnalysis operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_delete_what_if_forecast/"> delete_what_if_forecast </a></td>
<td style="text-align: left;">Deletes a what-if forecast created using
the CreateWhatIfForecast operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_delete_what_if_forecast_export/"> delete_what_if_forecast_export </a></td>
<td style="text-align: left;">Deletes a what-if forecast export created
using the CreateWhatIfForecastExport operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_describe_auto_predictor/"> describe_auto_predictor </a></td>
<td style="text-align: left;">Describes a predictor created using the
CreateAutoPredictor operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_describe_dataset/"> describe_dataset </a></td>
<td style="text-align: left;">Describes an Amazon Forecast dataset
created using the CreateDataset operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_describe_dataset_group/"> describe_dataset_group </a></td>
<td style="text-align: left;">Describes a dataset group created using
the CreateDatasetGroup operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_describe_dataset_import_job/"> describe_dataset_import_job </a></td>
<td style="text-align: left;">Describes a dataset import job created
using the CreateDatasetImportJob operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_describe_explainability/"> describe_explainability </a></td>
<td style="text-align: left;">Describes an Explainability resource
created using the CreateExplainability operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_describe_explainability_export/"> describe_explainability_export </a></td>
<td style="text-align: left;">Describes an Explainability export created
using the CreateExplainabilityExport operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_describe_forecast/"> describe_forecast </a></td>
<td style="text-align: left;">Describes a forecast created using the
CreateForecast operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_describe_forecast_export_job/"> describe_forecast_export_job </a></td>
<td style="text-align: left;">Describes a forecast export job created
using the CreateForecastExportJob operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_describe_monitor/"> describe_monitor </a></td>
<td style="text-align: left;">Describes a monitor resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_describe_predictor/"> describe_predictor </a></td>
<td style="text-align: left;">This operation is only valid for legacy
predictors created with CreatePredictor</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../forecastservice_describe_predictor_backtest_export_job/"> describe_predictor_backtest_export_job </a></td>
<td style="text-align: left;">Describes a predictor backtest export job
created using the CreatePredictorBacktestExportJob operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_describe_what_if_analysis/"> describe_what_if_analysis </a></td>
<td style="text-align: left;">Describes the what-if analysis created
using the CreateWhatIfAnalysis operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_describe_what_if_forecast/"> describe_what_if_forecast </a></td>
<td style="text-align: left;">Describes the what-if forecast created
using the CreateWhatIfForecast operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_describe_what_if_forecast_export/"> describe_what_if_forecast_export </a></td>
<td style="text-align: left;">Describes the what-if forecast export
created using the CreateWhatIfForecastExport operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_get_accuracy_metrics/"> get_accuracy_metrics </a></td>
<td style="text-align: left;">Provides metrics on the accuracy of the
models that were trained by the CreatePredictor operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_list_dataset_groups/"> list_dataset_groups </a></td>
<td style="text-align: left;">Returns a list of dataset groups created
using the CreateDatasetGroup operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_list_dataset_import_jobs/"> list_dataset_import_jobs </a></td>
<td style="text-align: left;">Returns a list of dataset import jobs
created using the CreateDatasetImportJob operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_list_datasets/"> list_datasets </a></td>
<td style="text-align: left;">Returns a list of datasets created using
the CreateDataset operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_list_explainabilities/"> list_explainabilities </a></td>
<td style="text-align: left;">Returns a list of Explainability resources
created using the CreateExplainability operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_list_explainability_exports/"> list_explainability_exports </a></td>
<td style="text-align: left;">Returns a list of Explainability exports
created using the CreateExplainabilityExport operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_list_forecast_export_jobs/"> list_forecast_export_jobs </a></td>
<td style="text-align: left;">Returns a list of forecast export jobs
created using the CreateForecastExportJob operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_list_forecasts/"> list_forecasts </a></td>
<td style="text-align: left;">Returns a list of forecasts created using
the CreateForecast operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_list_monitor_evaluations/"> list_monitor_evaluations </a></td>
<td style="text-align: left;">Returns a list of the monitoring
evaluation results and predictor events collected by the monitor
resource during different windows of time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_list_monitors/"> list_monitors </a></td>
<td style="text-align: left;">Returns a list of monitors created with
the CreateMonitor operation and CreateAutoPredictor operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_list_predictor_backtest_export_jobs/"> list_predictor_backtest_export_jobs </a></td>
<td style="text-align: left;">Returns a list of predictor backtest
export jobs created using the CreatePredictorBacktestExportJob
operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_list_predictors/"> list_predictors </a></td>
<td style="text-align: left;">Returns a list of predictors created using
the CreateAutoPredictor or CreatePredictor operations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags for an Amazon Forecast
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_list_what_if_analyses/"> list_what_if_analyses </a></td>
<td style="text-align: left;">Returns a list of what-if analyses created
using the CreateWhatIfAnalysis operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_list_what_if_forecast_exports/"> list_what_if_forecast_exports </a></td>
<td style="text-align: left;">Returns a list of what-if forecast exports
created using the CreateWhatIfForecastExport operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_list_what_if_forecasts/"> list_what_if_forecasts </a></td>
<td style="text-align: left;">Returns a list of what-if forecasts
created using the CreateWhatIfForecast operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_resume_resource/"> resume_resource </a></td>
<td style="text-align: left;">Resumes a stopped monitor resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_stop_resource/"> stop_resource </a></td>
<td style="text-align: left;">Stops a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates the specified tags to a
resource with the specified resourceArn</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../forecastservice_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes the specified tags from a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../forecastservice_update_dataset_group/"> update_dataset_group </a></td>
<td style="text-align: left;">Replaces the datasets in a dataset group
with the specified datasets</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- forecastservice()
    svc$create_auto_predictor(
      Foo = 123
    )

    ## End(Not run)
