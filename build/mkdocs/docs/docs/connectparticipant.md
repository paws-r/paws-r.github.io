<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectparticipant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Connect Participant Service

### Description

Amazon Connect is an easy-to-use omnichannel cloud contact center
service that enables companies of any size to deliver superior customer
service at a lower cost. Amazon Connect communications capabilities make
it easy for companies to deliver personalized interactions across
communication channels, including chat.

Use the Amazon Connect Participant Service to manage participants (for
example, agents, customers, and managers listening in), and to send
messages and events within a chat contact. The APIs in the service
enable the following: sending chat messages, attachment sharing,
managing a participant's connection state and message events, and
retrieving chat transcripts.

### Usage

    connectparticipant(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connectparticipant_:_config">config</code></td>
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

    svc <- connectparticipant(
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
<td style="text-align: left;"><a href="../connectparticipant_complete_attachment_upload/"> complete_attachment_upload </a></td>
<td style="text-align: left;">Allows you to confirm that the attachment
has been uploaded using the pre-signed URL provided in
StartAttachmentUpload API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectparticipant_create_participant_connection/"> create_participant_connection </a></td>
<td style="text-align: left;">Creates the participant's connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectparticipant_disconnect_participant/"> disconnect_participant </a></td>
<td style="text-align: left;">Disconnects a participant</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectparticipant_get_attachment/"> get_attachment </a></td>
<td style="text-align: left;">Provides a pre-signed URL for download of
a completed attachment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectparticipant_get_transcript/"> get_transcript </a></td>
<td style="text-align: left;">Retrieves a transcript of the session,
including details about any attachments</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectparticipant_send_event/"> send_event </a></td>
<td style="text-align: left;">Sends an event</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../connectparticipant_send_message/"> send_message </a></td>
<td style="text-align: left;">Sends a message</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../connectparticipant_start_attachment_upload/"> start_attachment_upload </a></td>
<td style="text-align: left;">Provides a pre-signed Amazon S3 URL in
response for uploading the file directly to S3</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- connectparticipant()
    svc$complete_attachment_upload(
      Foo = 123
    )

    ## End(Not run)
