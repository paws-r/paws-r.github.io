<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_tag_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified TagOption

### Description

Updates the specified TagOption.

### Usage

    servicecatalog_update_tag_option(Id, Value, Active)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicecatalog_update_tag_option_:_Id">Id</code></td>
<td><p>[required] The TagOption identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_tag_option_:_Value">Value</code></td>
<td><p>The updated value.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_tag_option_:_Active">Active</code></td>
<td><p>The updated active state.</p></td>
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

    svc$update_tag_option(
      Id = "string",
      Value = "string",
      Active = TRUE|FALSE
    )
