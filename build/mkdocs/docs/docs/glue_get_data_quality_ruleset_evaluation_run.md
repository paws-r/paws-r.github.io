<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_data_quality_ruleset_evaluation_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a specific run where a ruleset is evaluated against a data source

### Description

Retrieves a specific run where a ruleset is evaluated against a data
source.

### Usage

    glue_get_data_quality_ruleset_evaluation_run(RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_data_quality_ruleset_evaluation_run_:_RunId">RunId</code></td>
<td><p>[required] The unique run identifier associated with this
run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunId = "string",
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
      Role = "string",
      NumberOfWorkers = 123,
      Timeout = 123,
      AdditionalRunOptions = list(
        CloudWatchMetricsEnabled = TRUE|FALSE,
        ResultsS3Prefix = "string"
      ),
      Status = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT",
      ErrorString = "string",
      StartedOn = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedOn = as.POSIXct(
        "2015-01-01"
      ),
      CompletedOn = as.POSIXct(
        "2015-01-01"
      ),
      ExecutionTime = 123,
      RulesetNames = list(
        "string"
      ),
      ResultIds = list(
        "string"
      ),
      AdditionalDataSources = list(
        list(
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
    )

### Request syntax

    svc$get_data_quality_ruleset_evaluation_run(
      RunId = "string"
    )
