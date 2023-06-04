<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_get_ip_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the IPSet specified by the ipSetId

### Description

Retrieves the IPSet specified by the `ipSetId`.

### Usage

    guardduty_get_ip_set(DetectorId, IpSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="guardduty_get_ip_set_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector that the IPSet is
associated with.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_get_ip_set_:_IpSetId">IpSetId</code></td>
<td><p>[required] The unique ID of the IPSet to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Format = "TXT"|"STIX"|"OTX_CSV"|"ALIEN_VAULT"|"PROOF_POINT"|"FIRE_EYE",
      Location = "string",
      Status = "INACTIVE"|"ACTIVATING"|"ACTIVE"|"DEACTIVATING"|"ERROR"|"DELETE_PENDING"|"DELETED",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_ip_set(
      DetectorId = "string",
      IpSetId = "string"
    )
