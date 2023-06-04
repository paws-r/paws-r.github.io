<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_spot_datafeed_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the data feed for Spot Instances

### Description

Deletes the data feed for Spot Instances.

### Usage

    ec2_delete_spot_datafeed_subscription(DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_spot_datafeed_subscription_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_spot_datafeed_subscription(
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes a Spot data feed subscription for the account.
    svc$delete_spot_datafeed_subscription()

    ## End(Not run)
