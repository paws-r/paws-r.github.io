<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_describe_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the details of a resource-based policy that is attached to a custom model, including the JSON body of the policy

### Description

Gets the details of a resource-based policy that is attached to a custom
model, including the JSON body of the policy.

### Usage

    comprehend_describe_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_describe_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom model
version that has the resource policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourcePolicy = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      PolicyRevisionId = "string"
    )

### Request syntax

    svc$describe_resource_policy(
      ResourceArn = "string"
    )
