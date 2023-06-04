<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_delete_ip_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the IPSet specified by the ipSetId

### Description

Deletes the IPSet specified by the `ipSetId`. IPSets are called trusted
IP lists in the console user interface.

### Usage

    guardduty_delete_ip_set(DetectorId, IpSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_delete_ip_set_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector associated with the
IPSet.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_delete_ip_set_:_IpSetId">IpSetId</code></td>
<td><p>[required] The unique ID of the IPSet to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_ip_set(
      DetectorId = "string",
      IpSetId = "string"
    )
