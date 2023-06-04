<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_get_feature</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details about one feature

### Description

Returns the details about one feature. You must already know the feature
name. To retrieve a list of features in your account, use
`list_features`.

### Usage

    cloudwatchevidently_get_feature(feature, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_feature_:_feature">feature</code></td>
<td><p>[required] The name of the feature that you want to retrieve
information for.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_get_feature_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
feature.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      feature = list(
        arn = "string",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        defaultVariation = "string",
        description = "string",
        entityOverrides = list(
          "string"
        ),
        evaluationRules = list(
          list(
            name = "string",
            type = "string"
          )
        ),
        evaluationStrategy = "ALL_RULES"|"DEFAULT_VARIATION",
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        project = "string",
        status = "AVAILABLE"|"UPDATING",
        tags = list(
          "string"
        ),
        valueType = "STRING"|"LONG"|"DOUBLE"|"BOOLEAN",
        variations = list(
          list(
            name = "string",
            value = list(
              boolValue = TRUE|FALSE,
              doubleValue = 123.0,
              longValue = 123,
              stringValue = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_feature(
      feature = "string",
      project = "string"
    )
