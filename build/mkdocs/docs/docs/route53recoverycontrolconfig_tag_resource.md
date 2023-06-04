<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a tag to a resource

### Description

Adds a tag to a resource.

### Usage

    route53recoverycontrolconfig_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the resource that's
tagged.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags associated with the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
