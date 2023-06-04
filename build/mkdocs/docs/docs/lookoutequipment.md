<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Lookout for Equipment

### Description

Amazon Lookout for Equipment is a machine learning service that uses
advanced analytics to identify anomalies in machines from sensor data
for use in predictive maintenance.

### Usage

    lookoutequipment(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lookoutequipment_:_config">config</code></td>
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

    svc <- lookoutequipment(
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
<td style="text-align: left;"><a href="../lookoutequipment_create_dataset/"> create_dataset </a></td>
<td style="text-align: left;">Creates a container for a collection of
data being ingested for analysis</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_create_inference_scheduler/"> create_inference_scheduler </a></td>
<td style="text-align: left;">Creates a scheduled inference</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_create_label/"> create_label </a></td>
<td style="text-align: left;">Creates a label for an event</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_create_label_group/"> create_label_group </a></td>
<td style="text-align: left;">Creates a group of labels</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_create_model/"> create_model </a></td>
<td style="text-align: left;">Creates an ML model for data
inference</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_delete_dataset/"> delete_dataset </a></td>
<td style="text-align: left;">Deletes a dataset and associated
artifacts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_delete_inference_scheduler/"> delete_inference_scheduler </a></td>
<td style="text-align: left;">Deletes an inference scheduler that has
been set up</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_delete_label/"> delete_label </a></td>
<td style="text-align: left;">Deletes a label</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_delete_label_group/"> delete_label_group </a></td>
<td style="text-align: left;">Deletes a group of labels</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_delete_model/"> delete_model </a></td>
<td style="text-align: left;">Deletes an ML model currently available
for Amazon Lookout for Equipment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_describe_data_ingestion_job/"> describe_data_ingestion_job </a></td>
<td style="text-align: left;">Provides information on a specific data
ingestion job such as creation time, dataset ARN, and status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_describe_dataset/"> describe_dataset </a></td>
<td style="text-align: left;">Provides a JSON description of the data in
each time series dataset, including names, column names, and data
types</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_describe_inference_scheduler/"> describe_inference_scheduler </a></td>
<td style="text-align: left;">Specifies information about the inference
scheduler being used, including name, model, status, and associated
metadata</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_describe_label/"> describe_label </a></td>
<td style="text-align: left;">Returns the name of the label</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_describe_label_group/"> describe_label_group </a></td>
<td style="text-align: left;">Returns information about the label
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_describe_model/"> describe_model </a></td>
<td style="text-align: left;">Provides a JSON containing the overall
information about a specific ML model, including model name and ARN,
dataset, training and evaluation information, status, and so on</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_list_data_ingestion_jobs/"> list_data_ingestion_jobs </a></td>
<td style="text-align: left;">Provides a list of all data ingestion
jobs, including dataset name and ARN, S3 location of the input data,
status, and so on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_list_datasets/"> list_datasets </a></td>
<td style="text-align: left;">Lists all datasets currently available in
your account, filtering on the dataset name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_list_inference_events/"> list_inference_events </a></td>
<td style="text-align: left;">Lists all inference events that have been
found for the specified inference scheduler</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_list_inference_executions/"> list_inference_executions </a></td>
<td style="text-align: left;">Lists all inference executions that have
been performed by the specified inference scheduler</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_list_inference_schedulers/"> list_inference_schedulers </a></td>
<td style="text-align: left;">Retrieves a list of all inference
schedulers currently available for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_list_label_groups/"> list_label_groups </a></td>
<td style="text-align: left;">Returns a list of the label groups</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_list_labels/"> list_labels </a></td>
<td style="text-align: left;">Provides a list of labels</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_list_models/"> list_models </a></td>
<td style="text-align: left;">Generates a list of all models in the
account, including model name and ARN, dataset, and status</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_list_sensor_statistics/"> list_sensor_statistics </a></td>
<td style="text-align: left;">Lists statistics about the data collected
for each of the sensors that have been successfully ingested in the
particular dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all the tags for a specified
resource, including key and value</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_start_data_ingestion_job/"> start_data_ingestion_job </a></td>
<td style="text-align: left;">Starts a data ingestion job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_start_inference_scheduler/"> start_inference_scheduler </a></td>
<td style="text-align: left;">Starts an inference scheduler</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_stop_inference_scheduler/"> stop_inference_scheduler </a></td>
<td style="text-align: left;">Stops an inference scheduler</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates a given tag to a resource in
your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a specific tag from a given
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../lookoutequipment_update_inference_scheduler/"> update_inference_scheduler </a></td>
<td style="text-align: left;">Updates an inference scheduler</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../lookoutequipment_update_label_group/"> update_label_group </a></td>
<td style="text-align: left;">Updates the label group</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- lookoutequipment()
    svc$create_dataset(
      Foo = 123
    )

    ## End(Not run)
