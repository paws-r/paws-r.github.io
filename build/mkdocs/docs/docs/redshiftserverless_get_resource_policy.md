<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a resource policy

### Description

Returns a resource policy.

### Usage

    redshiftserverless_get_resource_policy(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourcePolicy = list(
        policy = "string",
        resourceArn = "string"
      )
    )

### Request syntax

    svc$get_resource_policy(
      resourceArn = "string"
    )
