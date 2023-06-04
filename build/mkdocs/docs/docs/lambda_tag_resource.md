<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to a function

### Description

Adds
[tags](https://docs.aws.amazon.com/lambda/latest/dg/configuration-tags.html)
to a function.

### Usage

    lambda_tag_resource(Resource, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lambda_tag_resource_:_Resource">Resource</code></td>
<td><p>[required] The function's Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="lambda_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tags to apply to the function.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      Resource = "string",
      Tags = list(
        "string"
      )
    )
