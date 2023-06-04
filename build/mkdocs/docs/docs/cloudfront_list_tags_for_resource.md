<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List tags for a CloudFront resource

### Description

List tags for a CloudFront resource.

### Usage

    cloudfront_list_tags_for_resource(Resource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_tags_for_resource_:_Resource">Resource</code></td>
<td><p>[required] An ARN of a CloudFront resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        Items = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      Resource = "string"
    )
