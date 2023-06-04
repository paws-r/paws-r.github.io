<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_get_room</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified room

### Description

Gets the specified room.

### Usage

    ivschat_get_room(identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivschat_get_room_:_identifier">identifier</code></td>
<td><p>[required] Identifier of the room for which the configuration is
to be retrieved. Currently this must be an ARN.</p></td>
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

    svc$get_room(
      identifier = "string"
    )
