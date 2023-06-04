<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_update_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a FinSpace Dataset

### Description

Updates a FinSpace Dataset.

### Usage

    finspacedata_update_dataset(clientToken, datasetId, datasetTitle, kind,
      datasetDescription, alias, schemaDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_update_dataset_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_update_dataset_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier for the Dataset to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_update_dataset_:_datasetTitle">datasetTitle</code></td>
<td><p>[required] A display title for the Dataset.</p></td>
</tr>
<tr class="even">
<td><code id="finspacedata_update_dataset_:_kind">kind</code></td>
<td><p>[required] The format in which the Dataset data is
structured.</p>
<ul>
<li><p><code>TABULAR</code> – Data is structured in a tabular
format.</p></li>
<li><p><code>NON_TABULAR</code> – Data is structured in a non-tabular
format.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_update_dataset_:_datasetDescription">datasetDescription</code></td>
<td><p>A description for the Dataset.</p></td>
</tr>
<tr class="even">
<td><code id="finspacedata_update_dataset_:_alias">alias</code></td>
<td><p>The unique resource identifier for a Dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_update_dataset_:_schemaDefinition">schemaDefinition</code></td>
<td><p>Definition for a schema on a tabular Dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetId = "string"
    )

### Request syntax

    svc$update_dataset(
      clientToken = "string",
      datasetId = "string",
      datasetTitle = "string",
      kind = "TABULAR"|"NON_TABULAR",
      datasetDescription = "string",
      alias = "string",
      schemaDefinition = list(
        tabularSchemaConfig = list(
          columns = list(
            list(
              dataType = "STRING"|"CHAR"|"INTEGER"|"TINYINT"|"SMALLINT"|"BIGINT"|"FLOAT"|"DOUBLE"|"DATE"|"DATETIME"|"BOOLEAN"|"BINARY",
              columnName = "string",
              columnDescription = "string"
            )
          ),
          primaryKeyColumns = list(
            "string"
          )
        )
      )
    )
