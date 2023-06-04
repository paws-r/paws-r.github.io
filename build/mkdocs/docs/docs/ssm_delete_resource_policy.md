<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Systems Manager resource policy

### Description

Deletes a Systems Manager resource policy. A resource policy helps you
to define the IAM entity (for example, an Amazon Web Services account)
that can manage your Systems Manager resources. Currently,
`OpsItemGroup` is the only resource that supports Systems Manager
resource policies. The resource policy for `OpsItemGroup` enables Amazon
Web Services accounts to view and interact with OpsCenter operational
work items (OpsItems).

### Usage

    ssm_delete_resource_policy(ResourceArn, PolicyId, PolicyHash)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_delete_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the resource to which
the policies are attached.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_delete_resource_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The policy ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_delete_resource_policy_:_PolicyHash">PolicyHash</code></td>
<td><p>[required] ID of the current policy version. The hash helps to
prevent multiple calls from attempting to overwrite a policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      ResourceArn = "string",
      PolicyId = "string",
      PolicyHash = "string"
    )
