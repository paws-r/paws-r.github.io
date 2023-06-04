<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_data_quality_ruleset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified data quality ruleset

### Description

Updates the specified data quality ruleset.

### Usage

    glue_update_data_quality_ruleset(Name, Description, Ruleset)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_data_quality_ruleset_:_Name">Name</code></td>
<td><p>[required] The name of the data quality ruleset.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_data_quality_ruleset_:_Description">Description</code></td>
<td><p>A description of the ruleset.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_data_quality_ruleset_:_Ruleset">Ruleset</code></td>
<td><p>A Data Quality Definition Language (DQDL) ruleset. For more
information, see the Glue developer guide.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Description = "string",
      Ruleset = "string"
    )

### Request syntax

    svc$update_data_quality_ruleset(
      Name = "string",
      Description = "string",
      Ruleset = "string"
    )
