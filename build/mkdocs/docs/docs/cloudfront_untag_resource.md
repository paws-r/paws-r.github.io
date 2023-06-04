<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove tags from a CloudFront resource

### Description

Remove tags from a CloudFront resource.

### Usage

    cloudfront_untag_resource(Resource, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_untag_resource_:_Resource">Resource</code></td>
<td><p>[required] An ARN of a CloudFront resource.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A complex type that contains zero or more
<code>Tag</code> key elements.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      Resource = "string",
      TagKeys = list(
        Items = list(
          "string"
        )
      )
    )
