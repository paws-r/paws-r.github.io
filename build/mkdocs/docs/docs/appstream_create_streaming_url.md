<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_streaming_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a temporary URL to start an AppStream 2

### Description

Creates a temporary URL to start an AppStream 2.0 streaming session for
the specified user. A streaming URL enables application streaming to be
tested without user setup.

### Usage

    appstream_create_streaming_url(StackName, FleetName, UserId,
      ApplicationId, Validity, SessionContext)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_create_streaming_url_:_StackName">StackName</code></td>
<td><p>[required] The name of the stack.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_streaming_url_:_FleetName">FleetName</code></td>
<td><p>[required] The name of the fleet.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_streaming_url_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_streaming_url_:_ApplicationId">ApplicationId</code></td>
<td><p>The name of the application to launch after the session starts.
This is the name that you specified as <strong>Name</strong> in the
Image Assistant. If your fleet is enabled for the
<strong>Desktop</strong> stream view, you can also choose to launch
directly to the operating system desktop. To do so, specify
<strong>Desktop</strong>.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_streaming_url_:_Validity">Validity</code></td>
<td><p>The time that the streaming URL will be valid, in seconds.
Specify a value between 1 and 604800 seconds. The default is 60
seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_streaming_url_:_SessionContext">SessionContext</code></td>
<td><p>The session context. For more information, see <a
href="https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters">Session
Context</a> in the <em>Amazon AppStream 2.0 Administration
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamingURL = "string",
      Expires = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_streaming_url(
      StackName = "string",
      FleetName = "string",
      UserId = "string",
      ApplicationId = "string",
      Validity = 123,
      SessionContext = "string"
    )
