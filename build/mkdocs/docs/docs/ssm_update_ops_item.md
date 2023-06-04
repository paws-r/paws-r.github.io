<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_ops_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Edit or change an OpsItem

### Description

Edit or change an OpsItem. You must have permission in Identity and
Access Management (IAM) to update an OpsItem. For more information, see
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

    ssm_update_ops_item(Description, OperationalData,
      OperationalDataToDelete, Notifications, Priority, RelatedOpsItems,
      Status, OpsItemId, Title, Category, Severity, ActualStartTime,
      ActualEndTime, PlannedStartTime, PlannedEndTime, OpsItemArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_update_ops_item_:_Description">Description</code></td>
<td><p>Update the information about the OpsItem. Provide enough
information so that users reading this OpsItem for the first time
understand the issue.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_ops_item_:_OperationalData">OperationalData</code></td>
<td><p>Add new keys or edit existing key-value pairs of the
OperationalData map in the OpsItem object.</p>
<p>Operational data is custom data that provides useful reference
details about the OpsItem. For example, you can specify log files, error
strings, license keys, troubleshooting tips, or other relevant data. You
enter operational data as key-value pairs. The key has a maximum length
of 128 characters. The value has a maximum size of 20 KB.</p>
<p>Operational data keys <em>can't</em> begin with the following:
<code>amazon</code>, <code>aws</code>, <code>amzn</code>,
<code>ssm</code>, <code style="white-space: pre;">⁠/amazon⁠</code>, <code
style="white-space: pre;">⁠/aws⁠</code>, <code
style="white-space: pre;">⁠/amzn⁠</code>, <code
style="white-space: pre;">⁠/ssm⁠</code>.</p>
<p>You can choose to make the data searchable by other users in the
account or you can restrict search access. Searchable data means that
all users with access to the OpsItem Overview page (as provided by the
<code>describe_ops_items</code> API operation) can view and search on
the specified data. Operational data that isn't searchable is only
viewable by users who have access to the OpsItem (as provided by the
<code>get_ops_item</code> API operation).</p>
<p>Use the <code style="white-space: pre;">⁠/aws/resources⁠</code> key in
OperationalData to specify a related resource in the request. Use the
<code style="white-space: pre;">⁠/aws/automations⁠</code> key in
OperationalData to associate an Automation runbook with the OpsItem. To
view Amazon Web Services CLI example commands that use these keys, see
<a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/#OpsCenter-manually-create-OpsItems">Creating
OpsItems manually</a> in the <em>Amazon Web Services Systems Manager
User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_ops_item_:_OperationalDataToDelete">OperationalDataToDelete</code></td>
<td><p>Keys that you want to remove from the OperationalData
map.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_ops_item_:_Notifications">Notifications</code></td>
<td><p>The Amazon Resource Name (ARN) of an SNS topic where
notifications are sent when this OpsItem is edited or changed.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_update_ops_item_:_Priority">Priority</code></td>
<td><p>The importance of this OpsItem in relation to other OpsItems in
the system.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_ops_item_:_RelatedOpsItems">RelatedOpsItems</code></td>
<td><p>One or more OpsItems that share something in common with the
current OpsItems. For example, related OpsItems can include OpsItems
with similar error messages, impacted resources, or statuses for the
impacted resource.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_update_ops_item_:_Status">Status</code></td>
<td><p>The OpsItem status. Status can be <code>Open</code>, <code
style="white-space: pre;">⁠In Progress⁠</code>, or <code>Resolved</code>.
For more information, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details">Editing
OpsItem details</a> in the <em>Amazon Web Services Systems Manager User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_ops_item_:_OpsItemId">OpsItemId</code></td>
<td><p>[required] The ID of the OpsItem.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_update_ops_item_:_Title">Title</code></td>
<td><p>A short heading that describes the nature of the OpsItem and the
impacted resource.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_ops_item_:_Category">Category</code></td>
<td><p>Specify a new category for an OpsItem.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_update_ops_item_:_Severity">Severity</code></td>
<td><p>Specify a new severity for an OpsItem.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_ops_item_:_ActualStartTime">ActualStartTime</code></td>
<td><p>The time a runbook workflow started. Currently reported only for
the OpsItem type <code
style="white-space: pre;">⁠/aws/changerequest⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_ops_item_:_ActualEndTime">ActualEndTime</code></td>
<td><p>The time a runbook workflow ended. Currently reported only for
the OpsItem type <code
style="white-space: pre;">⁠/aws/changerequest⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_ops_item_:_PlannedStartTime">PlannedStartTime</code></td>
<td><p>The time specified in a change request for a runbook workflow to
start. Currently supported only for the OpsItem type <code
style="white-space: pre;">⁠/aws/changerequest⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_ops_item_:_PlannedEndTime">PlannedEndTime</code></td>
<td><p>The time specified in a change request for a runbook workflow to
end. Currently supported only for the OpsItem type <code
style="white-space: pre;">⁠/aws/changerequest⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_ops_item_:_OpsItemArn">OpsItemArn</code></td>
<td><p>The OpsItem Amazon Resource Name (ARN).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_ops_item(
      Description = "string",
      OperationalData = list(
        list(
          Value = "string",
          Type = "SearchableString"|"String"
        )
      ),
      OperationalDataToDelete = list(
        "string"
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
      Title = "string",
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
