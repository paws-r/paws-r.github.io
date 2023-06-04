<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_list_deliverability_test_reports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses

### Description

Show a list of the predictive inbox placement tests that you've
performed, regardless of their statuses. For predictive inbox placement
tests that are complete, you can use the
`get_deliverability_test_report` operation to view the results.

### Usage

    pinpointemail_list_deliverability_test_reports(NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_list_deliverability_test_reports_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_deliverability_test_reports</code> to indicate the position
in the list of predictive inbox placement tests.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_list_deliverability_test_reports_:_PageSize">PageSize</code></td>
<td><p>The number of results to show in a single call to
<code>list_deliverability_test_reports</code>. If the number of results
is larger than the number you specified in this parameter, then the
response includes a <code>NextToken</code> element, which you can use to
obtain additional results.</p>
<p>The value you specify has to be at least 0, and can be no more than
1000.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeliverabilityTestReports = list(
        list(
          ReportId = "string",
          ReportName = "string",
          Subject = "string",
          FromEmailAddress = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          DeliverabilityTestStatus = "IN_PROGRESS"|"COMPLETED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_deliverability_test_reports(
      NextToken = "string",
      PageSize = 123
    )
