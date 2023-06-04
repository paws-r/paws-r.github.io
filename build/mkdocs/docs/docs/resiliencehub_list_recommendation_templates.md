<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_recommendation_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the recommendation templates for the Resilience Hub applications

### Description

Lists the recommendation templates for the Resilience Hub applications.

### Usage

    resiliencehub_list_recommendation_templates(assessmentArn, maxResults,
      name, nextToken, recommendationTemplateArn, reverseOrder, status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_list_recommendation_templates_:_assessmentArn">assessmentArn</code></td>
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
id="resiliencehub_list_recommendation_templates_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_recommendation_templates_:_name">name</code></td>
<td><p>The name for one of the listed recommendation templates.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_recommendation_templates_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_recommendation_templates_:_recommendationTemplateArn">recommendationTemplateArn</code></td>
<td><p>The Amazon Resource Name (ARN) for a recommendation
template.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_recommendation_templates_:_reverseOrder">reverseOrder</code></td>
<td><p>The default is to sort by ascending <strong>startTime</strong>.
To sort by descending <strong>startTime</strong>, set reverseOrder to
<code>true</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_recommendation_templates_:_status">status</code></td>
<td><p>The status of the action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      recommendationTemplates = list(
        list(
          appArn = "string",
          assessmentArn = "string",
          endTime = as.POSIXct(
            "2015-01-01"
          ),
          format = "CfnYaml"|"CfnJson",
          message = "string",
          name = "string",
          needsReplacements = TRUE|FALSE,
          recommendationIds = list(
            "string"
          ),
          recommendationTemplateArn = "string",
          recommendationTypes = list(
            "Alarm"|"Sop"|"Test"
          ),
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          status = "Pending"|"InProgress"|"Failed"|"Success",
          tags = list(
            "string"
          ),
          templatesLocation = list(
            bucket = "string",
            prefix = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_recommendation_templates(
      assessmentArn = "string",
      maxResults = 123,
      name = "string",
      nextToken = "string",
      recommendationTemplateArn = "string",
      reverseOrder = TRUE|FALSE,
      status = list(
        "Pending"|"InProgress"|"Failed"|"Success"
      )
    )
