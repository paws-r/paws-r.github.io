<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_create_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new FinSpace Dataset

### Description

Creates a new FinSpace Dataset.

### Usage

    finspacedata_create_dataset(clientToken, datasetTitle, kind,
      datasetDescription, ownerInfo, permissionGroupParams, alias,
      schemaDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_create_dataset_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_dataset_:_datasetTitle">datasetTitle</code></td>
<td><p>[required] Display title for a FinSpace Dataset.</p></td>
</tr>
<tr class="odd">
<td><code id="finspacedata_create_dataset_:_kind">kind</code></td>
<td><p>[required] The format in which Dataset data is structured.</p>
<ul>
<li><p><code>TABULAR</code> – Data is structured in a tabular
format.</p></li>
<li><p><code>NON_TABULAR</code> – Data is structured in a non-tabular
format.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_dataset_:_datasetDescription">datasetDescription</code></td>
<td><p>Description of a Dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_dataset_:_ownerInfo">ownerInfo</code></td>
<td><p>Contact information for a Dataset owner.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_dataset_:_permissionGroupParams">permissionGroupParams</code></td>
<td><p>[required] Permission group parameters for Dataset
permissions.</p></td>
</tr>
<tr class="odd">
<td><code id="finspacedata_create_dataset_:_alias">alias</code></td>
<td><p>The unique resource identifier for a Dataset.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_dataset_:_schemaDefinition">schemaDefinition</code></td>
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

    svc$create_dataset(
      clientToken = "string",
      datasetTitle = "string",
      kind = "TABULAR"|"NON_TABULAR",
      datasetDescription = "string",
      ownerInfo = list(
        name = "string",
        phoneNumber = "string",
        email = "string"
      ),
      permissionGroupParams = list(
        permissionGroupId = "string",
        datasetPermissions = list(
          list(
            permission = "string"
          )
        )
      ),
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
