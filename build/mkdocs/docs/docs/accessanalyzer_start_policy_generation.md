<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_start_policy_generation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the policy generation request

### Description

Starts the policy generation request.

### Usage

    accessanalyzer_start_policy_generation(policyGenerationDetails,
      cloudTrailDetails, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_start_policy_generation_:_policyGenerationDetails">policyGenerationDetails</code></td>
<td><p>[required] Contains the ARN of the IAM entity (user or role) for
which you are generating a policy.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_start_policy_generation_:_cloudTrailDetails">cloudTrailDetails</code></td>
<td><p>A <code>CloudTrailDetails</code> object that contains details
about a <code>Trail</code> that you want to analyze to generate
policies.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_start_policy_generation_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, the subsequent retries with the same client
token return the result from the original successful request and they
have no additional effect.</p>
<p>If you do not specify a client token, one is automatically generated
by the Amazon Web Services SDK.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobId = "string"
    )

### Request syntax

    svc$start_policy_generation(
      policyGenerationDetails = list(
        principalArn = "string"
      ),
      cloudTrailDetails = list(
        trails = list(
          list(
            cloudTrailArn = "string",
            regions = list(
              "string"
            ),
            allRegions = TRUE|FALSE
          )
        ),
        accessRole = "string",
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        endTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      clientToken = "string"
    )
