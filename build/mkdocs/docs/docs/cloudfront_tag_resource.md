<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add tags to a CloudFront resource

### Description

Add tags to a CloudFront resource.

### Usage

    cloudfront_tag_resource(Resource, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_tag_resource_:_Resource">Resource</code></td>
<td><p>[required] An ARN of a CloudFront resource.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A complex type that contains zero or more
<code>Tag</code> elements.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      Resource = "string",
      Tags = list(
        Items = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )
