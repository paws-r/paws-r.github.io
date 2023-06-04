<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a resource policy

### Description

Creates or updates a resource policy.

### Usage

    networkmanager_put_resource_policy(PolicyDocument, ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_put_resource_policy_:_PolicyDocument">PolicyDocument</code></td>
<td><p>[required] The JSON resource policy document.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_put_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_resource_policy(
      PolicyDocument = "string",
      ResourceArn = "string"
    )
