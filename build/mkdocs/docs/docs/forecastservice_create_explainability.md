<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_explainability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Explainability is only available for Forecasts and Predictors generated from an AutoPredictor (CreateAutoPredictor)

### Description

Explainability is only available for Forecasts and Predictors generated
from an AutoPredictor (`create_auto_predictor`)

Creates an Amazon Forecast Explainability.

Explainability helps you better understand how the attributes in your
datasets impact forecast. Amazon Forecast uses a metric called Impact
scores to quantify the relative impact of each attribute and determine
whether they increase or decrease forecast values.

To enable Forecast Explainability, your predictor must include at least
one of the following: related time series, item metadata, or additional
datasets like Holidays and the Weather Index.

CreateExplainability accepts either a Predictor ARN or Forecast ARN. To
receive aggregated Impact scores for all time series and time points in
your datasets, provide a Predictor ARN. To receive Impact scores for
specific time series and time points, provide a Forecast ARN.

**CreateExplainability with a Predictor ARN**

You can only have one Explainability resource per predictor. If you
already enabled `ExplainPredictor` in `create_auto_predictor`, that
predictor already has an Explainability resource.

The following parameters are required when providing a Predictor ARN:

-   `ExplainabilityName` - A unique name for the Explainability.

-   `ResourceArn` - The Arn of the predictor.

-   `TimePointGranularity` - Must be set to “ALL”.

-   `TimeSeriesGranularity` - Must be set to “ALL”.

Do not specify a value for the following parameters:

-   `DataSource` - Only valid when TimeSeriesGranularity is “SPECIFIC”.

-   `Schema` - Only valid when TimeSeriesGranularity is “SPECIFIC”.

-   `StartDateTime` - Only valid when TimePointGranularity is
    “SPECIFIC”.

-   `EndDateTime` - Only valid when TimePointGranularity is “SPECIFIC”.

**CreateExplainability with a Forecast ARN**

You can specify a maximum of 50 time series and 500 time points.

The following parameters are required when providing a Predictor ARN:

-   `ExplainabilityName` - A unique name for the Explainability.

-   `ResourceArn` - The Arn of the forecast.

-   `TimePointGranularity` - Either “ALL” or “SPECIFIC”.

-   `TimeSeriesGranularity` - Either “ALL” or “SPECIFIC”.

If you set TimeSeriesGranularity to “SPECIFIC”, you must also provide
the following:

-   `DataSource` - The S3 location of the CSV file specifying your time
    series.

-   `Schema` - The Schema defines the attributes and attribute types
    listed in the Data Source.

If you set TimePointGranularity to “SPECIFIC”, you must also provide the
following:

-   `StartDateTime` - The first timestamp in the range of time points.

-   `EndDateTime` - The last timestamp in the range of time points.

### Usage

    forecastservice_create_explainability(ExplainabilityName, ResourceArn,
      ExplainabilityConfig, DataSource, Schema, EnableVisualization,
      StartDateTime, EndDateTime, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_explainability_:_ExplainabilityName">ExplainabilityName</code></td>
<td><p>[required] A unique name for the Explainability.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_explainability_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Predictor or
Forecast used to create the Explainability.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_explainability_:_ExplainabilityConfig">ExplainabilityConfig</code></td>
<td><p>[required] The configuration settings that define the granularity
of time series and time points for the Explainability.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_explainability_:_DataSource">DataSource</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_explainability_:_Schema">Schema</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_explainability_:_EnableVisualization">EnableVisualization</code></td>
<td><p>Create an Explainability visualization that is viewable within
the Amazon Web Services console.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_explainability_:_StartDateTime">StartDateTime</code></td>
<td><p>If <code>TimePointGranularity</code> is set to
<code>SPECIFIC</code>, define the first point for the
Explainability.</p>
<p>Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
2015-01-01T20:00:00)</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_explainability_:_EndDateTime">EndDateTime</code></td>
<td><p>If <code>TimePointGranularity</code> is set to
<code>SPECIFIC</code>, define the last time point for the
Explainability.</p>
<p>Use the following timestamp format: yyyy-MM-ddTHH:mm:ss (example:
2015-01-01T20:00:00)</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_explainability_:_Tags">Tags</code></td>
<td><p>Optional metadata to help you categorize and organize your
resources. Each tag consists of a key and an optional value, both of
which you define. Tag keys and values are case sensitive.</p>
<p>The following restrictions apply to tags:</p>
<ul>
<li><p>For each resource, each tag key must be unique and each tag key
must have one value.</p></li>
<li><p>Maximum number of tags per resource: 50.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8.</p></li>
<li><p>Accepted characters: all letters and numbers, spaces
representable in UTF-8, and + - = . _ : / @. If your tagging schema is
used across other services and resources, the character restrictions of
those services also apply.</p></li>
<li><p>Key prefixes cannot include any upper or lowercase combination of
<code style="white-space: pre;">⁠aws:⁠</code> or <code
style="white-space: pre;">⁠AWS:⁠</code>. Values can have this prefix. If a
tag value has <code>aws</code> as its prefix but the key does not,
Forecast considers it to be a user tag and will count against the limit
of 50 tags. Tags with only the key prefix of <code>aws</code> do not
count against your tags per resource limit. You cannot edit or delete
tag keys with this prefix.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExplainabilityArn = "string"
    )

### Request syntax

    svc$create_explainability(
      ExplainabilityName = "string",
      ResourceArn = "string",
      ExplainabilityConfig = list(
        TimeSeriesGranularity = "ALL"|"SPECIFIC",
        TimePointGranularity = "ALL"|"SPECIFIC"
      ),
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
      EnableVisualization = TRUE|FALSE,
      StartDateTime = "string",
      EndDateTime = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
