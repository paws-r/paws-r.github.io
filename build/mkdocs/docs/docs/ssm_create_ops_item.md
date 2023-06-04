<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_create_ops_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new OpsItem

### Description

Creates a new OpsItem. You must have permission in Identity and Access
Management (IAM) to create a new OpsItem. For more information, see
[Getting started with
OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/)
in the *Amazon Web Services Systems Manager User Guide*.

Operations engineers and IT professionals use Amazon Web Services
Systems Manager OpsCenter to view, investigate, and remediate
operational issues impacting the performance and health of their Amazon
Web Services resources. For more information, see [Amazon Web Services
Systems Manager
OpsCenter](https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html)
in the *Amazon Web Services Systems Manager User Guide*.

### Usage

    ssm_create_ops_item(Description, OpsItemType, OperationalData,
      Notifications, Priority, RelatedOpsItems, Source, Title, Tags, Category,
      Severity, ActualStartTime, ActualEndTime, PlannedStartTime,
      PlannedEndTime, AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_create_ops_item_:_Description">Description</code></td>
<td><p>[required] Information about the OpsItem.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_ops_item_:_OpsItemType">OpsItemType</code></td>
<td><p>The type of OpsItem to create. Systems Manager supports the
following types of OpsItems:</p>
<ul>
<li><p><code style="white-space: pre;">⁠/aws/issue⁠</code></p>
<p>This type of OpsItem is used for default OpsItems created by
OpsCenter.</p></li>
<li><p><code style="white-space: pre;">⁠/aws/changerequest⁠</code></p>
<p>This type of OpsItem is used by Change Manager for reviewing and
approving or rejecting change requests.</p></li>
<li><p><code style="white-space: pre;">⁠/aws/insights⁠</code></p>
<p>This type of OpsItem is used by OpsCenter for aggregating and
reporting on duplicate OpsItems.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_ops_item_:_OperationalData">OperationalData</code></td>
<td><p>Operational data is custom data that provides useful reference
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
<tr class="even">
<td><code
id="ssm_create_ops_item_:_Notifications">Notifications</code></td>
<td><p>The Amazon Resource Name (ARN) of an SNS topic where
notifications are sent when this OpsItem is edited or changed.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_ops_item_:_Priority">Priority</code></td>
<td><p>The importance of this OpsItem in relation to other OpsItems in
the system.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_ops_item_:_RelatedOpsItems">RelatedOpsItems</code></td>
<td><p>One or more OpsItems that share something in common with the
current OpsItems. For example, related OpsItems can include OpsItems
with similar error messages, impacted resources, or statuses for the
impacted resource.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_ops_item_:_Source">Source</code></td>
<td><p>[required] The origin of the OpsItem, such as Amazon EC2 or
Systems Manager.</p>
<p>The source name can't contain the following strings:
<code>aws</code>, <code>amazon</code>, and <code>amzn</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_ops_item_:_Title">Title</code></td>
<td><p>[required] A short heading that describes the nature of the
OpsItem and the impacted resource.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_ops_item_:_Tags">Tags</code></td>
<td><p>Optional metadata that you assign to a resource. You can restrict
access to OpsItems by using an inline IAM policy that specifies tags.
For more information, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/#OpsCenter-getting-started-user-permissions">Getting
started with OpsCenter</a> in the <em>Amazon Web Services Systems
Manager User Guide</em>.</p>
<p>Tags use a key-value pair. For example:</p>
<p><code
style="white-space: pre;">⁠Key=Department,Value=Finance⁠</code></p>
<p>To add tags to a new OpsItem, a user must have IAM permissions for
both the <code>ssm:CreateOpsItems</code> operation and the
<code>ssm:AddTagsToResource</code> operation. To add tags to an existing
OpsItem, use the <code>add_tags_to_resource</code> operation.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_ops_item_:_Category">Category</code></td>
<td><p>Specify a category to assign to an OpsItem.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_ops_item_:_Severity">Severity</code></td>
<td><p>Specify a severity to assign to an OpsItem.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_ops_item_:_ActualStartTime">ActualStartTime</code></td>
<td><p>The time a runbook workflow started. Currently reported only for
the OpsItem type <code
style="white-space: pre;">⁠/aws/changerequest⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_ops_item_:_ActualEndTime">ActualEndTime</code></td>
<td><p>The time a runbook workflow ended. Currently reported only for
the OpsItem type <code
style="white-space: pre;">⁠/aws/changerequest⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_ops_item_:_PlannedStartTime">PlannedStartTime</code></td>
<td><p>The time specified in a change request for a runbook workflow to
start. Currently supported only for the OpsItem type <code
style="white-space: pre;">⁠/aws/changerequest⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_ops_item_:_PlannedEndTime">PlannedEndTime</code></td>
<td><p>The time specified in a change request for a runbook workflow to
end. Currently supported only for the OpsItem type <code
style="white-space: pre;">⁠/aws/changerequest⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_ops_item_:_AccountId">AccountId</code></td>
<td><p>The target Amazon Web Services account where you want to create
an OpsItem. To make this call, your account must be configured to work
with OpsItems across accounts. For more information, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/">Setting
up OpsCenter to work with OpsItems across accounts</a> in the <em>Amazon
Web Services Systems Manager User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OpsItemId = "string",
      OpsItemArn = "string"
    )

### Request syntax

    svc$create_ops_item(
      Description = "string",
      OpsItemType = "string",
      OperationalData = list(
        list(
          Value = "string",
          Type = "SearchableString"|"String"
        )
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
      Source = "string",
      Title = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
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
      AccountId = "string"
    )
