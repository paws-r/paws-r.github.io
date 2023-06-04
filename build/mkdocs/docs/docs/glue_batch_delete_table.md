<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_delete_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes multiple tables at once

### Description

Deletes multiple tables at once.

After completing this operation, you no longer have access to the table
versions and partitions that belong to the deleted table. Glue deletes
these "orphaned" resources asynchronously in a timely manner, at the
discretion of the service.

To ensure the immediate deletion of all related resources, before
calling `batch_delete_table`, use `delete_table_version` or
`batch_delete_table_version`, and `delete_partition` or
`batch_delete_partition`, to delete any resources that belong to the
table.

### Usage

    glue_batch_delete_table(CatalogId, DatabaseName, TablesToDelete,
      TransactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_batch_delete_table_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the table resides. If none is
provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_delete_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database in which the tables
to delete reside. For Hive compatibility, this name is entirely
lowercase.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_batch_delete_table_:_TablesToDelete">TablesToDelete</code></td>
<td><p>[required] A list of the table to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_delete_table_:_TransactionId">TransactionId</code></td>
<td><p>The transaction ID at which to delete the table
contents.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          TableName = "string",
          ErrorDetail = list(
            ErrorCode = "string",
            ErrorMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$batch_delete_table(
      CatalogId = "string",
      DatabaseName = "string",
      TablesToDelete = list(
        "string"
      ),
      TransactionId = "string"
    )
