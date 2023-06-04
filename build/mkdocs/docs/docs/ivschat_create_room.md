<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_create_room</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a room that allows clients to connect and pass messages

### Description

Creates a room that allows clients to connect and pass messages.

### Usage

    ivschat_create_room(loggingConfigurationIdentifiers,
      maximumMessageLength, maximumMessageRatePerSecond, messageReviewHandler,
      name, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivschat_create_room_:_loggingConfigurationIdentifiers">loggingConfigurationIdentifiers</code></td>
<td><p>Array of logging-configuration identifiers attached to the
room.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_create_room_:_maximumMessageLength">maximumMessageLength</code></td>
<td><p>Maximum number of characters in a single message. Messages are
expected to be UTF-8 encoded and this limit applies specifically to
rune/code-point count, not number of bytes. Default: 500.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_create_room_:_maximumMessageRatePerSecond">maximumMessageRatePerSecond</code></td>
<td><p>Maximum number of messages per second that can be sent to the
room (by all clients). Default: 10.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_create_room_:_messageReviewHandler">messageReviewHandler</code></td>
<td><p>Configuration information for optional review of
messages.</p></td>
</tr>
<tr class="odd">
<td><code id="ivschat_create_room_:_name">name</code></td>
<td><p>Room name. The value does not need to be unique.</p></td>
</tr>
<tr class="even">
<td><code id="ivschat_create_room_:_tags">tags</code></td>
<td><p>Tags to attach to the resource. Array of maps, each of the form
<code>string:string (key:value)</code>. See <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
AWS Resources</a> for details, including restrictions that apply to tags
and "Tag naming limits and requirements"; Amazon IVS Chat has no
constraints beyond what is documented there.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      createTime = as.POSIXct(
        "2015-01-01"
      ),
      id = "string",
      loggingConfigurationIdentifiers = list(
        "string"
      ),
      maximumMessageLength = 123,
      maximumMessageRatePerSecond = 123,
      messageReviewHandler = list(
        fallbackResult = "ALLOW"|"DENY",
        uri = "string"
      ),
      name = "string",
      tags = list(
        "string"
      ),
      updateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_room(
      loggingConfigurationIdentifiers = list(
        "string"
      ),
      maximumMessageLength = 123,
      maximumMessageRatePerSecond = 123,
      messageReviewHandler = list(
        fallbackResult = "ALLOW"|"DENY",
        uri = "string"
      ),
      name = "string",
      tags = list(
        "string"
      )
    )
