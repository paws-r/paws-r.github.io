<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_put_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Running PutPermission permits the specified Amazon Web Services account or Amazon Web Services organization to put events to the specified event bus

### Description

Running `put_permission` permits the specified Amazon Web Services
account or Amazon Web Services organization to put events to the
specified *event bus*. Amazon EventBridge (CloudWatch Events) rules in
your account are triggered by these events arriving to an event bus in
your account.

For another account to send events to your account, that external
account must have an EventBridge rule with your account's event bus as a
target.

To enable multiple Amazon Web Services accounts to put events to your
event bus, run `put_permission` once for each of these accounts. Or, if
all the accounts are members of the same Amazon Web Services
organization, you can run `put_permission` once specifying `Principal`
as "\*" and specifying the Amazon Web Services organization ID in
`Condition`, to grant permissions to all accounts in that organization.

If you grant permissions using an organization, then accounts in that
organization must specify a `RoleArn` with proper permissions when they
use `PutTarget` to add your account's event bus as a target. For more
information, see [Sending and Receiving Events Between Amazon Web
Services
Accounts](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-cross-account.html)
in the *Amazon EventBridge User Guide*.

The permission policy on the event bus cannot exceed 10 KB in size.

### Usage

    eventbridge_put_permission(EventBusName, Action, Principal, StatementId,
      Condition, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_put_permission_:_EventBusName">EventBusName</code></td>
<td><p>The name of the event bus associated with the rule. If you omit
this, the default event bus is used.</p></td>
</tr>
<tr class="even">
<td><code id="eventbridge_put_permission_:_Action">Action</code></td>
<td><p>The action that you are enabling the other account to
perform.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_put_permission_:_Principal">Principal</code></td>
<td><p>The 12-digit Amazon Web Services account ID that you are
permitting to put events to your default event bus. Specify "*" to
permit any account to put events to your default event bus.</p>
<p>If you specify "*" without specifying <code>Condition</code>, avoid
creating rules that may match undesirable events. To create more secure
rules, make sure that the event pattern for each rule contains an
<code>account</code> field with a specific account ID from which to
receive events. Rules with an account field do not match any events sent
from other accounts.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_put_permission_:_StatementId">StatementId</code></td>
<td><p>An identifier string for the external account that you are
granting permissions to. If you later want to revoke the permission for
this external account, specify this <code>StatementId</code> when you
run <code>remove_permission</code>.</p>
<p>Each <code>StatementId</code> must be unique.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_put_permission_:_Condition">Condition</code></td>
<td><p>This parameter enables you to limit the permission to accounts
that fulfill a certain condition, such as being a member of a certain
Amazon Web Services organization. For more information about Amazon Web
Services Organizations, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">What
Is Amazon Web Services Organizations</a> in the <em>Amazon Web Services
Organizations User Guide</em>.</p>
<p>If you specify <code>Condition</code> with an Amazon Web Services
organization ID, and specify "*" as the value for
<code>Principal</code>, you grant permission to all the accounts in the
named organization.</p>
<p>The <code>Condition</code> is a JSON string which must contain
<code>Type</code>, <code>Key</code>, and <code>Value</code>
fields.</p></td>
</tr>
<tr class="even">
<td><code id="eventbridge_put_permission_:_Policy">Policy</code></td>
<td><p>A JSON string that describes the permission policy statement. You
can include a <code>Policy</code> parameter in the request instead of
using the <code>StatementId</code>, <code>Action</code>,
<code>Principal</code>, or <code>Condition</code> parameters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_permission(
      EventBusName = "string",
      Action = "string",
      Principal = "string",
      StatementId = "string",
      Condition = list(
        Type = "string",
        Key = "string",
        Value = "string"
      ),
      Policy = "string"
    )
