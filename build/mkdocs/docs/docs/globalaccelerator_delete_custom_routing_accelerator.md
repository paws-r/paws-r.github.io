<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_delete_custom_routing_accelerator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a custom routing accelerator

### Description

Delete a custom routing accelerator. Before you can delete an
accelerator, you must disable it and remove all dependent resources
(listeners and endpoint groups). To disable the accelerator, update the
accelerator to set `Enabled` to false.

When you create a custom routing accelerator, by default, Global
Accelerator provides you with a set of two static IP addresses.

The IP addresses are assigned to your accelerator for as long as it
exists, even if you disable the accelerator and it no longer accepts or
routes traffic. However, when you *delete* an accelerator, you lose the
static IP addresses that are assigned to the accelerator, so you can no
longer route traffic by using them. As a best practice, ensure that you
have permissions in place to avoid inadvertently deleting accelerators.
You can use IAM policies with Global Accelerator to limit the users who
have permissions to delete an accelerator. For more information, see
[Identity and access
management](https://docs.aws.amazon.com/global-accelerator/latest/dg/)
in the *Global Accelerator Developer Guide*.

### Usage

    globalaccelerator_delete_custom_routing_accelerator(AcceleratorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_delete_custom_routing_accelerator_:_AcceleratorArn">AcceleratorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom routing
accelerator to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_custom_routing_accelerator(
      AcceleratorArn = "string"
    )
