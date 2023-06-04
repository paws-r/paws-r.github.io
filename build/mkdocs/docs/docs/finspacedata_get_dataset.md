<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_get_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a Dataset

### Description

Returns information about a Dataset.

### Usage

    finspacedata_get_dataset(datasetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_get_dataset_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier for a Dataset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetId = "string",
      datasetArn = "string",
      datasetTitle = "string",
      kind = "TABULAR"|"NON_TABULAR",
      datasetDescription = "string",
      createTime = 123,
      lastModifiedTime = 123,
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
      ),
      alias = "string",
      status = "PENDING"|"FAILED"|"SUCCESS"|"RUNNING"
    )

### Request syntax

    svc$get_dataset(
      datasetId = "string"
    )
