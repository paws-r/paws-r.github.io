<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a function's tags

### Description

Returns a function's
[tags](https://docs.aws.amazon.com/lambda/latest/dg/configuration-tags.html).
You can also view tags with `get_function`.

### Usage

    lambda_list_tags(Resource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lambda_list_tags_:_Resource">Resource</code></td>
<td><p>[required] The function's Amazon Resource Name (ARN). Note:
Lambda does not support adding tags to aliases or versions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags(
      Resource = "string"
    )
