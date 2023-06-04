<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_table</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a table definition from the Data Catalog

### Description

Removes a table definition from the Data Catalog.

After completing this operation, you no longer have access to the table
versions and partitions that belong to the deleted table. Glue deletes
these "orphaned" resources asynchronously in a timely manner, at the
discretion of the service.

To ensure the immediate deletion of all related resources, before
calling `delete_table`, use `delete_table_version` or
`batch_delete_table_version`, and `delete_partition` or
`batch_delete_partition`, to delete any resources that belong to the
table.

### Usage

    glue_delete_table(CatalogId, DatabaseName, Name, TransactionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_table_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the table resides. If none is
provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_delete_table_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the catalog database in which the table
resides. For Hive compatibility, this name is entirely
lowercase.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_delete_table_:_Name">Name</code></td>
<td><p>[required] The name of the table to be deleted. For Hive
compatibility, this name is entirely lowercase.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_table_:_TransactionId">TransactionId</code></td>
<td><p>The transaction ID at which to delete the table
contents.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_table(
      CatalogId = "string",
      DatabaseName = "string",
      Name = "string",
      TransactionId = "string"
    )
