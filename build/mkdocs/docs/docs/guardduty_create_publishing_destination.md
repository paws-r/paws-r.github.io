<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_create_publishing_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a publishing destination to export findings to

### Description

Creates a publishing destination to export findings to. The resource to
export findings to must exist before you use this operation.

### Usage

    guardduty_create_publishing_destination(DetectorId, DestinationType,
      DestinationProperties, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_create_publishing_destination_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the GuardDuty detector associated with the
publishing destination.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_create_publishing_destination_:_DestinationType">DestinationType</code></td>
<td><p>[required] The type of resource for the publishing destination.
Currently only Amazon S3 buckets are supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_create_publishing_destination_:_DestinationProperties">DestinationProperties</code></td>
<td><p>[required] The properties of the publishing destination,
including the ARNs for the destination and the KMS key used for
encryption.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_create_publishing_destination_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DestinationId = "string"
    )

### Request syntax

    svc$create_publishing_destination(
      DetectorId = "string",
      DestinationType = "S3",
      DestinationProperties = list(
        DestinationArn = "string",
        KmsKeyArn = "string"
      ),
      ClientToken = "string"
    )
