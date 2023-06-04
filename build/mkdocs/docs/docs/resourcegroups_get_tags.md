<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_get_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags that are associated with a resource group, specified by an ARN

### Description

Returns a list of tags that are associated with a resource group,
specified by an ARN.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:GetTags`

### Usage

    resourcegroups_get_tags(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resourcegroups_get_tags_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the resource group whose tags you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_tags(
      Arn = "string"
    )
