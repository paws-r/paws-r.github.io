<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List tags for a resource

### Description

List tags for a resource. For more information, see [Proton resources
and
tagging](https://docs.aws.amazon.com/proton/latest/userguide/resources.html)
in the *Proton User Guide*.

### Usage

    proton_list_tags_for_resource(maxResults, nextToken, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_list_tags_for_resource_:_maxResults">maxResults</code></td>
<td><p>The maximum number of tags to list.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_list_tags_for_resource_:_nextToken">nextToken</code></td>
<td><p>A token that indicates the location of the next resource tag in
the array of resource tags, after the list of resource tags that was
previously requested.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for the
listed tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      maxResults = 123,
      nextToken = "string",
      resourceArn = "string"
    )
