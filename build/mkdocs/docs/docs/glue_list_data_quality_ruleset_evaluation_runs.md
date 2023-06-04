<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_data_quality_ruleset_evaluation_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the runs meeting the filter criteria, where a ruleset is evaluated against a data source

### Description

Lists all the runs meeting the filter criteria, where a ruleset is
evaluated against a data source.

### Usage

    glue_list_data_quality_ruleset_evaluation_runs(Filter, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_list_data_quality_ruleset_evaluation_runs_:_Filter">Filter</code></td>
<td><p>The filter criteria.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_list_data_quality_ruleset_evaluation_runs_:_NextToken">NextToken</code></td>
<td><p>A paginated token to offset the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_list_data_quality_ruleset_evaluation_runs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Runs = list(
        list(
          RunId = "string",
          Status = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT",
          StartedOn = as.POSIXct(
            "2015-01-01"
          ),
          DataSource = list(
            GlueTable = list(
              DatabaseName = "string",
              TableName = "string",
              CatalogId = "string",
              ConnectionName = "string",
              AdditionalOptions = list(
                "string"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_data_quality_ruleset_evaluation_runs(
      Filter = list(
        DataSource = list(
          GlueTable = list(
            DatabaseName = "string",
            TableName = "string",
            CatalogId = "string",
            ConnectionName = "string",
            AdditionalOptions = list(
              "string"
            )
          )
        ),
        StartedBefore = as.POSIXct(
          "2015-01-01"
        ),
        StartedAfter = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
