<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_usage_report_subscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more usage report subscriptions

### Description

Retrieves a list that describes one or more usage report subscriptions.

### Usage

    appstream_describe_usage_report_subscriptions(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_describe_usage_report_subscriptions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_usage_report_subscriptions_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UsageReportSubscriptions = list(
        list(
          S3BucketName = "string",
          Schedule = "DAILY",
          LastGeneratedReportDate = as.POSIXct(
            "2015-01-01"
          ),
          SubscriptionErrors = list(
            list(
              ErrorCode = "RESOURCE_NOT_FOUND"|"ACCESS_DENIED"|"INTERNAL_SERVICE_ERROR",
              ErrorMessage = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_usage_report_subscriptions(
      MaxResults = 123,
      NextToken = "string"
    )
