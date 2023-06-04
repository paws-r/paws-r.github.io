<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_get_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a resource-based policy of an Entity that is identified by its resource ARN

### Description

Gets a resource-based policy of an Entity that is identified by its
resource ARN.

### Usage

    marketplacecatalog_get_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_get_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Entity resource
that is associated with the resource policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = "string"
    )

### Request syntax

    svc$get_resource_policy(
      ResourceArn = "string"
    )
