<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Pinpoint SMS and Voice Service

### Description

Pinpoint SMS and Voice Messaging public facing APIs

### Usage

    pinpointsmsvoice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="pinpointsmsvoice_:_config">config</code></td>
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

    svc <- pinpointsmsvoice(
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
<td style="text-align: left;"><a href="../pinpointsmsvoice_create_configuration_set/"> create_configuration_set </a></td>
<td style="text-align: left;">Create a new configuration set</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointsmsvoice_create_configuration_set_event_destination/"> create_configuration_set_event_destination </a></td>
<td style="text-align: left;">Create a new event destination in a
configuration set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoice_delete_configuration_set/"> delete_configuration_set </a></td>
<td style="text-align: left;">Deletes an existing configuration set</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointsmsvoice_delete_configuration_set_event_destination/"> delete_configuration_set_event_destination </a></td>
<td style="text-align: left;">Deletes an event destination in a
configuration set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../pinpointsmsvoice_get_configuration_set_event_destinations/"> get_configuration_set_event_destinations </a></td>
<td style="text-align: left;">Obtain information about an event
destination, including the types of events it reports, the Amazon
Resource Name (ARN) of the destination, and the name of the event
destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoice_list_configuration_sets/"> list_configuration_sets </a></td>
<td style="text-align: left;">List all of the configuration sets
associated with your Amazon Pinpoint account in the current region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoice_send_voice_message/"> send_voice_message </a></td>
<td style="text-align: left;">Create a new voice message and send it to
a recipient's phone number</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointsmsvoice_update_configuration_set_event_destination/"> update_configuration_set_event_destination </a></td>
<td style="text-align: left;">Update an event destination in a
configuration set</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- pinpointsmsvoice()
    svc$create_configuration_set(
      Foo = 123
    )

    ## End(Not run)
