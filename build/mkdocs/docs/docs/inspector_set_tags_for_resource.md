<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_set_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template

### Description

Sets tags (key and value pairs) to the assessment template that is
specified by the ARN of the assessment template.

### Usage

    inspector_set_tags_for_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_set_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the assessment template that you want to
set tags to.</p></td>
</tr>
<tr class="even">
<td><code id="inspector_set_tags_for_resource_:_tags">tags</code></td>
<td><p>A collection of key and value pairs that you want to set to the
assessment template.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_tags_for_resource(
      resourceArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Sets tags (key and value pairs) to the assessment template that is
    # specified by the ARN of the assessment template.
    svc$set_tags_for_resource(
      resourceArn = "arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX...",
      tags = list(
        list(
          key = "Example",
          value = "example"
        )
      )
    )

    ## End(Not run)
