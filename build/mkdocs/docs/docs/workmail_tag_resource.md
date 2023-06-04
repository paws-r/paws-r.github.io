<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies the specified tags to the specified WorkMailorganization resource

### Description

Applies the specified tags to the specified WorkMailorganization
resource.

### Usage

    workmail_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The resource ARN.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tag key-value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

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
