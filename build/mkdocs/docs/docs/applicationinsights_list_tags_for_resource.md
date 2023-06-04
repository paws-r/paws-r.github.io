<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a list of the tags (keys and values) that are associated with a specified application

### Description

Retrieve a list of the tags (keys and values) that are associated with a
specified application. A *tag* is a label that you optionally define and
associate with an application. Each tag consists of a required *tag key*
and an optional associated *tag value*. A tag key is a general label
that acts as a category for more specific tag values. A tag value acts
as a descriptor within a tag key.

### Usage

    applicationinsights_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the application that
you want to retrieve tag information for.</p></td>
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
