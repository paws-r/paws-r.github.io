<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes metadata tags from a DataBrew resource

### Description

Removes metadata tags from a DataBrew resource.

### Usage

    gluedatabrew_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] A DataBrew resource from which you want to remove a
tag or tags. The value for this parameter is an Amazon Resource Name
(ARN).</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys (names) of one or more tags to be
removed.</p></td>
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
