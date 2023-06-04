<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_update_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Evidently experiment

### Description

Updates an Evidently experiment.

Don't use this operation to update an experiment's tag. Instead, use
`tag_resource`.

### Usage

    cloudwatchevidently_update_experiment(description, experiment,
      metricGoals, onlineAbConfig, project, randomizationSalt, removeSegment,
      samplingRate, segment, treatments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_experiment_:_description">description</code></td>
<td><p>An optional description of the experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_experiment_:_experiment">experiment</code></td>
<td><p>[required] The name of the experiment to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_experiment_:_metricGoals">metricGoals</code></td>
<td><p>An array of structures that defines the metrics used for the
experiment, and whether a higher or lower value for each metric is the
goal.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_experiment_:_onlineAbConfig">onlineAbConfig</code></td>
<td><p>A structure that contains the configuration of which variation o
use as the "control" version. The "control" version is used for
comparison with other variations. This structure also specifies how much
experiment traffic is allocated to each variation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_experiment_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
experiment that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_experiment_:_randomizationSalt">randomizationSalt</code></td>
<td><p>When Evidently assigns a particular user session to an
experiment, it must use a randomization ID to determine which variation
the user session is served. This randomization ID is a combination of
the entity ID and <code>randomizationSalt</code>. If you omit
<code>randomizationSalt</code>, Evidently uses the experiment name as
the <code>randomizationSalt</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_experiment_:_removeSegment">removeSegment</code></td>
<td><p>Removes a segment from being used in an experiment. You can't use
this parameter if the experiment is currently running.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_experiment_:_samplingRate">samplingRate</code></td>
<td><p>The portion of the available audience that you want to allocate
to this experiment, in thousandths of a percent. The available audience
is the total audience minus the audience that you have allocated to
overrides or current launches of this feature.</p>
<p>This is represented in thousandths of a percent. For example, specify
20,000 to allocate 20% of the available audience.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_experiment_:_segment">segment</code></td>
<td><p>Adds an audience <em>segment</em> to an experiment. When a
segment is used in an experiment, only user sessions that match the
segment pattern are used in the experiment. You can't use this parameter
if the experiment is currently running.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_experiment_:_treatments">treatments</code></td>
<td><p>An array of structures that define the variations being tested in
the experiment.</p></td>
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

    svc$update_experiment(
      description = "string",
      experiment = "string",
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
      onlineAbConfig = list(
        controlTreatmentName = "string",
        treatmentWeights = list(
          123
        )
      ),
      project = "string",
      randomizationSalt = "string",
      removeSegment = TRUE|FALSE,
      samplingRate = 123,
      segment = "string",
      treatments = list(
        list(
          description = "string",
          feature = "string",
          name = "string",
          variation = "string"
        )
      )
    )
