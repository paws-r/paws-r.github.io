<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_get_metric_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the metric stream that you specify

### Description

Returns information about the metric stream that you specify.

### Usage

    cloudwatch_get_metric_stream(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatch_get_metric_stream_:_Name">Name</code></td>
<td><p>[required] The name of the metric stream to retrieve information
about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Name = "string",
      IncludeFilters = list(
        list(
          Namespace = "string",
          MetricNames = list(
            "string"
          )
        )
      ),
      ExcludeFilters = list(
        list(
          Namespace = "string",
          MetricNames = list(
            "string"
          )
        )
      ),
      FirehoseArn = "string",
      RoleArn = "string",
      State = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdateDate = as.POSIXct(
        "2015-01-01"
      ),
      OutputFormat = "json"|"opentelemetry0.7",
      StatisticsConfigurations = list(
        list(
          IncludeMetrics = list(
            list(
              Namespace = "string",
              MetricName = "string"
            )
          ),
          AdditionalStatistics = list(
            "string"
          )
        )
      ),
      IncludeLinkedAccountsMetrics = TRUE|FALSE
    )

### Request syntax

    svc$get_metric_stream(
      Name = "string"
    )
