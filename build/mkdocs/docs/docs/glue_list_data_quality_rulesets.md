<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_data_quality_rulesets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a paginated list of rulesets for the specified list of Glue tables

### Description

Returns a paginated list of rulesets for the specified list of Glue
tables.

### Usage

    glue_list_data_quality_rulesets(NextToken, MaxResults, Filter, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_list_data_quality_rulesets_:_NextToken">NextToken</code></td>
<td><p>A paginated token to offset the results.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_list_data_quality_rulesets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_list_data_quality_rulesets_:_Filter">Filter</code></td>
<td><p>The filter criteria.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_data_quality_rulesets_:_Tags">Tags</code></td>
<td><p>A list of key-value pair tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rulesets = list(
        list(
          Name = "string",
          Description = "string",
          CreatedOn = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedOn = as.POSIXct(
            "2015-01-01"
          ),
          TargetTable = list(
            TableName = "string",
            DatabaseName = "string",
            CatalogId = "string"
          ),
          RecommendationRunId = "string",
          RuleCount = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_data_quality_rulesets(
      NextToken = "string",
      MaxResults = 123,
      Filter = list(
        Name = "string",
        Description = "string",
        CreatedBefore = as.POSIXct(
          "2015-01-01"
        ),
        CreatedAfter = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedBefore = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedAfter = as.POSIXct(
          "2015-01-01"
        ),
        TargetTable = list(
          TableName = "string",
          DatabaseName = "string",
          CatalogId = "string"
        )
      ),
      Tags = list(
        "string"
      )
    )
