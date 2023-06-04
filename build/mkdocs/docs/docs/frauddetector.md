<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Fraud Detector

### Description

This is the Amazon Fraud Detector API Reference. This guide is for
developers who need detailed information about Amazon Fraud Detector API
actions, data types, and errors. For more information about Amazon Fraud
Detector features, see the [Amazon Fraud Detector User
Guide](https://docs.aws.amazon.com/frauddetector/latest/ug/).

We provide the Query API as well as AWS software development kits (SDK)
for Amazon Fraud Detector in Java and Python programming languages.

The Amazon Fraud Detector Query API provides HTTPS requests that use the
HTTP verb GET or POST and a Query parameter `Action`. AWS SDK provides
libraries, sample code, tutorials, and other resources for software
developers who prefer to build applications using language-specific APIs
instead of submitting a request over HTTP or HTTPS. These libraries
provide basic functions that automatically take care of tasks such as
cryptographically signing your requests, retrying requests, and handling
error responses, so that it is easier for you to get started. For more
information about the AWS SDKs, see Tools to build on AWS.

### Usage

    frauddetector(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_:_config">config</code></td>
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

    svc <- frauddetector(
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
<td style="text-align: left;"><a href="../frauddetector_batch_create_variable/"> batch_create_variable </a></td>
<td style="text-align: left;">Creates a batch of variables</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_batch_get_variable/"> batch_get_variable </a></td>
<td style="text-align: left;">Gets a batch of variables</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_cancel_batch_import_job/"> cancel_batch_import_job </a></td>
<td style="text-align: left;">Cancels an in-progress batch import
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_cancel_batch_prediction_job/"> cancel_batch_prediction_job </a></td>
<td style="text-align: left;">Cancels the specified batch prediction
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_create_batch_import_job/"> create_batch_import_job </a></td>
<td style="text-align: left;">Creates a batch import job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_create_batch_prediction_job/"> create_batch_prediction_job </a></td>
<td style="text-align: left;">Creates a batch prediction job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_create_detector_version/"> create_detector_version </a></td>
<td style="text-align: left;">Creates a detector version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_create_list/"> create_list </a></td>
<td style="text-align: left;">Creates a list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_create_model/"> create_model </a></td>
<td style="text-align: left;">Creates a model using the specified model
type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_create_model_version/"> create_model_version </a></td>
<td style="text-align: left;">Creates a version of the model using the
specified model type and model id</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_create_rule/"> create_rule </a></td>
<td style="text-align: left;">Creates a rule for use with the specified
detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_create_variable/"> create_variable </a></td>
<td style="text-align: left;">Creates a variable</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_delete_batch_import_job/"> delete_batch_import_job </a></td>
<td style="text-align: left;">Deletes the specified batch import job ID
record</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_delete_batch_prediction_job/"> delete_batch_prediction_job </a></td>
<td style="text-align: left;">Deletes a batch prediction job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_delete_detector/"> delete_detector </a></td>
<td style="text-align: left;">Deletes the detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_delete_detector_version/"> delete_detector_version </a></td>
<td style="text-align: left;">Deletes the detector version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_delete_entity_type/"> delete_entity_type </a></td>
<td style="text-align: left;">Deletes an entity type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_delete_event/"> delete_event </a></td>
<td style="text-align: left;">Deletes the specified event</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_delete_events_by_event_type/"> delete_events_by_event_type </a></td>
<td style="text-align: left;">Deletes all events of a particular event
type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_delete_event_type/"> delete_event_type </a></td>
<td style="text-align: left;">Deletes an event type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_delete_external_model/"> delete_external_model </a></td>
<td style="text-align: left;">Removes a SageMaker model from Amazon
Fraud Detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_delete_label/"> delete_label </a></td>
<td style="text-align: left;">Deletes a label</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_delete_list/"> delete_list </a></td>
<td style="text-align: left;">Deletes the list, provided it is not used
in a rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_delete_model/"> delete_model </a></td>
<td style="text-align: left;">Deletes a model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_delete_model_version/"> delete_model_version </a></td>
<td style="text-align: left;">Deletes a model version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_delete_outcome/"> delete_outcome </a></td>
<td style="text-align: left;">Deletes an outcome</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_delete_rule/"> delete_rule </a></td>
<td style="text-align: left;">Deletes the rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_delete_variable/"> delete_variable </a></td>
<td style="text-align: left;">Deletes a variable</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_describe_detector/"> describe_detector </a></td>
<td style="text-align: left;">Gets all versions for a specified
detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_describe_model_versions/"> describe_model_versions </a></td>
<td style="text-align: left;">Gets all of the model versions for the
specified model type or for the specified model type and model ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_batch_import_jobs/"> get_batch_import_jobs </a></td>
<td style="text-align: left;">Gets all batch import jobs or a specific
job of the specified ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_batch_prediction_jobs/"> get_batch_prediction_jobs </a></td>
<td style="text-align: left;">Gets all batch prediction jobs or a
specific job if you specify a job ID</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../frauddetector_get_delete_events_by_event_type_status/"> get_delete_events_by_event_type_status </a></td>
<td style="text-align: left;">Retrieves the status of a
DeleteEventsByEventType action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_detectors/"> get_detectors </a></td>
<td style="text-align: left;">Gets all detectors or a single detector if
a detectorId is specified</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_detector_version/"> get_detector_version </a></td>
<td style="text-align: left;">Gets a particular detector version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_entity_types/"> get_entity_types </a></td>
<td style="text-align: left;">Gets all entity types or a specific entity
type if a name is specified</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_event/"> get_event </a></td>
<td style="text-align: left;">Retrieves details of events stored with
Amazon Fraud Detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_event_prediction/"> get_event_prediction </a></td>
<td style="text-align: left;">Evaluates an event against a detector
version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_event_prediction_metadata/"> get_event_prediction_metadata </a></td>
<td style="text-align: left;">Gets details of the past fraud predictions
for the specified event ID, event type, detector ID, and detector
version ID that was generated in the specified time period</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_event_types/"> get_event_types </a></td>
<td style="text-align: left;">Gets all event types or a specific event
type if name is provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_external_models/"> get_external_models </a></td>
<td style="text-align: left;">Gets the details for one or more Amazon
SageMaker models that have been imported into the service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_kms_encryption_key/"> get_kms_encryption_key </a></td>
<td style="text-align: left;">Gets the encryption key if a KMS key has
been specified to be used to encrypt content in Amazon Fraud
Detector</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_labels/"> get_labels </a></td>
<td style="text-align: left;">Gets all labels or a specific label if
name is provided</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_list_elements/"> get_list_elements </a></td>
<td style="text-align: left;">Gets all the elements in the specified
list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_lists_metadata/"> get_lists_metadata </a></td>
<td style="text-align: left;">Gets the metadata of either all the lists
under the account or the specified list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_models/"> get_models </a></td>
<td style="text-align: left;">Gets one or more models</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_model_version/"> get_model_version </a></td>
<td style="text-align: left;">Gets the details of the specified model
version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_outcomes/"> get_outcomes </a></td>
<td style="text-align: left;">Gets one or more outcomes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_get_rules/"> get_rules </a></td>
<td style="text-align: left;">Get all rules for a detector (paginated)
if ruleId and ruleVersion are not specified</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_get_variables/"> get_variables </a></td>
<td style="text-align: left;">Gets all of the variables or the specific
variable</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_list_event_predictions/"> list_event_predictions </a></td>
<td style="text-align: left;">Gets a list of past predictions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags associated with the
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_put_detector/"> put_detector </a></td>
<td style="text-align: left;">Creates or updates a detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_put_entity_type/"> put_entity_type </a></td>
<td style="text-align: left;">Creates or updates an entity type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_put_event_type/"> put_event_type </a></td>
<td style="text-align: left;">Creates or updates an event type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_put_external_model/"> put_external_model </a></td>
<td style="text-align: left;">Creates or updates an Amazon SageMaker
model endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_put_kms_encryption_key/"> put_kms_encryption_key </a></td>
<td style="text-align: left;">Specifies the KMS key to be used to
encrypt content in Amazon Fraud Detector</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_put_label/"> put_label </a></td>
<td style="text-align: left;">Creates or updates label</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_put_outcome/"> put_outcome </a></td>
<td style="text-align: left;">Creates or updates an outcome</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_send_event/"> send_event </a></td>
<td style="text-align: left;">Stores events in Amazon Fraud Detector
without generating fraud predictions for those events</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns tags to a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_update_detector_version/"> update_detector_version </a></td>
<td style="text-align: left;">Updates a detector version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_update_detector_version_metadata/"> update_detector_version_metadata </a></td>
<td style="text-align: left;">Updates the detector version's
description</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_update_detector_version_status/"> update_detector_version_status </a></td>
<td style="text-align: left;">Updates the detector version’s status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_update_event_label/"> update_event_label </a></td>
<td style="text-align: left;">Updates the specified event with a new
label</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_update_list/"> update_list </a></td>
<td style="text-align: left;">Updates a list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_update_model/"> update_model </a></td>
<td style="text-align: left;">Updates model description</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_update_model_version/"> update_model_version </a></td>
<td style="text-align: left;">Updates a model version</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_update_model_version_status/"> update_model_version_status </a></td>
<td style="text-align: left;">Updates the status of a model version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_update_rule_metadata/"> update_rule_metadata </a></td>
<td style="text-align: left;">Updates a rule's metadata</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../frauddetector_update_rule_version/"> update_rule_version </a></td>
<td style="text-align: left;">Updates a rule version resulting in a new
rule version</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../frauddetector_update_variable/"> update_variable </a></td>
<td style="text-align: left;">Updates a variable</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- frauddetector()
    svc$batch_create_variable(
      Foo = 123
    )

    ## End(Not run)
