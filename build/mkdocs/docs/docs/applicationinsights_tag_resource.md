<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add one or more tags (keys and values) to a specified application

### Description

Add one or more tags (keys and values) to a specified application. A
*tag* is a label that you optionally define and associate with an
application. Tags can help you categorize and manage application in
different ways, such as by purpose, owner, environment, or other
criteria.

Each tag consists of a required *tag key* and an associated *tag value*,
both of which you define. A tag key is a general label that acts as a
category for more specific tag values. A tag value acts as a descriptor
within a tag key.

### Usage

    applicationinsights_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the application that
you want to add one or more tags to.</p></td>
</tr>
<tr class="even">
<td><code id="applicationinsights_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tags that to add to the application. A tag
consists of a required tag key (<code>Key</code>) and an associated tag
value (<code>Value</code>). The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256
characters.</p></td>
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
