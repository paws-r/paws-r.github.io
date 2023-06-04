<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_get_incident_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details for the specified incident record

### Description

Returns the details for the specified incident record.

### Usage

    ssmincidents_get_incident_record(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmincidents_get_incident_record_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident
record.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      incidentRecord = list(
        arn = "string",
        automationExecutions = list(
          list(
            ssmExecutionArn = "string"
          )
        ),
        chatChannel = list(
          chatbotSns = list(
            "string"
          ),
          empty = list()
        ),
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        dedupeString = "string",
        impact = 123,
        incidentRecordSource = list(
          createdBy = "string",
          invokedBy = "string",
          resourceArn = "string",
          source = "string"
        ),
        lastModifiedBy = "string",
        lastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        notificationTargets = list(
          list(
            snsTopicArn = "string"
          )
        ),
        resolvedTime = as.POSIXct(
          "2015-01-01"
        ),
        status = "OPEN"|"RESOLVED",
        summary = "string",
        title = "string"
      )
    )

### Request syntax

    svc$get_incident_record(
      arn = "string"
    )
