<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_delete_tag_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified TagOption

### Description

Deletes the specified TagOption.

You cannot delete a TagOption if it is associated with a product or
portfolio.

### Usage

    servicecatalog_delete_tag_option(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicecatalog_delete_tag_option_:_Id">Id</code></td>
<td><p>[required] The TagOption identifier.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tag_option(
      Id = "string"
    )
