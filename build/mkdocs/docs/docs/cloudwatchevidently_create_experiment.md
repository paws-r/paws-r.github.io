<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_create_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Evidently experiment

### Description

Creates an Evidently *experiment*. Before you create an experiment, you
must create the feature to use for the experiment.

An experiment helps you make feature design decisions based on evidence
and data. An experiment can test as many as five variations at once.
Evidently collects experiment data and analyzes it by statistical
methods, and provides clear recommendations about which variations
perform better.

You can optionally specify a `segment` to have the experiment consider
only certain audience types in the experiment, such as using only user
sessions from a certain location or who use a certain internet browser.

Don't use this operation to update an existing experiment. Instead, use
`update_experiment`.

### Usage

    cloudwatchevidently_create_experiment(description, metricGoals, name,
      onlineAbConfig, project, randomizationSalt, samplingRate, segment, tags,
      treatments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_experiment_:_description">description</code></td>
<td><p>An optional description of the experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_experiment_:_metricGoals">metricGoals</code></td>
<td><p>[required] An array of structures that defines the metrics used
for the experiment, and whether a higher or lower value for each metric
is the goal.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_experiment_:_name">name</code></td>
<td><p>[required] A name for the new experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_experiment_:_onlineAbConfig">onlineAbConfig</code></td>
<td><p>A structure that contains the configuration of which variation to
use as the "control" version. tThe "control" version is used for
comparison with other variations. This structure also specifies how much
experiment traffic is allocated to each variation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_experiment_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that you want to create
the new experiment in.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_experiment_:_randomizationSalt">randomizationSalt</code></td>
<td><p>When Evidently assigns a particular user session to an
experiment, it must use a randomization ID to determine which variation
the user session is served. This randomization ID is a combination of
the entity ID and <code>randomizationSalt</code>. If you omit
<code>randomizationSalt</code>, Evidently uses the experiment name as
the <code>randomizationSalt</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_experiment_:_samplingRate">samplingRate</code></td>
<td><p>The portion of the available audience that you want to allocate
to this experiment, in thousandths of a percent. The available audience
is the total audience minus the audience that you have allocated to
overrides or current launches of this feature.</p>
<p>This is represented in thousandths of a percent. For example, specify
10,000 to allocate 10% of the available audience.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_experiment_:_segment">segment</code></td>
<td><p>Specifies an audience <em>segment</em> to use in the experiment.
When a segment is used in an experiment, only user sessions that match
the segment pattern are used in the experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_experiment_:_tags">tags</code></td>
<td><p>Assigns one or more tags (key-value pairs) to the experiment.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.</p>
<p>Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.</p>
<p>You can associate as many as 50 tags with an experiment.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_experiment_:_treatments">treatments</code></td>
<td><p>[required] An array of structures that describe the configuration
of each feature variation used in the experiment.</p></td>
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

    svc$create_experiment(
      description = "string",
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
      onlineAbConfig = list(
        controlTreatmentName = "string",
        treatmentWeights = list(
          123
        )
      ),
      project = "string",
      randomizationSalt = "string",
      samplingRate = 123,
      segment = "string",
      tags = list(
        "string"
      ),
      treatments = list(
        list(
          description = "string",
          feature = "string",
          name = "string",
          variation = "string"
        )
      )
    )
