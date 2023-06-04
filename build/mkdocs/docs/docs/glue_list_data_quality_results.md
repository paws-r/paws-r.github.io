<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_data_quality_results</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all data quality execution results for your account

### Description

Returns all data quality execution results for your account.

### Usage

    glue_list_data_quality_results(Filter, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_list_data_quality_results_:_Filter">Filter</code></td>
<td><p>The filter criteria.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_list_data_quality_results_:_NextToken">NextToken</code></td>
<td><p>A paginated token to offset the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_list_data_quality_results_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          ResultId = "string",
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
          JobName = "string",
          JobRunId = "string",
          StartedOn = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_data_quality_results(
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
        JobName = "string",
        JobRunId = "string",
        StartedAfter = as.POSIXct(
          "2015-01-01"
        ),
        StartedBefore = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
