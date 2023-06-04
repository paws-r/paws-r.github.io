<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_delete_endpoint_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an endpoint group from a listener

### Description

Delete an endpoint group from a listener.

### Usage

    globalaccelerator_delete_endpoint_group(EndpointGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_delete_endpoint_group_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint group
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_endpoint_group(
      EndpointGroupArn = "string"
    )
