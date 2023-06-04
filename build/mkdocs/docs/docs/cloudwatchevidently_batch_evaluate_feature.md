<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_batch_evaluate_feature</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation assigns feature variation to user sessions

### Description

This operation assigns feature variation to user sessions. For each user
session, you pass in an `entityID` that represents the user. Evidently
then checks the evaluation rules and assigns the variation.

The first rules that are evaluated are the override rules. If the user's
`entityID` matches an override rule, the user is served the variation
specified by that rule.

Next, if there is a launch of the feature, the user might be assigned to
a variation in the launch. The chance of this depends on the percentage
of users that are allocated to that launch. If the user is enrolled in
the launch, the variation they are served depends on the allocation of
the various feature variations used for the launch.

If the user is not assigned to a launch, and there is an ongoing
experiment for this feature, the user might be assigned to a variation
in the experiment. The chance of this depends on the percentage of users
that are allocated to that experiment. If the user is enrolled in the
experiment, the variation they are served depends on the allocation of
the various feature variations used for the experiment.

If the user is not assigned to a launch or experiment, they are served
the default variation.

### Usage

    cloudwatchevidently_batch_evaluate_feature(project, requests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_batch_evaluate_feature_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
feature being evaluated.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_batch_evaluate_feature_:_requests">requests</code></td>
<td><p>[required] An array of structures, where each structure assigns a
feature variation to one user session.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      results = list(
        list(
          details = "string",
          entityId = "string",
          feature = "string",
          project = "string",
          reason = "string",
          value = list(
            boolValue = TRUE|FALSE,
            doubleValue = 123.0,
            longValue = 123,
            stringValue = "string"
          ),
          variation = "string"
        )
      )
    )

### Request syntax

    svc$batch_evaluate_feature(
      project = "string",
      requests = list(
        list(
          entityId = "string",
          evaluationContext = "string",
          feature = "string"
        )
      )
    )
