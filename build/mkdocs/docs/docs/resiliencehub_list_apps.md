<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_list_apps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your Resilience Hub applications

### Description

Lists your Resilience Hub applications.

You can filter applications using only one filter at a time or without
using any filter. If you try to filter applications using multiple
filters, you will get the following error:

`⁠An error occurred (ValidationException) when calling the ListApps operation: Only one filter is supported for this operation.⁠`

### Usage

    resiliencehub_list_apps(appArn, maxResults, name, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resiliencehub_list_apps_:_appArn">appArn</code></td>
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
id="resiliencehub_list_apps_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p></td>
</tr>
<tr class="odd">
<td><code id="resiliencehub_list_apps_:_name">name</code></td>
<td><p>The name for the one of the listed applications.</p></td>
</tr>
<tr class="even">
<td><code id="resiliencehub_list_apps_:_nextToken">nextToken</code></td>
<td><p>Null, or the token from a previous call to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appSummaries = list(
        list(
          appArn = "string",
          assessmentSchedule = "Disabled"|"Daily",
          complianceStatus = "PolicyBreached"|"PolicyMet"|"NotAssessed"|"ChangesDetected",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          name = "string",
          resiliencyScore = 123.0,
          status = "Active"|"Deleting"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_apps(
      appArn = "string",
      maxResults = 123,
      name = "string",
      nextToken = "string"
    )
