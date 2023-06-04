<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a resource policy to the specified response plan

### Description

Adds a resource policy to the specified response plan. The resource
policy is used to share the response plan using Resource Access Manager
(RAM). For more information about cross-account sharing, see
[Cross-Region and cross-account incident
management](https://docs.aws.amazon.com/incident-manager/latest/userguide/incident-manager-cross-account-cross-region.html).

### Usage

    ssmincidents_put_resource_policy(policy, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_put_resource_policy_:_policy">policy</code></td>
<td><p>[required] Details of the resource policy.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmincidents_put_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the response plan to
add the resource policy to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      policyId = "string"
    )

### Request syntax

    svc$put_resource_policy(
      policy = "string",
      resourceArn = "string"
    )
