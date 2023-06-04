<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_ops_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Query a set of OpsItems

### Description

Query a set of OpsItems. You must have permission in Identity and Access
Management (IAM) to query a list of OpsItems. For more information, see
[Getting started with
OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/)
in the *Amazon Web Services Systems Manager User Guide*.

Operations engineers and IT professionals use Amazon Web Services
Systems Manager OpsCenter to view, investigate, and remediate
operational issues impacting the performance and health of their Amazon
Web Services resources. For more information, see
[OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
in the *Amazon Web Services Systems Manager User Guide*.

### Usage

    ssm_describe_ops_items(OpsItemFilters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_ops_items_:_OpsItemFilters">OpsItemFilters</code></td>
<td><p>One or more filters to limit the response.</p>
<ul>
<li><p>Key: CreatedTime</p>
<p>Operations: GreaterThan, LessThan</p></li>
<li><p>Key: LastModifiedBy</p>
<p>Operations: Contains, Equals</p></li>
<li><p>Key: LastModifiedTime</p>
<p>Operations: GreaterThan, LessThan</p></li>
<li><p>Key: Priority</p>
<p>Operations: Equals</p></li>
<li><p>Key: Source</p>
<p>Operations: Contains, Equals</p></li>
<li><p>Key: Status</p>
<p>Operations: Equals</p></li>
<li><p>Key: Title*</p>
<p>Operations: Equals,Contains</p></li>
<li><p>Key: OperationalData**</p>
<p>Operations: Equals</p></li>
<li><p>Key: OperationalDataKey</p>
<p>Operations: Equals</p></li>
<li><p>Key: OperationalDataValue</p>
<p>Operations: Equals, Contains</p></li>
<li><p>Key: OpsItemId</p>
<p>Operations: Equals</p></li>
<li><p>Key: ResourceId</p>
<p>Operations: Contains</p></li>
<li><p>Key: AutomationId</p>
<p>Operations: Equals</p></li>
</ul>
<p>*The Equals operator for Title matches the first 100 characters. If
you specify more than 100 characters, they system returns an error that
the filter value exceeds the length limit.</p>
<p>**If you filter the response by using the OperationalData operator,
specify a key-value pair by using the following JSON format:
{"key":"key_name","value":"a_value"}</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_ops_items_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_describe_ops_items_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      OpsItemSummaries = list(
        list(
          CreatedBy = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedBy = "string",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          Priority = 123,
          Source = "string",
          Status = "Open"|"InProgress"|"Resolved"|"Pending"|"TimedOut"|"Cancelling"|"Cancelled"|"Failed"|"CompletedWithSuccess"|"CompletedWithFailure"|"Scheduled"|"RunbookInProgress"|"PendingChangeCalendarOverride"|"ChangeCalendarOverrideApproved"|"ChangeCalendarOverrideRejected"|"PendingApproval"|"Approved"|"Rejected"|"Closed",
          OpsItemId = "string",
          Title = "string",
          OperationalData = list(
            list(
              Value = "string",
              Type = "SearchableString"|"String"
            )
          ),
          Category = "string",
          Severity = "string",
          OpsItemType = "string",
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
          )
        )
      )
    )

### Request syntax

    svc$describe_ops_items(
      OpsItemFilters = list(
        list(
          Key = "Status"|"CreatedBy"|"Source"|"Priority"|"Title"|"OpsItemId"|"CreatedTime"|"LastModifiedTime"|"ActualStartTime"|"ActualEndTime"|"PlannedStartTime"|"PlannedEndTime"|"OperationalData"|"OperationalDataKey"|"OperationalDataValue"|"ResourceId"|"AutomationId"|"Category"|"Severity"|"OpsItemType"|"ChangeRequestByRequesterArn"|"ChangeRequestByRequesterName"|"ChangeRequestByApproverArn"|"ChangeRequestByApproverName"|"ChangeRequestByTemplate"|"ChangeRequestByTargetsResourceGroup"|"InsightByType"|"AccountId",
          Values = list(
            "string"
          ),
          Operator = "Equal"|"Contains"|"GreaterThan"|"LessThan"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
