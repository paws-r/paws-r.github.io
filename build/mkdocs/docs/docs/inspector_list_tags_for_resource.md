<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags associated with an assessment template

### Description

Lists all tags associated with an assessment template.

### Usage

    inspector_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN that specifies the assessment template whose
tags you want to list.</p></td>
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

### Examples

    ## Not run: 
    # Lists all tags associated with an assessment template.
    svc$list_tags_for_resource(
      resourceArn = "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq..."
    )

    ## End(Not run)
