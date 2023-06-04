<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a Systems Manager resource policy

### Description

Creates or updates a Systems Manager resource policy. A resource policy
helps you to define the IAM entity (for example, an Amazon Web Services
account) that can manage your Systems Manager resources. Currently,
`OpsItemGroup` is the only resource that supports Systems Manager
resource policies. The resource policy for `OpsItemGroup` enables Amazon
Web Services accounts to view and interact with OpsCenter operational
work items (OpsItems).

### Usage

    ssm_put_resource_policy(ResourceArn, Policy, PolicyId, PolicyHash)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_put_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the resource to which
you want to attach a policy.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_put_resource_policy_:_Policy">Policy</code></td>
<td><p>[required] A policy you want to associate with a
resource.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_put_resource_policy_:_PolicyId">PolicyId</code></td>
<td><p>The policy ID.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_put_resource_policy_:_PolicyHash">PolicyHash</code></td>
<td><p>ID of the current policy version. The hash helps to prevent a
situation where multiple users attempt to overwrite a policy. You must
provide this hash when updating or deleting a policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyId = "string",
      PolicyHash = "string"
    )

### Request syntax

    svc$put_resource_policy(
      ResourceArn = "string",
      Policy = "string",
      PolicyId = "string",
      PolicyHash = "string"
    )
