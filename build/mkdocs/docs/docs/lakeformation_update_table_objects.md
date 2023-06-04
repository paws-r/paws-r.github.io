<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_update_table_objects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the manifest of Amazon S3 objects that make up the specified governed table

### Description

Updates the manifest of Amazon S3 objects that make up the specified
governed table.

### Usage

    lakeformation_update_table_objects(CatalogId, DatabaseName, TableName,
      TransactionId, WriteOperations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_update_table_objects_:_CatalogId">CatalogId</code></td>
<td><p>The catalog containing the governed table to update. Defaults to
the caller’s account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_update_table_objects_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The database containing the governed table to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_update_table_objects_:_TableName">TableName</code></td>
<td><p>[required] The governed table to update.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_update_table_objects_:_TransactionId">TransactionId</code></td>
<td><p>The transaction at which to do the write.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_update_table_objects_:_WriteOperations">WriteOperations</code></td>
<td><p>[required] A list of <code>WriteOperation</code> objects that
define an object to add to or delete from the manifest for a governed
table.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_table_objects(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      TransactionId = "string",
      WriteOperations = list(
        list(
          AddObject = list(
            Uri = "string",
            ETag = "string",
            Size = 123,
            PartitionValues = list(
              "string"
            )
          ),
          DeleteObject = list(
            Uri = "string",
            ETag = "string",
            PartitionValues = list(
              "string"
            )
          )
        )
      )
    )
