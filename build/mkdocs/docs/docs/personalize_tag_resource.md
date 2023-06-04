<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add a list of tags to a resource

### Description

Add a list of tags to a resource.

### Usage

    personalize_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The resource's Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="personalize_tag_resource_:_tags">tags</code></td>
<td><p>[required] Tags to apply to the resource. For more information
see Tagging Personalize resources.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
