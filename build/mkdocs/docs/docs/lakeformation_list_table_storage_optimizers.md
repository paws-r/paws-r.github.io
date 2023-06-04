<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_list_table_storage_optimizers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the configuration of all storage optimizers associated with a specified table

### Description

Returns the configuration of all storage optimizers associated with a
specified table.

### Usage

    lakeformation_list_table_storage_optimizers(CatalogId, DatabaseName,
      TableName, StorageOptimizerType, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_list_table_storage_optimizers_:_CatalogId">CatalogId</code></td>
<td><p>The Catalog ID of the table.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_table_storage_optimizers_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] Name of the database where the table is
present.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_table_storage_optimizers_:_TableName">TableName</code></td>
<td><p>[required] Name of the table.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_table_storage_optimizers_:_StorageOptimizerType">StorageOptimizerType</code></td>
<td><p>The specific type of storage optimizers to list. The supported
value is <code>compaction</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_table_storage_optimizers_:_MaxResults">MaxResults</code></td>
<td><p>The number of storage optimizers to return on each call.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_table_storage_optimizers_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StorageOptimizerList = list(
        list(
          StorageOptimizerType = "COMPACTION"|"GARBAGE_COLLECTION"|"ALL",
          Config = list(
            "string"
          ),
          ErrorMessage = "string",
          Warnings = "string",
          LastRunDetails = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_table_storage_optimizers(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      StorageOptimizerType = "COMPACTION"|"GARBAGE_COLLECTION"|"ALL",
      MaxResults = 123,
      NextToken = "string"
    )
