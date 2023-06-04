<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_sop_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the standard operating procedure (SOP) recommendations for the Resilience Hub applications

### Description

Lists the standard operating procedure (SOP) recommendations for the
Resilience Hub applications.

### Usage

    resiliencehub_list_sop_recommendations(assessmentArn, maxResults,
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
id="resiliencehub_list_sop_recommendations_:_assessmentArn">assessmentArn</code></td>
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
id="resiliencehub_list_sop_recommendations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_sop_recommendations_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      sopRecommendations = list(
        list(
          appComponentName = "string",
          description = "string",
          items = list(
            list(
              alreadyImplemented = TRUE|FALSE,
              resourceId = "string",
              targetAccountId = "string",
              targetRegion = "string"
            )
          ),
          name = "string",
          prerequisite = "string",
          recommendationId = "string",
          referenceId = "string",
          serviceType = "SSM"
        )
      )
    )

### Request syntax

    svc$list_sop_recommendations(
      assessmentArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
