<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_crawler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a specified crawler from the Glue Data Catalog, unless the crawler state is RUNNING

### Description

Removes a specified crawler from the Glue Data Catalog, unless the
crawler state is `RUNNING`.

### Usage

    glue_delete_crawler(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_crawler_:_Name">Name</code></td>
<td><p>[required] The name of the crawler to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_crawler(
      Name = "string"
    )
