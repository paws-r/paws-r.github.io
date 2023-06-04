<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_get_data_quality_result</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of data quality results for the specified result IDs

### Description

Retrieves a list of data quality results for the specified result IDs.

### Usage

    glue_batch_get_data_quality_result(ResultIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_get_data_quality_result_:_ResultIds">ResultIds</code></td>
<td><p>[required] A list of unique result IDs for the data quality
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          ResultId = "string",
          Score = 123.0,
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
          RulesetName = "string",
          EvaluationContext = "string",
          StartedOn = as.POSIXct(
            "2015-01-01"
          ),
          CompletedOn = as.POSIXct(
            "2015-01-01"
          ),
          JobName = "string",
          JobRunId = "string",
          RulesetEvaluationRunId = "string",
          RuleResults = list(
            list(
              Name = "string",
              Description = "string",
              EvaluationMessage = "string",
              Result = "PASS"|"FAIL"|"ERROR",
              EvaluatedMetrics = list(
                123.0
              )
            )
          )
        )
      ),
      ResultsNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_data_quality_result(
      ResultIds = list(
        "string"
      )
    )
