<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Comprehend

### Description

Amazon Comprehend is an Amazon Web Services service for gaining insight
into the content of documents. Use these actions to determine the topics
contained in your documents, the topics they discuss, the predominant
sentiment expressed in them, the predominant language used, and more.

### Usage

    comprehend(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_:_config">config</code></td>
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

    svc <- comprehend(
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
<td style="text-align: left;"><a href="../comprehend_batch_detect_dominant_language/"> batch_detect_dominant_language </a></td>
<td style="text-align: left;">Determines the dominant language of the
input text for a batch of documents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_batch_detect_entities/"> batch_detect_entities </a></td>
<td style="text-align: left;">Inspects the text of a batch of documents
for named entities and returns information about them</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_batch_detect_key_phrases/"> batch_detect_key_phrases </a></td>
<td style="text-align: left;">Detects the key noun phrases found in a
batch of documents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_batch_detect_sentiment/"> batch_detect_sentiment </a></td>
<td style="text-align: left;">Inspects a batch of documents and returns
an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or
NEGATIVE, in each one</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_batch_detect_syntax/"> batch_detect_syntax </a></td>
<td style="text-align: left;">Inspects the text of a batch of documents
for the syntax and part of speech of the words in the document and
returns information about them</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_batch_detect_targeted_sentiment/"> batch_detect_targeted_sentiment </a></td>
<td style="text-align: left;">Inspects a batch of documents and returns
a sentiment analysis for each entity identified in the documents</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_classify_document/"> classify_document </a></td>
<td style="text-align: left;">Creates a new document classification
request to analyze a single document in real-time, using a previously
created and trained custom model and an endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_contains_pii_entities/"> contains_pii_entities </a></td>
<td style="text-align: left;">Analyzes input text for the presence of
personally identifiable information (PII) and returns the labels of
identified PII entity types such as name, address, bank account number,
or phone number</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_create_dataset/"> create_dataset </a></td>
<td style="text-align: left;">Creates a dataset to upload training or
test data for a model associated with a flywheel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_create_document_classifier/"> create_document_classifier </a></td>
<td style="text-align: left;">Creates a new document classifier that you
can use to categorize documents</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_create_endpoint/"> create_endpoint </a></td>
<td style="text-align: left;">Creates a model-specific endpoint for
synchronous inference for a previously trained custom model For
information about endpoints, see Managing endpoints</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_create_entity_recognizer/"> create_entity_recognizer </a></td>
<td style="text-align: left;">Creates an entity recognizer using
submitted files</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_create_flywheel/"> create_flywheel </a></td>
<td style="text-align: left;">A flywheel is an Amazon Web Services
resource that orchestrates the ongoing training of a model for custom
classification or custom entity recognition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_delete_document_classifier/"> delete_document_classifier </a></td>
<td style="text-align: left;">Deletes a previously created document
classifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_delete_endpoint/"> delete_endpoint </a></td>
<td style="text-align: left;">Deletes a model-specific endpoint for a
previously-trained custom model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_delete_entity_recognizer/"> delete_entity_recognizer </a></td>
<td style="text-align: left;">Deletes an entity recognizer</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_delete_flywheel/"> delete_flywheel </a></td>
<td style="text-align: left;">Deletes a flywheel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes a resource-based policy that is
attached to a custom model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_describe_dataset/"> describe_dataset </a></td>
<td style="text-align: left;">Returns information about the dataset that
you specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_describe_document_classification_job/"> describe_document_classification_job </a></td>
<td style="text-align: left;">Gets the properties associated with a
document classification job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_describe_document_classifier/"> describe_document_classifier </a></td>
<td style="text-align: left;">Gets the properties associated with a
document classifier</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../comprehend_describe_dominant_language_detection_job/"> describe_dominant_language_detection_job </a></td>
<td style="text-align: left;">Gets the properties associated with a
dominant language detection job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_describe_endpoint/"> describe_endpoint </a></td>
<td style="text-align: left;">Gets the properties associated with a
specific endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_describe_entities_detection_job/"> describe_entities_detection_job </a></td>
<td style="text-align: left;">Gets the properties associated with an
entities detection job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_describe_entity_recognizer/"> describe_entity_recognizer </a></td>
<td style="text-align: left;">Provides details about an entity
recognizer including status, S3 buckets containing training data,
recognizer metadata, metrics, and so on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_describe_events_detection_job/"> describe_events_detection_job </a></td>
<td style="text-align: left;">Gets the status and details of an events
detection job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_describe_flywheel/"> describe_flywheel </a></td>
<td style="text-align: left;">Provides configuration information about
the flywheel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_describe_flywheel_iteration/"> describe_flywheel_iteration </a></td>
<td style="text-align: left;">Retrieve the configuration properties of a
flywheel iteration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_describe_key_phrases_detection_job/"> describe_key_phrases_detection_job </a></td>
<td style="text-align: left;">Gets the properties associated with a key
phrases detection job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_describe_pii_entities_detection_job/"> describe_pii_entities_detection_job </a></td>
<td style="text-align: left;">Gets the properties associated with a PII
entities detection job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_describe_resource_policy/"> describe_resource_policy </a></td>
<td style="text-align: left;">Gets the details of a resource-based
policy that is attached to a custom model, including the JSON body of
the policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_describe_sentiment_detection_job/"> describe_sentiment_detection_job </a></td>
<td style="text-align: left;">Gets the properties associated with a
sentiment detection job</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../comprehend_describe_targeted_sentiment_detection_job/"> describe_targeted_sentiment_detection_job </a></td>
<td style="text-align: left;">Gets the properties associated with a
targeted sentiment detection job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_describe_topics_detection_job/"> describe_topics_detection_job </a></td>
<td style="text-align: left;">Gets the properties associated with a
topic detection job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_detect_dominant_language/"> detect_dominant_language </a></td>
<td style="text-align: left;">Determines the dominant language of the
input text</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_detect_entities/"> detect_entities </a></td>
<td style="text-align: left;">Detects named entities in input text when
you use the pre-trained model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_detect_key_phrases/"> detect_key_phrases </a></td>
<td style="text-align: left;">Detects the key noun phrases found in the
text</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_detect_pii_entities/"> detect_pii_entities </a></td>
<td style="text-align: left;">Inspects the input text for entities that
contain personally identifiable information (PII) and returns
information about them</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_detect_sentiment/"> detect_sentiment </a></td>
<td style="text-align: left;">Inspects text and returns an inference of
the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_detect_syntax/"> detect_syntax </a></td>
<td style="text-align: left;">Inspects text for syntax and the part of
speech of words in the document</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_detect_targeted_sentiment/"> detect_targeted_sentiment </a></td>
<td style="text-align: left;">Inspects the input text and returns a
sentiment analysis for each entity identified in the text</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_import_model/"> import_model </a></td>
<td style="text-align: left;">Creates a new custom model that replicates
a source custom model that you import</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_list_datasets/"> list_datasets </a></td>
<td style="text-align: left;">List the datasets that you have configured
in this Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_document_classification_jobs/"> list_document_classification_jobs </a></td>
<td style="text-align: left;">Gets a list of the documentation
classification jobs that you have submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_list_document_classifiers/"> list_document_classifiers </a></td>
<td style="text-align: left;">Gets a list of the document classifiers
that you have created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_document_classifier_summaries/"> list_document_classifier_summaries </a></td>
<td style="text-align: left;">Gets a list of summaries of the document
classifiers that you have created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_list_dominant_language_detection_jobs/"> list_dominant_language_detection_jobs </a></td>
<td style="text-align: left;">Gets a list of the dominant language
detection jobs that you have submitted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_endpoints/"> list_endpoints </a></td>
<td style="text-align: left;">Gets a list of all existing endpoints that
you've created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_list_entities_detection_jobs/"> list_entities_detection_jobs </a></td>
<td style="text-align: left;">Gets a list of the entity detection jobs
that you have submitted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_entity_recognizers/"> list_entity_recognizers </a></td>
<td style="text-align: left;">Gets a list of the properties of all
entity recognizers that you created, including recognizers currently in
training</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_list_entity_recognizer_summaries/"> list_entity_recognizer_summaries </a></td>
<td style="text-align: left;">Gets a list of summaries for the entity
recognizers that you have created</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_events_detection_jobs/"> list_events_detection_jobs </a></td>
<td style="text-align: left;">Gets a list of the events detection jobs
that you have submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_list_flywheel_iteration_history/"> list_flywheel_iteration_history </a></td>
<td style="text-align: left;">Information about the history of a
flywheel iteration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_flywheels/"> list_flywheels </a></td>
<td style="text-align: left;">Gets a list of the flywheels that you have
created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_list_key_phrases_detection_jobs/"> list_key_phrases_detection_jobs </a></td>
<td style="text-align: left;">Get a list of key phrase detection jobs
that you have submitted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_pii_entities_detection_jobs/"> list_pii_entities_detection_jobs </a></td>
<td style="text-align: left;">Gets a list of the PII entity detection
jobs that you have submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_list_sentiment_detection_jobs/"> list_sentiment_detection_jobs </a></td>
<td style="text-align: left;">Gets a list of sentiment detection jobs
that you have submitted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags associated with a given
Amazon Comprehend resource</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../comprehend_list_targeted_sentiment_detection_jobs/"> list_targeted_sentiment_detection_jobs </a></td>
<td style="text-align: left;">Gets a list of targeted sentiment
detection jobs that you have submitted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_list_topics_detection_jobs/"> list_topics_detection_jobs </a></td>
<td style="text-align: left;">Gets a list of the topic detection jobs
that you have submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Attaches a resource-based policy to a
custom model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_start_document_classification_job/"> start_document_classification_job </a></td>
<td style="text-align: left;">Starts an asynchronous document
classification job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_start_dominant_language_detection_job/"> start_dominant_language_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous dominant language
detection job for a collection of documents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_start_entities_detection_job/"> start_entities_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous entity detection
job for a collection of documents</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_start_events_detection_job/"> start_events_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous event detection job
for a collection of documents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_start_flywheel_iteration/"> start_flywheel_iteration </a></td>
<td style="text-align: left;">Start the flywheel iteration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_start_key_phrases_detection_job/"> start_key_phrases_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous key phrase
detection job for a collection of documents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_start_pii_entities_detection_job/"> start_pii_entities_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous PII entity
detection job for a collection of documents</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_start_sentiment_detection_job/"> start_sentiment_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous sentiment detection
job for a collection of documents</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../comprehend_start_targeted_sentiment_detection_job/"> start_targeted_sentiment_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous targeted sentiment
detection job for a collection of documents</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_start_topics_detection_job/"> start_topics_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous topic detection
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_stop_dominant_language_detection_job/"> stop_dominant_language_detection_job </a></td>
<td style="text-align: left;">Stops a dominant language detection job in
progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_stop_entities_detection_job/"> stop_entities_detection_job </a></td>
<td style="text-align: left;">Stops an entities detection job in
progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_stop_events_detection_job/"> stop_events_detection_job </a></td>
<td style="text-align: left;">Stops an events detection job in
progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_stop_key_phrases_detection_job/"> stop_key_phrases_detection_job </a></td>
<td style="text-align: left;">Stops a key phrases detection job in
progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_stop_pii_entities_detection_job/"> stop_pii_entities_detection_job </a></td>
<td style="text-align: left;">Stops a PII entities detection job in
progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_stop_sentiment_detection_job/"> stop_sentiment_detection_job </a></td>
<td style="text-align: left;">Stops a sentiment detection job in
progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_stop_targeted_sentiment_detection_job/"> stop_targeted_sentiment_detection_job </a></td>
<td style="text-align: left;">Stops a targeted sentiment detection job
in progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_stop_training_document_classifier/"> stop_training_document_classifier </a></td>
<td style="text-align: left;">Stops a document classifier training job
while in progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_stop_training_entity_recognizer/"> stop_training_entity_recognizer </a></td>
<td style="text-align: left;">Stops an entity recognizer training job
while in progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates a specific tag with an Amazon
Comprehend resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a specific tag associated with an
Amazon Comprehend resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehend_update_endpoint/"> update_endpoint </a></td>
<td style="text-align: left;">Updates information about the specified
endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehend_update_flywheel/"> update_flywheel </a></td>
<td style="text-align: left;">Update the configuration information for
an existing flywheel</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- comprehend()
    svc$batch_detect_dominant_language(
      Foo = 123
    )

    ## End(Not run)
