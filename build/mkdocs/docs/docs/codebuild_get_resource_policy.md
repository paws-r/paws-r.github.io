<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_get_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a resource policy that is identified by its resource ARN

### Description

Gets a resource policy that is identified by its resource ARN.

### Usage

    codebuild_get_resource_policy(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_get_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource that is associated with the
resource policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      policy = "string"
    )

### Request syntax

    svc$get_resource_policy(
      resourceArn = "string"
    )
