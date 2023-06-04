<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a filter

### Description

Deletes a filter.

### Usage

    personalize_delete_filter(filterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_filter_:_filterArn">filterArn</code></td>
<td><p>[required] The ARN of the filter to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_filter(
      filterArn = "string"
    )
