<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_data_quality_ruleset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a data quality ruleset with DQDL rules applied to a specified Glue table

### Description

Creates a data quality ruleset with DQDL rules applied to a specified
Glue table.

You create the ruleset using the Data Quality Definition Language
(DQDL). For more information, see the Glue developer guide.

### Usage

    glue_create_data_quality_ruleset(Name, Description, Ruleset, Tags,
      TargetTable, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_data_quality_ruleset_:_Name">Name</code></td>
<td><p>[required] A unique name for the data quality ruleset.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_data_quality_ruleset_:_Description">Description</code></td>
<td><p>A description of the data quality ruleset.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_data_quality_ruleset_:_Ruleset">Ruleset</code></td>
<td><p>[required] A Data Quality Definition Language (DQDL) ruleset. For
more information, see the Glue developer guide.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_data_quality_ruleset_:_Tags">Tags</code></td>
<td><p>A list of tags applied to the data quality ruleset.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_data_quality_ruleset_:_TargetTable">TargetTable</code></td>
<td><p>A target table associated with the data quality ruleset.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_data_quality_ruleset_:_ClientToken">ClientToken</code></td>
<td><p>Used for idempotency and is recommended to be set to a random ID
(such as a UUID) to avoid creating or starting multiple instances of the
same resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_data_quality_ruleset(
      Name = "string",
      Description = "string",
      Ruleset = "string",
      Tags = list(
        "string"
      ),
      TargetTable = list(
        TableName = "string",
        DatabaseName = "string",
        CatalogId = "string"
      ),
      ClientToken = "string"
    )
