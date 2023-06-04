<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_create_deliverability_test_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new predictive inbox placement test

### Description

Create a new predictive inbox placement test. Predictive inbox placement
tests can help you predict how your messages will be handled by various
email providers around the world. When you perform a predictive inbox
placement test, you provide a sample message that contains the content
that you plan to send to your customers. Amazon Pinpoint then sends that
message to special email addresses spread across several major email
providers. After about 24 hours, the test is complete, and you can use
the `get_deliverability_test_report` operation to view the results of
the test.

### Usage

    pinpointemail_create_deliverability_test_report(ReportName,
      FromEmailAddress, Content, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_create_deliverability_test_report_:_ReportName">ReportName</code></td>
<td><p>A unique name that helps you to identify the predictive inbox
placement test when you retrieve the results.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_create_deliverability_test_report_:_FromEmailAddress">FromEmailAddress</code></td>
<td><p>[required] The email address that the predictive inbox placement
test email was sent from.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointemail_create_deliverability_test_report_:_Content">Content</code></td>
<td><p>[required] The HTML body of the message that you sent when you
performed the predictive inbox placement test.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_create_deliverability_test_report_:_Tags">Tags</code></td>
<td><p>An array of objects that define the tags (keys and values) that
you want to associate with the predictive inbox placement test.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportId = "string",
      DeliverabilityTestStatus = "IN_PROGRESS"|"COMPLETED"
    )

### Request syntax

    svc$create_deliverability_test_report(
      ReportName = "string",
      FromEmailAddress = "string",
      Content = list(
        Simple = list(
          Subject = list(
            Data = "string",
            Charset = "string"
          ),
          Body = list(
            Text = list(
              Data = "string",
              Charset = "string"
            ),
            Html = list(
              Data = "string",
              Charset = "string"
            )
          )
        ),
        Raw = list(
          Data = raw
        ),
        Template = list(
          TemplateArn = "string",
          TemplateData = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
