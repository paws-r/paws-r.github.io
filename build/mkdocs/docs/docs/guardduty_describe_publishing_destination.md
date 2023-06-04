<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_describe_publishing_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the publishing destination specified by the provided destinationId

### Description

Returns information about the publishing destination specified by the
provided `destinationId`.

### Usage

    guardduty_describe_publishing_destination(DetectorId, DestinationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_describe_publishing_destination_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector associated with the
publishing destination to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_describe_publishing_destination_:_DestinationId">DestinationId</code></td>
<td><p>[required] The ID of the publishing destination to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DestinationId = "string",
      DestinationType = "S3",
      Status = "PENDING_VERIFICATION"|"PUBLISHING"|"UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY"|"STOPPED",
      PublishingFailureStartTimestamp = 123,
      DestinationProperties = list(
        DestinationArn = "string",
        KmsKeyArn = "string"
      )
    )

### Request syntax

    svc$describe_publishing_destination(
      DetectorId = "string",
      DestinationId = "string"
    )
