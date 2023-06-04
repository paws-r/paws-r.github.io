<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_ops_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about an OpsItem by using the ID

### Description

Get information about an OpsItem by using the ID. You must have
permission in Identity and Access Management (IAM) to view information
about an OpsItem. For more information, see [Getting started with
OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/)
in the *Amazon Web Services Systems Manager User Guide*.

Operations engineers and IT professionals use Amazon Web Services
Systems Manager OpsCenter to view, investigate, and remediate
operational issues impacting the performance and health of their Amazon
Web Services resources. For more information, see
[OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
in the *Amazon Web Services Systems Manager User Guide*.

### Usage

    ssm_get_ops_item(OpsItemId, OpsItemArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_ops_item_:_OpsItemId">OpsItemId</code></td>
<td><p>[required] The ID of the OpsItem that you want to get.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_get_ops_item_:_OpsItemArn">OpsItemArn</code></td>
<td><p>The OpsItem Amazon Resource Name (ARN).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OpsItem = list(
        CreatedBy = "string",
        OpsItemType = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        Description = "string",
        LastModifiedBy = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        Notifications = list(
          list(
            Arn = "string"
          )
        ),
        Priority = 123,
        RelatedOpsItems = list(
          list(
            OpsItemId = "string"
          )
        ),
        Status = "Open"|"InProgress"|"Resolved"|"Pending"|"TimedOut"|"Cancelling"|"Cancelled"|"Failed"|"CompletedWithSuccess"|"CompletedWithFailure"|"Scheduled"|"RunbookInProgress"|"PendingChangeCalendarOverride"|"ChangeCalendarOverrideApproved"|"ChangeCalendarOverrideRejected"|"PendingApproval"|"Approved"|"Rejected"|"Closed",
        OpsItemId = "string",
        Version = "string",
        Title = "string",
        Source = "string",
        OperationalData = list(
          list(
            Value = "string",
            Type = "SearchableString"|"String"
          )
        ),
        Category = "string",
        Severity = "string",
        ActualStartTime = as.POSIXct(
          "2015-01-01"
        ),
        ActualEndTime = as.POSIXct(
          "2015-01-01"
        ),
        PlannedStartTime = as.POSIXct(
          "2015-01-01"
        ),
        PlannedEndTime = as.POSIXct(
          "2015-01-01"
        ),
        OpsItemArn = "string"
      )
    )

### Request syntax

    svc$get_ops_item(
      OpsItemId = "string",
      OpsItemArn = "string"
    )
