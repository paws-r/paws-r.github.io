<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_coip_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a pool of customer-owned IP (CoIP) addresses

### Description

Deletes a pool of customer-owned IP (CoIP) addresses.

### Usage

    ec2_delete_coip_pool(CoipPoolId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_coip_pool_:_CoipPoolId">CoipPoolId</code></td>
<td><p>[required] The ID of the CoIP pool that you want to
delete.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_coip_pool_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CoipPool = list(
        PoolId = "string",
        PoolCidrs = list(
          "string"
        ),
        LocalGatewayRouteTableId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        PoolArn = "string"
      )
    )

### Request syntax

    svc$delete_coip_pool(
      CoipPoolId = "string",
      DryRun = TRUE|FALSE
    )
