<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_describe_notification_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specified notification rule

### Description

Returns information about a specified notification rule.

### Usage

    codestarnotifications_describe_notification_rule(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_describe_notification_rule_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the notification
rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Name = "string",
      EventTypes = list(
        list(
          EventTypeId = "string",
          ServiceName = "string",
          EventTypeName = "string",
          ResourceType = "string"
        )
      ),
      Resource = "string",
      Targets = list(
        list(
          TargetAddress = "string",
          TargetType = "string",
          TargetStatus = "PENDING"|"ACTIVE"|"UNREACHABLE"|"INACTIVE"|"DEACTIVATED"
        )
      ),
      DetailType = "BASIC"|"FULL",
      CreatedBy = "string",
      Status = "ENABLED"|"DISABLED",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$describe_notification_rule(
      Arn = "string"
    )
