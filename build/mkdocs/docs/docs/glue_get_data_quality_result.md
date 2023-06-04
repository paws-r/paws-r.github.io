<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_data_quality_result</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the result of a data quality rule evaluation

### Description

Retrieves the result of a data quality rule evaluation.

### Usage

    glue_get_data_quality_result(ResultId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_data_quality_result_:_ResultId">ResultId</code></td>
<td><p>[required] A unique result ID for the data quality
result.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$get_data_quality_result(
      ResultId = "string"
    )
