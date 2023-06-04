<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_update_publishing_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates information about the publishing destination specified by the destinationId

### Description

Updates information about the publishing destination specified by the
`destinationId`.

### Usage

    guardduty_update_publishing_destination(DetectorId, DestinationId,
      DestinationProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_update_publishing_destination_:_DetectorId">DetectorId</code></td>
<td><p>[required] The ID of the detector associated with the publishing
destinations to update.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_update_publishing_destination_:_DestinationId">DestinationId</code></td>
<td><p>[required] The ID of the publishing destination to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="guardduty_update_publishing_destination_:_DestinationProperties">DestinationProperties</code></td>
<td><p>A <code>DestinationProperties</code> object that includes the
<code>DestinationArn</code> and <code>KmsKeyArn</code> of the publishing
destination.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_publishing_destination(
      DetectorId = "string",
      DestinationId = "string",
      DestinationProperties = list(
        DestinationArn = "string",
        KmsKeyArn = "string"
      )
    )
