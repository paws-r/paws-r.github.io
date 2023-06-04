<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags applied to an WorkMail organization resource

### Description

Lists the tags applied to an WorkMail organization resource.

### Usage

    workmail_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The resource ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string"
    )
