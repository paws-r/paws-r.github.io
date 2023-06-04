<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_list_usage_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all usage limits within Amazon Redshift Serverless

### Description

Lists all usage limits within Amazon Redshift Serverless.

### Usage

    redshiftserverless_list_usage_limits(maxResults, nextToken, resourceArn,
      usageType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_list_usage_limits_:_maxResults">maxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results. The default is 100.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_usage_limits_:_nextToken">nextToken</code></td>
<td><p>If your initial <code>list_usage_limits</code> operation returns
a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in following <code>list_usage_limits</code>
operations, which returns results in the next page.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_list_usage_limits_:_resourceArn">resourceArn</code></td>
<td><p>The Amazon Resource Name (ARN) associated with the resource whose
usage limits you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_usage_limits_:_usageType">usageType</code></td>
<td><p>The Amazon Redshift Serverless feature whose limits you want to
see.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      usageLimits = list(
        list(
          amount = 123,
          breachAction = "log"|"emit-metric"|"deactivate",
          period = "daily"|"weekly"|"monthly",
          resourceArn = "string",
          usageLimitArn = "string",
          usageLimitId = "string",
          usageType = "serverless-compute"|"cross-region-datasharing"
        )
      )
    )

### Request syntax

    svc$list_usage_limits(
      maxResults = 123,
      nextToken = "string",
      resourceArn = "string",
      usageType = "serverless-compute"|"cross-region-datasharing"
    )
