<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ram_promote_resource_share_created_from_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## When you attach a resource-based policy to a resource, RAM automatically creates a resource share of featureSet=CREATED\_FROM\_POLICY with a managed permission that has the same IAM permissions as the original resource-based policy

### Description

When you attach a resource-based policy to a resource, RAM automatically
creates a resource share of `featureSet`=`CREATED_FROM_POLICY` with a
managed permission that has the same IAM permissions as the original
resource-based policy. However, this type of managed permission is
visible to only the resource share owner, and the associated resource
share can't be modified by using RAM.

This operation promotes the resource share to a `STANDARD` resource
share that is fully manageable in RAM. When you promote a resource
share, you can then manage the resource share in RAM and it becomes
visible to all of the principals you shared it with.

Before you perform this operation, you should first run
`promote_permission_created_from_policy`to ensure that you have an
appropriate customer managed permission that can be associated with this
resource share after its is promoted. If this operation can't find a
managed permission that exactly matches the existing
`CREATED_FROM_POLICY` permission, then this operation fails.

### Usage

    ram_promote_resource_share_created_from_policy(resourceShareArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ram_promote_resource_share_created_from_policy_:_resourceShareArn">resourceShareArn</code></td>
<td><p>[required] Specifies the <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of the resource share to promote.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      returnValue = TRUE|FALSE
    )

### Request syntax

    svc$promote_resource_share_created_from_policy(
      resourceShareArn = "string"
    )
