<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a resource policy

### Description

Returns information about a resource policy.

### Usage

    networkmanager_get_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyDocument = "string"
    )

### Request syntax

    svc$get_resource_policy(
      ResourceArn = "string"
    )
