<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_get_generated_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the policy that was generated using StartPolicyGeneration

### Description

Retrieves the policy that was generated using `start_policy_generation`.

### Usage

    accessanalyzer_get_generated_policy(jobId, includeResourcePlaceholders,
      includeServiceLevelTemplate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_get_generated_policy_:_jobId">jobId</code></td>
<td><p>[required] The <code>JobId</code> that is returned by the
<code>start_policy_generation</code> operation. The <code>JobId</code>
can be used with <code>get_generated_policy</code> to retrieve the
generated policies or used with <code>cancel_policy_generation</code> to
cancel the policy generation request.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_get_generated_policy_:_includeResourcePlaceholders">includeResourcePlaceholders</code></td>
<td><p>The level of detail that you want to generate. You can specify
whether to generate policies with placeholders for resource ARNs for
actions that support resource level granularity in policies.</p>
<p>For example, in the resource section of a policy, you can receive a
placeholder such as <code>"Resource":"arn:aws:s3:::${BucketName}"</code>
instead of <code>"*"</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_get_generated_policy_:_includeServiceLevelTemplate">includeServiceLevelTemplate</code></td>
<td><p>The level of detail that you want to generate. You can specify
whether to generate service-level policies.</p>
<p>IAM Access Analyzer uses <code>iam:servicelastaccessed</code> to
identify services that have been used recently to create this
service-level template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobDetails = list(
        jobId = "string",
        status = "IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"CANCELED",
        startedOn = as.POSIXct(
          "2015-01-01"
        ),
        completedOn = as.POSIXct(
          "2015-01-01"
        ),
        jobError = list(
          code = "AUTHORIZATION_ERROR"|"RESOURCE_NOT_FOUND_ERROR"|"SERVICE_QUOTA_EXCEEDED_ERROR"|"SERVICE_ERROR",
          message = "string"
        )
      ),
      generatedPolicyResult = list(
        properties = list(
          isComplete = TRUE|FALSE,
          principalArn = "string",
          cloudTrailProperties = list(
            trailProperties = list(
              list(
                cloudTrailArn = "string",
                regions = list(
                  "string"
                ),
                allRegions = TRUE|FALSE
              )
            ),
            startTime = as.POSIXct(
              "2015-01-01"
            ),
            endTime = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        generatedPolicies = list(
          list(
            policy = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_generated_policy(
      jobId = "string",
      includeResourcePlaceholders = TRUE|FALSE,
      includeServiceLevelTemplate = TRUE|FALSE
    )
