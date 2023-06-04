<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Translate

### Description

Provides translation of the input content from the source language to
the target language.

### Usage

    translate(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_:_config">config</code></td>
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

    svc <- translate(
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
<td style="text-align: left;"><a href="../translate_create_parallel_data/"> create_parallel_data </a></td>
<td style="text-align: left;">Creates a parallel data resource in Amazon
Translate by importing an input file from Amazon S3</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_delete_parallel_data/"> delete_parallel_data </a></td>
<td style="text-align: left;">Deletes a parallel data resource in Amazon
Translate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_delete_terminology/"> delete_terminology </a></td>
<td style="text-align: left;">A synchronous action that deletes a custom
terminology</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_describe_text_translation_job/"> describe_text_translation_job </a></td>
<td style="text-align: left;">Gets the properties associated with an
asynchronous batch translation job including name, ID, status, source
and target languages, input/output S3 buckets, and so on</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_get_parallel_data/"> get_parallel_data </a></td>
<td style="text-align: left;">Provides information about a parallel data
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_get_terminology/"> get_terminology </a></td>
<td style="text-align: left;">Retrieves a custom terminology</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_import_terminology/"> import_terminology </a></td>
<td style="text-align: left;">Creates or updates a custom terminology,
depending on whether one already exists for the given terminology
name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_list_languages/"> list_languages </a></td>
<td style="text-align: left;">Provides a list of languages (RFC-5646
codes and names) that Amazon Translate supports</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_list_parallel_data/"> list_parallel_data </a></td>
<td style="text-align: left;">Provides a list of your parallel data
resources in Amazon Translate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags associated with a given
Amazon Translate resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_list_terminologies/"> list_terminologies </a></td>
<td style="text-align: left;">Provides a list of custom terminologies
associated with your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_list_text_translation_jobs/"> list_text_translation_jobs </a></td>
<td style="text-align: left;">Gets a list of the batch translation jobs
that you have submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_start_text_translation_job/"> start_text_translation_job </a></td>
<td style="text-align: left;">Starts an asynchronous batch translation
job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_stop_text_translation_job/"> stop_text_translation_job </a></td>
<td style="text-align: left;">Stops an asynchronous batch translation
job that is in progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates a specific tag with a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_translate_document/"> translate_document </a></td>
<td style="text-align: left;">Translates the input document from the
source language to the target language</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_translate_text/"> translate_text </a></td>
<td style="text-align: left;">Translates input text from the source
language to the target language</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../translate_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a specific tag associated with an
Amazon Translate resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../translate_update_parallel_data/"> update_parallel_data </a></td>
<td style="text-align: left;">Updates a previously created parallel data
resource by importing a new input file from Amazon S3</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- translate()
    svc$create_parallel_data(
      Foo = 123
    )

    ## End(Not run)
