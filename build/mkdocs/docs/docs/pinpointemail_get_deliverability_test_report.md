<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_get_deliverability_test_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve the results of a predictive inbox placement test

### Description

Retrieve the results of a predictive inbox placement test.

### Usage

    pinpointemail_get_deliverability_test_report(ReportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_get_deliverability_test_report_:_ReportId">ReportId</code></td>
<td><p>[required] A unique string that identifies the predictive inbox
placement test.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeliverabilityTestReport = list(
        ReportId = "string",
        ReportName = "string",
        Subject = "string",
        FromEmailAddress = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        DeliverabilityTestStatus = "IN_PROGRESS"|"COMPLETED"
      ),
      OverallPlacement = list(
        InboxPercentage = 123.0,
        SpamPercentage = 123.0,
        MissingPercentage = 123.0,
        SpfPercentage = 123.0,
        DkimPercentage = 123.0
      ),
      IspPlacements = list(
        list(
          IspName = "string",
          PlacementStatistics = list(
            InboxPercentage = 123.0,
            SpamPercentage = 123.0,
            MissingPercentage = 123.0,
            SpfPercentage = 123.0,
            DkimPercentage = 123.0
          )
        )
      ),
      Message = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$get_deliverability_test_report(
      ReportId = "string"
    )
