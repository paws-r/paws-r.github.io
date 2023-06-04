<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about Amazon Web Services tags for a specified Amazon Resource Name (ARN) in CodeArtifact

### Description

Gets information about Amazon Web Services tags for a specified Amazon
Resource Name (ARN) in CodeArtifact.

### Usage

    codeartifact_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to get
tags for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
