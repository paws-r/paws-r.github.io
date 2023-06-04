<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elbv2_delete_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified listener

### Description

Deletes the specified listener.

Alternatively, your listener is deleted when you delete the load
balancer to which it is attached.

### Usage

    elbv2_delete_listener(ListenerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elbv2_delete_listener_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
listener.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_listener(
      ListenerArn = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified listener.
    svc$delete_listener(
      ListenerArn = "arn:aws:elasticloadbalancing:ua-west-2:123456789012:listen..."
    )

    ## End(Not run)
