<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_create_tag_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a TagOption

### Description

Creates a TagOption.

### Usage

    servicecatalog_create_tag_option(Key, Value)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicecatalog_create_tag_option_:_Key">Key</code></td>
<td><p>[required] The TagOption key.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_tag_option_:_Value">Value</code></td>
<td><p>[required] The TagOption value.</p></td>
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

    svc$create_tag_option(
      Key = "string",
      Value = "string"
    )
