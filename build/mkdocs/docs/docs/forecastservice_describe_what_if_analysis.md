<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_what_if_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the what-if analysis created using the CreateWhatIfAnalysis operation

### Description

Describes the what-if analysis created using the
`create_what_if_analysis` operation.

In addition to listing the properties provided in the
`create_what_if_analysis` request, this operation lists the following
properties:

-   `CreationTime`

-   `LastModificationTime`

-   `Message` - If an error occurred, information about the error.

-   `Status`

### Usage

    forecastservice_describe_what_if_analysis(WhatIfAnalysisArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_what_if_analysis_:_WhatIfAnalysisArn">WhatIfAnalysisArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the what-if analysis
that you are interested in.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WhatIfAnalysisName = "string",
      WhatIfAnalysisArn = "string",
      ForecastArn = "string",
      EstimatedTimeRemainingInMinutes = 123,
      Status = "string",
      Message = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      TimeSeriesSelector = list(
        TimeSeriesIdentifiers = list(
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
          Format = "string"
        )
      )
    )

### Request syntax

    svc$describe_what_if_analysis(
      WhatIfAnalysisArn = "string"
    )
