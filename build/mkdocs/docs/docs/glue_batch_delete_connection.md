<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_delete_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a list of connection definitions from the Data Catalog

### Description

Deletes a list of connection definitions from the Data Catalog.

### Usage

    glue_batch_delete_connection(CatalogId, ConnectionNameList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_delete_connection_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which the connections reside. If
none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_delete_connection_:_ConnectionNameList">ConnectionNameList</code></td>
<td><p>[required] A list of names of the connections to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Succeeded = list(
        "string"
      ),
      Errors = list(
        list(
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_delete_connection(
      CatalogId = "string",
      ConnectionNameList = list(
        "string"
      )
    )
