<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backupgateway_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tag the resource

### Description

Tag the resource.

### Usage

    backupgateway_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backupgateway_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
tag.</p></td>
</tr>
<tr class="even">
<td><code id="backupgateway_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tags to assign to the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceARN = "string"
    )

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
