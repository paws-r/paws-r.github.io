<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to an associated repository

### Description

Adds one or more tags to an associated repository.

### Usage

    codegurureviewer_tag_resource(resourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a>
object. You can retrieve this ARN by calling
<code>list_repository_associations</code>.</p></td>
</tr>
<tr class="even">
<td><code id="codegurureviewer_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] An array of key-value pairs used to tag an associated
repository. A tag is a custom attribute label with two parts:</p>
<ul>
<li><p>A <em>tag key</em> (for example, <code>CostCenter</code>,
<code>Environment</code>, <code>Project</code>, or <code>Secret</code>).
Tag keys are case sensitive.</p></li>
<li><p>An optional field known as a <em>tag value</em> (for example,
<code>111122223333</code>, <code>Production</code>, or a team name).
Omitting the tag value is the same as using an empty string. Like tag
keys, tag values are case sensitive.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      Tags = list(
        "string"
      )
    )
