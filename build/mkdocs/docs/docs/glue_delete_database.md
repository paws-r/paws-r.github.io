<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a specified database from a Data Catalog

### Description

Removes a specified database from a Data Catalog.

After completing this operation, you no longer have access to the tables
(and all table versions and partitions that might belong to the tables)
and the user-defined functions in the deleted database. Glue deletes
these "orphaned" resources asynchronously in a timely manner, at the
discretion of the service.

To ensure the immediate deletion of all related resources, before
calling `delete_database`, use `delete_table_version` or
`batch_delete_table_version`, `delete_partition` or
`batch_delete_partition`, `delete_user_defined_function`, and
`delete_table` or `batch_delete_table`, to delete any resources that
belong to the database.

### Usage

    glue_delete_database(CatalogId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_database_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which the database resides. If none
is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_delete_database_:_Name">Name</code></td>
<td><p>[required] The name of the database to delete. For Hive
compatibility, this must be all lowercase.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_database(
      CatalogId = "string",
      Name = "string"
    )
