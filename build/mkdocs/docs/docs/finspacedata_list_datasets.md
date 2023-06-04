<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_list_datasets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the active Datasets that a user has access to

### Description

Lists all of the active Datasets that a user has access to.

### Usage

    finspacedata_list_datasets(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_list_datasets_:_nextToken">nextToken</code></td>
<td><p>A token that indicates where a results page should
begin.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_list_datasets_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasets = list(
        list(
          datasetId = "string",
          datasetArn = "string",
          datasetTitle = "string",
          kind = "TABULAR"|"NON_TABULAR",
          datasetDescription = "string",
          ownerInfo = list(
            name = "string",
            phoneNumber = "string",
            email = "string"
          ),
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
          alias = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_datasets(
      nextToken = "string",
      maxResults = 123
    )
