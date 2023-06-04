<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_data_quality_ruleset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an existing ruleset by identifier or name

### Description

Returns an existing ruleset by identifier or name.

### Usage

    glue_get_data_quality_ruleset(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_data_quality_ruleset_:_Name">Name</code></td>
<td><p>[required] The name of the ruleset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Description = "string",
      Ruleset = "string",
      TargetTable = list(
        TableName = "string",
        DatabaseName = "string",
        CatalogId = "string"
      ),
      CreatedOn = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedOn = as.POSIXct(
        "2015-01-01"
      ),
      RecommendationRunId = "string"
    )

### Request syntax

    svc$get_data_quality_ruleset(
      Name = "string"
    )
