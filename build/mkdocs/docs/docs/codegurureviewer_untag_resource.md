<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag from an associated repository

### Description

Removes a tag from an associated repository.

### Usage

    codegurureviewer_untag_resource(resourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a>
object. You can retrieve this ARN by calling
<code>list_repository_associations</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of the keys for each tag you want to remove
from an associated repository.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
