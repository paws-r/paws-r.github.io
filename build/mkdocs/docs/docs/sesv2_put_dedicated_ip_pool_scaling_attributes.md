<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_dedicated_ip_pool_scaling_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to convert a dedicated IP pool to a different scaling mode

### Description

Used to convert a dedicated IP pool to a different scaling mode.

`MANAGED` pools cannot be converted to `STANDARD` scaling mode.

### Usage

    sesv2_put_dedicated_ip_pool_scaling_attributes(PoolName, ScalingMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_dedicated_ip_pool_scaling_attributes_:_PoolName">PoolName</code></td>
<td><p>[required] The name of the dedicated IP pool.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_dedicated_ip_pool_scaling_attributes_:_ScalingMode">ScalingMode</code></td>
<td><p>[required] The scaling mode to apply to the dedicated IP
pool.</p>
<p>Changing the scaling mode from <code>MANAGED</code> to
<code>STANDARD</code> is not supported.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_dedicated_ip_pool_scaling_attributes(
      PoolName = "string",
      ScalingMode = "STANDARD"|"MANAGED"
    )

### Examples

    ## Not run: 
    # This example converts a dedicated IP pool from STANDARD to MANAGED.
    svc$put_dedicated_ip_pool_scaling_attributes(
      PoolName = "sample-ses-pool",
      ScalingMode = "MANAGED"
    )

    ## End(Not run)
