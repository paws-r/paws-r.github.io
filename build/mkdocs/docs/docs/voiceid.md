<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Voice ID

### Description

Amazon Connect Voice ID provides real-time caller authentication and
fraud risk detection, which make voice interactions in contact centers
more secure and efficient.

### Usage

    voiceid(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_:_config">config</code></td>
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

    svc <- voiceid(
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
<td style="text-align: left;"><a href="../voiceid_associate_fraudster/"> associate_fraudster </a></td>
<td style="text-align: left;">Associates the fraudsters with the
watchlist specified in the same domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_create_domain/"> create_domain </a></td>
<td style="text-align: left;">Creates a domain that contains all Amazon
Connect Voice ID data, such as speakers, fraudsters, customer audio, and
voiceprints</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_create_watchlist/"> create_watchlist </a></td>
<td style="text-align: left;">Creates a watchlist that fraudsters can be
a part of</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">Deletes the specified domain from Voice
ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_delete_fraudster/"> delete_fraudster </a></td>
<td style="text-align: left;">Deletes the specified fraudster from Voice
ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_delete_speaker/"> delete_speaker </a></td>
<td style="text-align: left;">Deletes the specified speaker from Voice
ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_delete_watchlist/"> delete_watchlist </a></td>
<td style="text-align: left;">Deletes the specified watchlist from Voice
ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_describe_domain/"> describe_domain </a></td>
<td style="text-align: left;">Describes the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_describe_fraudster/"> describe_fraudster </a></td>
<td style="text-align: left;">Describes the specified fraudster</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_describe_fraudster_registration_job/"> describe_fraudster_registration_job </a></td>
<td style="text-align: left;">Describes the specified fraudster
registration job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_describe_speaker/"> describe_speaker </a></td>
<td style="text-align: left;">Describes the specified speaker</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_describe_speaker_enrollment_job/"> describe_speaker_enrollment_job </a></td>
<td style="text-align: left;">Describes the specified speaker enrollment
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_describe_watchlist/"> describe_watchlist </a></td>
<td style="text-align: left;">Describes the specified watchlist</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_disassociate_fraudster/"> disassociate_fraudster </a></td>
<td style="text-align: left;">Disassociates the fraudsters from the
watchlist specified</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_evaluate_session/"> evaluate_session </a></td>
<td style="text-align: left;">Evaluates a specified session based on
audio data accumulated during a streaming Amazon Connect Voice ID
call</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_list_domains/"> list_domains </a></td>
<td style="text-align: left;">Lists all the domains in the Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_list_fraudster_registration_jobs/"> list_fraudster_registration_jobs </a></td>
<td style="text-align: left;">Lists all the fraudster registration jobs
in the domain with the given JobStatus</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_list_fraudsters/"> list_fraudsters </a></td>
<td style="text-align: left;">Lists all fraudsters in a specified
watchlist or domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_list_speaker_enrollment_jobs/"> list_speaker_enrollment_jobs </a></td>
<td style="text-align: left;">Lists all the speaker enrollment jobs in
the domain with the specified JobStatus</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_list_speakers/"> list_speakers </a></td>
<td style="text-align: left;">Lists all speakers in a specified
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags associated with a specified
Voice ID resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_list_watchlists/"> list_watchlists </a></td>
<td style="text-align: left;">Lists all watchlists in a specified
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_opt_out_speaker/"> opt_out_speaker </a></td>
<td style="text-align: left;">Opts out a speaker from Voice ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_start_fraudster_registration_job/"> start_fraudster_registration_job </a></td>
<td style="text-align: left;">Starts a new batch fraudster registration
job using provided details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_start_speaker_enrollment_job/"> start_speaker_enrollment_job </a></td>
<td style="text-align: left;">Starts a new batch speaker enrollment job
using specified details</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tags a Voice ID resource with the provided
list of tags</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes specified tags from a specified
Amazon Connect Voice ID resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../voiceid_update_domain/"> update_domain </a></td>
<td style="text-align: left;">Updates the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../voiceid_update_watchlist/"> update_watchlist </a></td>
<td style="text-align: left;">Updates the specified watchlist</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- voiceid()
    svc$associate_fraudster(
      Foo = 123
    )

    ## End(Not run)
