<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Personalize

### Description

Amazon Personalize is a machine learning service that makes it easy to
add individualized recommendations to customers.

### Usage

    personalize(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_:_config">config</code></td>
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

    svc <- personalize(
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
<td style="text-align: left;"><a href="../personalize_create_batch_inference_job/"> create_batch_inference_job </a></td>
<td style="text-align: left;">Creates a batch inference job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_create_batch_segment_job/"> create_batch_segment_job </a></td>
<td style="text-align: left;">Creates a batch segment job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_create_campaign/"> create_campaign </a></td>
<td style="text-align: left;">Creates a campaign that deploys a solution
version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_create_dataset/"> create_dataset </a></td>
<td style="text-align: left;">Creates an empty dataset and adds it to
the specified dataset group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_create_dataset_export_job/"> create_dataset_export_job </a></td>
<td style="text-align: left;">Creates a job that exports data from your
dataset to an Amazon S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_create_dataset_group/"> create_dataset_group </a></td>
<td style="text-align: left;">Creates an empty dataset group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_create_dataset_import_job/"> create_dataset_import_job </a></td>
<td style="text-align: left;">Creates a job that imports training data
from your data source (an Amazon S3 bucket) to an Amazon Personalize
dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_create_event_tracker/"> create_event_tracker </a></td>
<td style="text-align: left;">Creates an event tracker that you use when
adding event data to a specified dataset group using the PutEvents
API</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_create_filter/"> create_filter </a></td>
<td style="text-align: left;">Creates a recommendation filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_create_metric_attribution/"> create_metric_attribution </a></td>
<td style="text-align: left;">Creates a metric attribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_create_recommender/"> create_recommender </a></td>
<td style="text-align: left;">Creates a recommender with the recipe (a
Domain dataset group use case) you specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_create_schema/"> create_schema </a></td>
<td style="text-align: left;">Creates an Amazon Personalize schema from
the specified schema string</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_create_solution/"> create_solution </a></td>
<td style="text-align: left;">Creates the configuration for training a
model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_create_solution_version/"> create_solution_version </a></td>
<td style="text-align: left;">Trains or retrains an active solution in a
Custom dataset group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_delete_campaign/"> delete_campaign </a></td>
<td style="text-align: left;">Removes a campaign by deleting the
solution deployment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_delete_dataset/"> delete_dataset </a></td>
<td style="text-align: left;">Deletes a dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_delete_dataset_group/"> delete_dataset_group </a></td>
<td style="text-align: left;">Deletes a dataset group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_delete_event_tracker/"> delete_event_tracker </a></td>
<td style="text-align: left;">Deletes the event tracker</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_delete_filter/"> delete_filter </a></td>
<td style="text-align: left;">Deletes a filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_delete_metric_attribution/"> delete_metric_attribution </a></td>
<td style="text-align: left;">Deletes a metric attribution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_delete_recommender/"> delete_recommender </a></td>
<td style="text-align: left;">Deactivates and removes a recommender</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_delete_schema/"> delete_schema </a></td>
<td style="text-align: left;">Deletes a schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_delete_solution/"> delete_solution </a></td>
<td style="text-align: left;">Deletes all versions of a solution and the
Solution object itself</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_algorithm/"> describe_algorithm </a></td>
<td style="text-align: left;">Describes the given algorithm</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_describe_batch_inference_job/"> describe_batch_inference_job </a></td>
<td style="text-align: left;">Gets the properties of a batch inference
job including name, Amazon Resource Name (ARN), status, input and output
configurations, and the ARN of the solution version used to generate the
recommendations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_batch_segment_job/"> describe_batch_segment_job </a></td>
<td style="text-align: left;">Gets the properties of a batch segment job
including name, Amazon Resource Name (ARN), status, input and output
configurations, and the ARN of the solution version used to generate
segments</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_describe_campaign/"> describe_campaign </a></td>
<td style="text-align: left;">Describes the given campaign, including
its status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_dataset/"> describe_dataset </a></td>
<td style="text-align: left;">Describes the given dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_describe_dataset_export_job/"> describe_dataset_export_job </a></td>
<td style="text-align: left;">Describes the dataset export job created
by CreateDatasetExportJob, including the export job status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_dataset_group/"> describe_dataset_group </a></td>
<td style="text-align: left;">Describes the given dataset group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_describe_dataset_import_job/"> describe_dataset_import_job </a></td>
<td style="text-align: left;">Describes the dataset import job created
by CreateDatasetImportJob, including the import job status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_event_tracker/"> describe_event_tracker </a></td>
<td style="text-align: left;">Describes an event tracker</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_describe_feature_transformation/"> describe_feature_transformation </a></td>
<td style="text-align: left;">Describes the given feature
transformation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_filter/"> describe_filter </a></td>
<td style="text-align: left;">Describes a filter's properties</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_describe_metric_attribution/"> describe_metric_attribution </a></td>
<td style="text-align: left;">Describes a metric attribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_recipe/"> describe_recipe </a></td>
<td style="text-align: left;">Describes a recipe</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_describe_recommender/"> describe_recommender </a></td>
<td style="text-align: left;">Describes the given recommender, including
its status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_schema/"> describe_schema </a></td>
<td style="text-align: left;">Describes a schema</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_describe_solution/"> describe_solution </a></td>
<td style="text-align: left;">Describes a solution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_describe_solution_version/"> describe_solution_version </a></td>
<td style="text-align: left;">Describes a specific version of a
solution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_get_solution_metrics/"> get_solution_metrics </a></td>
<td style="text-align: left;">Gets the metrics for the specified
solution version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_batch_inference_jobs/"> list_batch_inference_jobs </a></td>
<td style="text-align: left;">Gets a list of the batch inference jobs
that have been performed off of a solution version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_list_batch_segment_jobs/"> list_batch_segment_jobs </a></td>
<td style="text-align: left;">Gets a list of the batch segment jobs that
have been performed off of a solution version that you specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_campaigns/"> list_campaigns </a></td>
<td style="text-align: left;">Returns a list of campaigns that use the
given solution</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_list_dataset_export_jobs/"> list_dataset_export_jobs </a></td>
<td style="text-align: left;">Returns a list of dataset export jobs that
use the given dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_dataset_groups/"> list_dataset_groups </a></td>
<td style="text-align: left;">Returns a list of dataset groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_list_dataset_import_jobs/"> list_dataset_import_jobs </a></td>
<td style="text-align: left;">Returns a list of dataset import jobs that
use the given dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_datasets/"> list_datasets </a></td>
<td style="text-align: left;">Returns the list of datasets contained in
the given dataset group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_list_event_trackers/"> list_event_trackers </a></td>
<td style="text-align: left;">Returns the list of event trackers
associated with the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_filters/"> list_filters </a></td>
<td style="text-align: left;">Lists all filters that belong to a given
dataset group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_list_metric_attribution_metrics/"> list_metric_attribution_metrics </a></td>
<td style="text-align: left;">Lists the metrics for the metric
attribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_metric_attributions/"> list_metric_attributions </a></td>
<td style="text-align: left;">Lists metric attributions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_list_recipes/"> list_recipes </a></td>
<td style="text-align: left;">Returns a list of available recipes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_recommenders/"> list_recommenders </a></td>
<td style="text-align: left;">Returns a list of recommenders in a given
Domain dataset group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_list_schemas/"> list_schemas </a></td>
<td style="text-align: left;">Returns the list of schemas associated
with the account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_solutions/"> list_solutions </a></td>
<td style="text-align: left;">Returns a list of solutions that use the
given dataset group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_list_solution_versions/"> list_solution_versions </a></td>
<td style="text-align: left;">Returns a list of solution versions for
the given solution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Get a list of tags attached to a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_start_recommender/"> start_recommender </a></td>
<td style="text-align: left;">Starts a recommender that is INACTIVE</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_stop_recommender/"> stop_recommender </a></td>
<td style="text-align: left;">Stops a recommender that is ACTIVE</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_stop_solution_version_creation/"> stop_solution_version_creation </a></td>
<td style="text-align: left;">Stops creating a solution version that is
in a state of CREATE_PENDING or CREATE IN_PROGRESS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add a list of tags to a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove tags that are attached to a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_update_campaign/"> update_campaign </a></td>
<td style="text-align: left;">Updates a campaign by either deploying a
new solution or changing the value of the campaign's minProvisionedTPS
parameter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../personalize_update_metric_attribution/"> update_metric_attribution </a></td>
<td style="text-align: left;">Updates a metric attribution</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../personalize_update_recommender/"> update_recommender </a></td>
<td style="text-align: left;">Updates the recommender to modify the
recommender configuration</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- personalize()
    svc$create_batch_inference_job(
      Foo = 123
    )

    ## End(Not run)
