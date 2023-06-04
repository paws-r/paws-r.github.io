<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_app_component_compliances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the compliances for an Resilience Hub Application Component

### Description

Lists the compliances for an Resilience Hub Application Component.

### Usage

    resiliencehub_list_app_component_compliances(assessmentArn, maxResults,
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
id="resiliencehub_list_app_component_compliances_:_assessmentArn">assessmentArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the assessment. The
format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_app_component_compliances_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_app_component_compliances_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      componentCompliances = list(
        list(
          appComponentName = "string",
          compliance = list(
            list(
              achievableRpoInSecs = 123,
              achievableRtoInSecs = 123,
              complianceStatus = "PolicyBreached"|"PolicyMet",
              currentRpoInSecs = 123,
              currentRtoInSecs = 123,
              message = "string",
              rpoDescription = "string",
              rpoReferenceId = "string",
              rtoDescription = "string",
              rtoReferenceId = "string"
            )
          ),
          cost = list(
            amount = 123.0,
            currency = "string",
            frequency = "Hourly"|"Daily"|"Monthly"|"Yearly"
          ),
          message = "string",
          resiliencyScore = list(
            disruptionScore = list(
              123.0
            ),
            score = 123.0
          ),
          status = "PolicyBreached"|"PolicyMet"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_app_component_compliances(
      assessmentArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
