<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_delete_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a filter resource

### Description

Deletes a filter resource.

### Usage

    inspector2_delete_filter(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="inspector2_delete_filter_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the filter to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string"
    )

### Request syntax

    svc$delete_filter(
      arn = "string"
    )
