<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a resource from a list of tags

### Description

Disassociates a resource from a list of tags. The resource is identified
by the `ResourceArn` input parameter. The tags are identified by the
list of keys in the `TagKeys` input parameter.

### Usage

    codedeploy_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that specifies from
which resource to disassociate the tags with the keys in the
<code>TagKeys</code> input parameter.</p></td>
</tr>
<tr class="even">
<td><code id="codedeploy_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of keys of <code>Tag</code> objects. The
<code>Tag</code> objects identified by the keys are disassociated from
the resource specified by the <code>ResourceArn</code> input
parameter.</p></td>
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
