<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the specified Amazon Cognito identity pool

### Description

Removes the specified tags from the specified Amazon Cognito identity
pool. You can use this action up to 5 times per second, per account

### Usage

    cognitoidentity_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the identity
pool.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys of the tags to remove from the user
pool.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
