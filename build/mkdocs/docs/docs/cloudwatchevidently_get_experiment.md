<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_get_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details about one experiment

### Description

Returns the details about one experiment. You must already know the
experiment name. To retrieve a list of experiments in your account, use
`list_experiments`.

### Usage

    cloudwatchevidently_get_experiment(experiment, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_experiment_:_experiment">experiment</code></td>
<td><p>[required] The name of the experiment that you want to see the
details of.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_get_experiment_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
experiment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      experiment = list(
        arn = "string",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        execution = list(
          endedTime = as.POSIXct(
            "2015-01-01"
          ),
          startedTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        lastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        metricGoals = list(
          list(
            desiredChange = "INCREASE"|"DECREASE",
            metricDefinition = list(
              entityIdKey = "string",
              eventPattern = "string",
              name = "string",
              unitLabel = "string",
              valueKey = "string"
            )
          )
        ),
        name = "string",
        onlineAbDefinition = list(
          controlTreatmentName = "string",
          treatmentWeights = list(
            123
          )
        ),
        project = "string",
        randomizationSalt = "string",
        samplingRate = 123,
        schedule = list(
          analysisCompleteTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        segment = "string",
        status = "CREATED"|"UPDATING"|"RUNNING"|"COMPLETED"|"CANCELLED",
        statusReason = "string",
        tags = list(
          "string"
        ),
        treatments = list(
          list(
            description = "string",
            featureVariations = list(
              "string"
            ),
            name = "string"
          )
        ),
        type = "aws.evidently.onlineab"
      )
    )

### Request syntax

    svc$get_experiment(
      experiment = "string",
      project = "string"
    )
