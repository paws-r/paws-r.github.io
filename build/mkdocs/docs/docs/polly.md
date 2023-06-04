<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Polly

### Description

Amazon Polly is a web service that makes it easy to synthesize speech
from text.

The Amazon Polly service provides API operations for synthesizing
high-quality speech from plain text and Speech Synthesis Markup Language
(SSML), along with managing pronunciations lexicons that enable you to
get the best results for your application domain.

### Usage

    polly(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="polly_:_config">config</code></td>
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

    svc <- polly(
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
<td style="text-align: left;"><a href="../polly_delete_lexicon/"> delete_lexicon </a></td>
<td style="text-align: left;">Deletes the specified pronunciation
lexicon stored in an Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../polly_describe_voices/"> describe_voices </a></td>
<td style="text-align: left;">Returns the list of voices that are
available for use when requesting speech synthesis</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../polly_get_lexicon/"> get_lexicon </a></td>
<td style="text-align: left;">Returns the content of the specified
pronunciation lexicon stored in an Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../polly_get_speech_synthesis_task/"> get_speech_synthesis_task </a></td>
<td style="text-align: left;">Retrieves a specific SpeechSynthesisTask
object based on its TaskID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../polly_list_lexicons/"> list_lexicons </a></td>
<td style="text-align: left;">Returns a list of pronunciation lexicons
stored in an Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../polly_list_speech_synthesis_tasks/"> list_speech_synthesis_tasks </a></td>
<td style="text-align: left;">Returns a list of SpeechSynthesisTask
objects ordered by their creation date</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../polly_put_lexicon/"> put_lexicon </a></td>
<td style="text-align: left;">Stores a pronunciation lexicon in an
Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../polly_start_speech_synthesis_task/"> start_speech_synthesis_task </a></td>
<td style="text-align: left;">Allows the creation of an asynchronous
synthesis task, by starting a new SpeechSynthesisTask</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../polly_synthesize_speech/"> synthesize_speech </a></td>
<td style="text-align: left;">Synthesizes UTF-8 input, plain text or
SSML, to a stream of bytes</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- polly()
    # Deletes a specified pronunciation lexicon stored in an AWS Region.
    svc$delete_lexicon(
      Name = "example"
    )

    ## End(Not run)
