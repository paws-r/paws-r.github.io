<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_delete_call_analytics_category</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Call Analytics category

### Description

Deletes a Call Analytics category. To use this operation, specify the
name of the category you want to delete using `CategoryName`. Category
names are case sensitive.

### Usage

    transcribeservice_delete_call_analytics_category(CategoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_delete_call_analytics_category_:_CategoryName">CategoryName</code></td>
<td><p>[required] The name of the Call Analytics category you want to
delete. Category names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_call_analytics_category(
      CategoryName = "string"
    )
