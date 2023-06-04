<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_update_room</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a room’s configuration

### Description

Updates a room’s configuration.

### Usage

    ivschat_update_room(identifier, loggingConfigurationIdentifiers,
      maximumMessageLength, maximumMessageRatePerSecond, messageReviewHandler,
      name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivschat_update_room_:_identifier">identifier</code></td>
<td><p>[required] Identifier of the room to be updated. Currently this
must be an ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_update_room_:_loggingConfigurationIdentifiers">loggingConfigurationIdentifiers</code></td>
<td><p>Array of logging-configuration identifiers attached to the
room.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_update_room_:_maximumMessageLength">maximumMessageLength</code></td>
<td><p>The maximum number of characters in a single message. Messages
are expected to be UTF-8 encoded and this limit applies specifically to
rune/code-point count, not number of bytes. Default: 500.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_update_room_:_maximumMessageRatePerSecond">maximumMessageRatePerSecond</code></td>
<td><p>Maximum number of messages per second that can be sent to the
room (by all clients). Default: 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_update_room_:_messageReviewHandler">messageReviewHandler</code></td>
<td><p>Configuration information for optional review of messages.
Specify an empty <code>uri</code> string to disassociate a message
review handler from the specified room.</p></td>
</tr>
<tr class="even">
<td><code id="ivschat_update_room_:_name">name</code></td>
<td><p>Room name. The value does not need to be unique.</p></td>
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

    svc$update_room(
      identifier = "string",
      loggingConfigurationIdentifiers = list(
        "string"
      ),
      maximumMessageLength = 123,
      maximumMessageRatePerSecond = 123,
      messageReviewHandler = list(
        fallbackResult = "ALLOW"|"DENY",
        uri = "string"
      ),
      name = "string"
    )
