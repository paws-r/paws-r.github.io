<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_list_assessment_run_agents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs

### Description

Lists the agents of the assessment runs that are specified by the ARNs
of the assessment runs.

### Usage

    inspector_list_assessment_run_agents(assessmentRunArn, filter,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_list_assessment_run_agents_:_assessmentRunArn">assessmentRunArn</code></td>
<td><p>[required] The ARN that specifies the assessment run whose agents
you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_assessment_run_agents_:_filter">filter</code></td>
<td><p>You can use this parameter to specify a subset of data to be
included in the action's response.</p>
<p>For a record to match a filter, all specified filter attributes must
match. When multiple values are specified for a filter attribute, any of
the values can match.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_list_assessment_run_agents_:_nextToken">nextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the
<strong>ListAssessmentRunAgents</strong> action. Subsequent calls to the
action fill <strong>nextToken</strong> in the request with the value of
<strong>NextToken</strong> from the previous response to continue
listing data.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_list_assessment_run_agents_:_maxResults">maxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items that you want in the response. The default value is 10. The
maximum value is 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentRunAgents = list(
        list(
          agentId = "string",
          assessmentRunArn = "string",
          agentHealth = "HEALTHY"|"UNHEALTHY"|"UNKNOWN",
          agentHealthCode = "IDLE"|"RUNNING"|"SHUTDOWN"|"UNHEALTHY"|"THROTTLED"|"UNKNOWN",
          agentHealthDetails = "string",
          autoScalingGroup = "string",
          telemetryMetadata = list(
            list(
              messageType = "string",
              count = 123,
              dataSize = 123
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assessment_run_agents(
      assessmentRunArn = "string",
      filter = list(
        agentHealths = list(
          "HEALTHY"|"UNHEALTHY"|"UNKNOWN"
        ),
        agentHealthCodes = list(
          "IDLE"|"RUNNING"|"SHUTDOWN"|"UNHEALTHY"|"THROTTLED"|"UNKNOWN"
        )
      ),
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # Lists the agents of the assessment runs that are specified by the ARNs
    # of the assessment runs.
    svc$list_assessment_run_agents(
      assessmentRunArn = "arn:aws:inspector:us-west-2:123456789012:target/0-0kF...",
      maxResults = 123L
    )

    ## End(Not run)
