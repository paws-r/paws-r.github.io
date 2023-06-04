<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_list_policy_generations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the policy generations requested in the last seven days

### Description

Lists all of the policy generations requested in the last seven days.

### Usage

    accessanalyzer_list_policy_generations(principalArn, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_list_policy_generations_:_principalArn">principalArn</code></td>
<td><p>The ARN of the IAM entity (user or role) for which you are
generating a policy. Use this with <code>ListGeneratedPolicies</code> to
filter the results to only include results for a specific
principal.</p></td>
</tr>
<tr class="even">
<td><code
id="accessanalyzer_list_policy_generations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="accessanalyzer_list_policy_generations_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      policyGenerations = list(
        list(
          jobId = "string",
          principalArn = "string",
          status = "IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"CANCELED",
          startedOn = as.POSIXct(
            "2015-01-01"
          ),
          completedOn = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_policy_generations(
      principalArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
