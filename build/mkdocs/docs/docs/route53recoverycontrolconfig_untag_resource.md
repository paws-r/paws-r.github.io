<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag from a resource

### Description

Removes a tag from a resource.

### Usage

    route53recoverycontrolconfig_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the resource that's
tagged.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Keys for the tags to be removed.</p></td>
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
