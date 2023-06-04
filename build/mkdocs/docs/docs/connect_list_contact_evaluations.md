<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_contact_evaluations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists contact evaluations in the specified Amazon Connect instance

### Description

Lists contact evaluations in the specified Amazon Connect instance.

### Usage

    connect_list_contact_evaluations(InstanceId, ContactId, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_contact_evaluations_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_contact_evaluations_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact in this instance of
Amazon Connect.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_contact_evaluations_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p>
<p>This is not expected to be set because the value returned in the
previous response is always null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationSummaryList = list(
        list(
          EvaluationId = "string",
          EvaluationArn = "string",
          EvaluationFormTitle = "string",
          EvaluationFormId = "string",
          Status = "DRAFT"|"SUBMITTED",
          EvaluatorArn = "string",
          Score = list(
            Percentage = 123.0,
            NotApplicable = TRUE|FALSE,
            AutomaticFail = TRUE|FALSE
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_contact_evaluations(
      InstanceId = "string",
      ContactId = "string",
      NextToken = "string"
    )
