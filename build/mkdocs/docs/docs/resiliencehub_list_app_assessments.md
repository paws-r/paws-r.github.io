<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_app_assessments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the assessments for an Resilience Hub application

### Description

Lists the assessments for an Resilience Hub application. You can use
request parameters to refine the results for the response object.

### Usage

    resiliencehub_list_app_assessments(appArn, assessmentName,
      assessmentStatus, complianceStatus, invoker, maxResults, nextToken,
      reverseOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_list_app_assessments_:_appArn">appArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Resilience Hub application.
The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_app_assessments_:_assessmentName">assessmentName</code></td>
<td><p>The name for the assessment.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_app_assessments_:_assessmentStatus">assessmentStatus</code></td>
<td><p>The current status of the assessment for the resiliency
policy.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_app_assessments_:_complianceStatus">complianceStatus</code></td>
<td><p>The current status of compliance for the resiliency
policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_app_assessments_:_invoker">invoker</code></td>
<td><p>Specifies the entity that invoked a specific assessment, either a
<code>User</code> or the <code>System</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_app_assessments_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_list_app_assessments_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_list_app_assessments_:_reverseOrder">reverseOrder</code></td>
<td><p>The default is to sort by ascending <strong>startTime</strong>.
To sort by descending <strong>startTime</strong>, set reverseOrder to
<code>true</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentSummaries = list(
        list(
          appArn = "string",
          appVersion = "string",
          assessmentArn = "string",
          assessmentName = "string",
          assessmentStatus = "Pending"|"InProgress"|"Failed"|"Success",
          complianceStatus = "PolicyBreached"|"PolicyMet",
          cost = list(
            amount = 123.0,
            currency = "string",
            frequency = "Hourly"|"Daily"|"Monthly"|"Yearly"
          ),
          endTime = as.POSIXct(
            "2015-01-01"
          ),
          invoker = "User"|"System",
          message = "string",
          resiliencyScore = 123.0,
          startTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_app_assessments(
      appArn = "string",
      assessmentName = "string",
      assessmentStatus = list(
        "Pending"|"InProgress"|"Failed"|"Success"
      ),
      complianceStatus = "PolicyBreached"|"PolicyMet",
      invoker = "User"|"System",
      maxResults = 123,
      nextToken = "string",
      reverseOrder = TRUE|FALSE
    )
