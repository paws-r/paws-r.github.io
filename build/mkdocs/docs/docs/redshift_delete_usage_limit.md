<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_usage_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a usage limit from a cluster

### Description

Deletes a usage limit from a cluster.

### Usage

    redshift_delete_usage_limit(UsageLimitId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_usage_limit_:_UsageLimitId">UsageLimitId</code></td>
<td><p>[required] The identifier of the usage limit to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_usage_limit(
      UsageLimitId = "string"
    )
