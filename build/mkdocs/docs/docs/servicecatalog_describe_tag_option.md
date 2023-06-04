<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_tag_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified TagOption

### Description

Gets information about the specified TagOption.

### Usage

    servicecatalog_describe_tag_option(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicecatalog_describe_tag_option_:_Id">Id</code></td>
<td><p>[required] The TagOption identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagOptionDetail = list(
        Key = "string",
        Value = "string",
        Active = TRUE|FALSE,
        Id = "string",
        Owner = "string"
      )
    )

### Request syntax

    svc$describe_tag_option(
      Id = "string"
    )
