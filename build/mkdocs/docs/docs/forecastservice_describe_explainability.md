<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_explainability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Explainability resource created using the CreateExplainability operation

### Description

Describes an Explainability resource created using the
`create_explainability` operation.

### Usage

    forecastservice_describe_explainability(ExplainabilityArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_explainability_:_ExplainabilityArn">ExplainabilityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Explaianability
to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExplainabilityArn = "string",
      ExplainabilityName = "string",
      ResourceArn = "string",
      ExplainabilityConfig = list(
        TimeSeriesGranularity = "ALL"|"SPECIFIC",
        TimePointGranularity = "ALL"|"SPECIFIC"
      ),
      EnableVisualization = TRUE|FALSE,
      DataSource = list(
        S3Config = list(
          Path = "string",
          RoleArn = "string",
          KMSKeyArn = "string"
        )
      ),
      Schema = list(
        Attributes = list(
          list(
            AttributeName = "string",
            AttributeType = "string"|"integer"|"float"|"timestamp"|"geolocation"
          )
        )
      ),
      StartDateTime = "string",
      EndDateTime = "string",
      EstimatedTimeRemainingInMinutes = 123,
      Message = "string",
      Status = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_explainability(
      ExplainabilityArn = "string"
    )
