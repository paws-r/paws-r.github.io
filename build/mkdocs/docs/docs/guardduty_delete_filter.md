<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_delete_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the filter specified by the filter name

### Description

Deletes the filter specified by the filter name.

### Usage

    guardduty_delete_filter(DetectorId, FilterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_delete_filter_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector that the filter is
associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_delete_filter_:_FilterName">FilterName</code></td>
<td><p>[required] The name of the filter that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_filter(
      DetectorId = "string",
      FilterName = "string"
    )
