<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_update_table_storage_optimizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of the storage optimizers for a table

### Description

Updates the configuration of the storage optimizers for a table.

### Usage

    lakeformation_update_table_storage_optimizer(CatalogId, DatabaseName,
      TableName, StorageOptimizerConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_update_table_storage_optimizer_:_CatalogId">CatalogId</code></td>
<td><p>The Catalog ID of the table.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_update_table_storage_optimizer_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] Name of the database where the table is
present.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_update_table_storage_optimizer_:_TableName">TableName</code></td>
<td><p>[required] Name of the table for which to enable the storage
optimizer.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_update_table_storage_optimizer_:_StorageOptimizerConfig">StorageOptimizerConfig</code></td>
<td><p>[required] Name of the table for which to enable the storage
optimizer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Result = "string"
    )

### Request syntax

    svc$update_table_storage_optimizer(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      StorageOptimizerConfig = list(
        list(
          "string"
        )
      )
    )
