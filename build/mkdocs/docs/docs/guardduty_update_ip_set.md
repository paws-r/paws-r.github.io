<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_update_ip_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the IPSet specified by the IPSet ID

### Description

Updates the IPSet specified by the IPSet ID.

### Usage

    guardduty_update_ip_set(DetectorId, IpSetId, Name, Location, Activate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_update_ip_set_:_DetectorId">DetectorId</code></td>
<td><p>[required] The detectorID that specifies the GuardDuty service
whose IPSet you want to update.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_update_ip_set_:_IpSetId">IpSetId</code></td>
<td><p>[required] The unique ID that specifies the IPSet that you want
to update.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_update_ip_set_:_Name">Name</code></td>
<td><p>The unique ID that specifies the IPSet that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code id="guardduty_update_ip_set_:_Location">Location</code></td>
<td><p>The updated URI of the file that contains the IPSet.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_update_ip_set_:_Activate">Activate</code></td>
<td><p>The updated Boolean value that specifies whether the IPSet is
active or not.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_ip_set(
      DetectorId = "string",
      IpSetId = "string",
      Name = "string",
      Location = "string",
      Activate = TRUE|FALSE
    )
