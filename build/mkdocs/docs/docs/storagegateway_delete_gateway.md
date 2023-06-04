<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a gateway

### Description

Deletes a gateway. To specify which gateway to delete, use the Amazon
Resource Name (ARN) of the gateway in your request. The operation
deletes the gateway; however, it does not delete the gateway virtual
machine (VM) from your host computer.

After you delete a gateway, you cannot reactivate it. Completed
snapshots of the gateway volumes are not deleted upon deleting the
gateway, however, pending snapshots will not complete. After you delete
a gateway, your next step is to remove it from your environment.

You no longer pay software charges after the gateway is deleted;
however, your existing Amazon EBS snapshots persist and you will
continue to be billed for these snapshots. You can choose to remove all
remaining Amazon EBS snapshots by canceling your Amazon EC2
subscription.  If you prefer not to cancel your Amazon EC2 subscription,
you can delete your snapshots using the Amazon EC2 console. For more
information, see the [Storage Gateway detail
page](https://aws.amazon.com/storagegateway/).

### Usage

    storagegateway_delete_gateway(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_gateway_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$delete_gateway(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # This operation deletes the gateway, but not the gateway's VM from the
    # host computer.
    svc$delete_gateway(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
