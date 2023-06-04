<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a set of provided tags with a notification rule

### Description

Associates a set of provided tags with a notification rule.

### Usage

    codestarnotifications_tag_resource(Arn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestarnotifications_tag_resource_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the notification
rule to tag.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The list of tags to associate with the resource. Tag
key names cannot start with "<code>aws</code>".</p></td>
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

    svc$tag_resource(
      Arn = "string",
      Tags = list(
        "string"
      )
    )
