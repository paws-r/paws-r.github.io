<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_delete_publishing_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the publishing definition with the specified destinationId

### Description

Deletes the publishing definition with the specified `destinationId`.

### Usage

    guardduty_delete_publishing_destination(DetectorId, DestinationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_delete_publishing_destination_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector associated with the
publishing destination to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_delete_publishing_destination_:_DestinationId">DestinationId</code></td>
<td><p>[required] The ID of the publishing destination to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_publishing_destination(
      DetectorId = "string",
      DestinationId = "string"
    )
