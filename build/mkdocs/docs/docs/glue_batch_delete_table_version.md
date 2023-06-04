<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_delete_table_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified batch of versions of a table

### Description

Deletes a specified batch of versions of a table.

### Usage

    glue_batch_delete_table_version(CatalogId, DatabaseName, TableName,
      VersionIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_delete_table_version_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog where the tables reside. If none is
provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_delete_table_version_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The database in the catalog in which the table
resides. For Hive compatibility, this name is entirely
lowercase.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_batch_delete_table_version_:_TableName">TableName</code></td>
<td><p>[required] The name of the table. For Hive compatibility, this
name is entirely lowercase.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_batch_delete_table_version_:_VersionIds">VersionIds</code></td>
<td><p>[required] A list of the IDs of versions to be deleted. A
<code>VersionId</code> is a string representation of an integer. Each
version is incremented by 1.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          TableName = "string",
          VersionId = "string",
          ErrorDetail = list(
            ErrorCode = "string",
            ErrorMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$batch_delete_table_version(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      VersionIds = list(
        "string"
      )
    )
