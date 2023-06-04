<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags that are assigned to an Amazon Cognito identity pool

### Description

Lists the tags that are assigned to an Amazon Cognito identity pool.

A tag is a label that you can apply to identity pools to categorize and
manage them in different ways, such as by purpose, owner, environment,
or other criteria.

You can use this action up to 10 times per second, per account.

### Usage

    cognitoidentity_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the identity pool
that the tags are assigned to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
