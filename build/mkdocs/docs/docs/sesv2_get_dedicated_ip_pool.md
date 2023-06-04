<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_dedicated_ip_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve information about the dedicated pool

### Description

Retrieve information about the dedicated pool.

### Usage

    sesv2_get_dedicated_ip_pool(PoolName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_dedicated_ip_pool_:_PoolName">PoolName</code></td>
<td><p>[required] The name of the dedicated IP pool to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DedicatedIpPool = list(
        PoolName = "string",
        ScalingMode = "STANDARD"|"MANAGED"
      )
    )

### Request syntax

    svc$get_dedicated_ip_pool(
      PoolName = "string"
    )
