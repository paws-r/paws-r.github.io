<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Transcribe Service

### Description

Amazon Transcribe offers three main types of batch transcription:
**Standard**, **Medical**, and **Call Analytics**.

-   **Standard transcriptions** are the most common option. Refer to for
    details.

-   **Medical transcriptions** are tailored to medical professionals and
    incorporate medical terms. A common use case for this service is
    transcribing doctor-patient dialogue into after-visit notes. Refer
    to for details.

-   **Call Analytics transcriptions** are designed for use with call
    center audio on two different channels; if you're looking for
    insight into customer service calls, use this option. Refer to for
    details.

### Usage

    transcribeservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="transcribeservice_:_config">config</code></td>
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

    svc <- transcribeservice(
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
<td style="text-align: left;"><a href="../transcribeservice_create_call_analytics_category/"> create_call_analytics_category </a></td>
<td style="text-align: left;">Creates a new Call Analytics category</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_create_language_model/"> create_language_model </a></td>
<td style="text-align: left;">Creates a new custom language model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_create_medical_vocabulary/"> create_medical_vocabulary </a></td>
<td style="text-align: left;">Creates a new custom medical
vocabulary</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_create_vocabulary/"> create_vocabulary </a></td>
<td style="text-align: left;">Creates a new custom vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_create_vocabulary_filter/"> create_vocabulary_filter </a></td>
<td style="text-align: left;">Creates a new custom vocabulary
filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_delete_call_analytics_category/"> delete_call_analytics_category </a></td>
<td style="text-align: left;">Deletes a Call Analytics category</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_delete_call_analytics_job/"> delete_call_analytics_job </a></td>
<td style="text-align: left;">Deletes a Call Analytics job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_delete_language_model/"> delete_language_model </a></td>
<td style="text-align: left;">Deletes a custom language model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_delete_medical_transcription_job/"> delete_medical_transcription_job </a></td>
<td style="text-align: left;">Deletes a medical transcription job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_delete_medical_vocabulary/"> delete_medical_vocabulary </a></td>
<td style="text-align: left;">Deletes a custom medical vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_delete_transcription_job/"> delete_transcription_job </a></td>
<td style="text-align: left;">Deletes a transcription job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_delete_vocabulary/"> delete_vocabulary </a></td>
<td style="text-align: left;">Deletes a custom vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_delete_vocabulary_filter/"> delete_vocabulary_filter </a></td>
<td style="text-align: left;">Deletes a custom vocabulary filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_describe_language_model/"> describe_language_model </a></td>
<td style="text-align: left;">Provides information about the specified
custom language model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_get_call_analytics_category/"> get_call_analytics_category </a></td>
<td style="text-align: left;">Provides information about the specified
Call Analytics category</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_get_call_analytics_job/"> get_call_analytics_job </a></td>
<td style="text-align: left;">Provides information about the specified
Call Analytics job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_get_medical_transcription_job/"> get_medical_transcription_job </a></td>
<td style="text-align: left;">Provides information about the specified
medical transcription job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_get_medical_vocabulary/"> get_medical_vocabulary </a></td>
<td style="text-align: left;">Provides information about the specified
custom medical vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_get_transcription_job/"> get_transcription_job </a></td>
<td style="text-align: left;">Provides information about the specified
transcription job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_get_vocabulary/"> get_vocabulary </a></td>
<td style="text-align: left;">Provides information about the specified
custom vocabulary</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_get_vocabulary_filter/"> get_vocabulary_filter </a></td>
<td style="text-align: left;">Provides information about the specified
custom vocabulary filter</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_list_call_analytics_categories/"> list_call_analytics_categories </a></td>
<td style="text-align: left;">Provides a list of Call Analytics
categories, including all rules that make up each category</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_list_call_analytics_jobs/"> list_call_analytics_jobs </a></td>
<td style="text-align: left;">Provides a list of Call Analytics jobs
that match the specified criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_list_language_models/"> list_language_models </a></td>
<td style="text-align: left;">Provides a list of custom language models
that match the specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_list_medical_transcription_jobs/"> list_medical_transcription_jobs </a></td>
<td style="text-align: left;">Provides a list of medical transcription
jobs that match the specified criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_list_medical_vocabularies/"> list_medical_vocabularies </a></td>
<td style="text-align: left;">Provides a list of custom medical
vocabularies that match the specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags associated with the
specified transcription job, vocabulary, model, or resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_list_transcription_jobs/"> list_transcription_jobs </a></td>
<td style="text-align: left;">Provides a list of transcription jobs that
match the specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_list_vocabularies/"> list_vocabularies </a></td>
<td style="text-align: left;">Provides a list of custom vocabularies
that match the specified criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_list_vocabulary_filters/"> list_vocabulary_filters </a></td>
<td style="text-align: left;">Provides a list of custom vocabulary
filters that match the specified criteria</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_start_call_analytics_job/"> start_call_analytics_job </a></td>
<td style="text-align: left;">Transcribes the audio from a customer
service call and applies any additional Request Parameters you choose to
include in your request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_start_medical_transcription_job/"> start_medical_transcription_job </a></td>
<td style="text-align: left;">Transcribes the audio from a medical
dictation or conversation and applies any additional Request Parameters
you choose to include in your request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_start_transcription_job/"> start_transcription_job </a></td>
<td style="text-align: left;">Transcribes the audio from a media file
and applies any additional Request Parameters you choose to include in
your request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more custom tags, each in the
form of a key:value pair, to the specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the specified tags from the
specified Amazon Transcribe resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_update_call_analytics_category/"> update_call_analytics_category </a></td>
<td style="text-align: left;">Updates the specified Call Analytics
category with new rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_update_medical_vocabulary/"> update_medical_vocabulary </a></td>
<td style="text-align: left;">Updates an existing custom medical
vocabulary with new values</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../transcribeservice_update_vocabulary/"> update_vocabulary </a></td>
<td style="text-align: left;">Updates an existing custom vocabulary with
new values</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../transcribeservice_update_vocabulary_filter/"> update_vocabulary_filter </a></td>
<td style="text-align: left;">Updates an existing custom vocabulary
filter with a new list of words</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- transcribeservice()
    svc$create_call_analytics_category(
      Foo = 123
    )

    ## End(Not run)
