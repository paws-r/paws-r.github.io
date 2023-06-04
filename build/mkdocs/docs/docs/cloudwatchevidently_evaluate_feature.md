<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_evaluate_feature</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation assigns a feature variation to one given user session

### Description

This operation assigns a feature variation to one given user session.
You pass in an `entityID` that represents the user. Evidently then
checks the evaluation rules and assigns the variation.

The first rules that are evaluated are the override rules. If the user's
`entityID` matches an override rule, the user is served the variation
specified by that rule.

If there is a current launch with this feature that uses segment
overrides, and if the user session's `evaluationContext` matches a
segment rule defined in a segment override, the configuration in the
segment overrides is used. For more information about segments, see
`create_segment` and [Use segments to focus your
audience](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html).

If there is a launch with no segment overrides, the user might be
assigned to a variation in the launch. The chance of this depends on the
percentage of users that are allocated to that launch. If the user is
enrolled in the launch, the variation they are served depends on the
allocation of the various feature variations used for the launch.

If the user is not assigned to a launch, and there is an ongoing
experiment for this feature, the user might be assigned to a variation
in the experiment. The chance of this depends on the percentage of users
that are allocated to that experiment.

If the experiment uses a segment, then only user sessions with
`evaluationContext` values that match the segment rule are used in the
experiment.

If the user is enrolled in the experiment, the variation they are served
depends on the allocation of the various feature variations used for the
experiment.

If the user is not assigned to a launch or experiment, they are served
the default variation.

### Usage

    cloudwatchevidently_evaluate_feature(entityId, evaluationContext,
      feature, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_evaluate_feature_:_entityId">entityId</code></td>
<td><p>[required] An internal ID that represents a unique user of the
application. This <code>entityID</code> is checked against any override
rules assigned for this feature.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_evaluate_feature_:_evaluationContext">evaluationContext</code></td>
<td><p>A JSON object of attributes that you can optionally pass in as
part of the evaluation event sent to Evidently from the user session.
Evidently can use this value to match user sessions with defined
audience segments. For more information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html">Use
segments to focus your audience</a>.</p>
<p>If you include this parameter, the value must be a JSON object. A
JSON array is not supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_evaluate_feature_:_feature">feature</code></td>
<td><p>[required] The name of the feature being evaluated.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_evaluate_feature_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains this
feature.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      details = "string",
      reason = "string",
      value = list(
        boolValue = TRUE|FALSE,
        doubleValue = 123.0,
        longValue = 123,
        stringValue = "string"
      ),
      variation = "string"
    )

### Request syntax

    svc$evaluate_feature(
      entityId = "string",
      evaluationContext = "string",
      feature = "string",
      project = "string"
    )
