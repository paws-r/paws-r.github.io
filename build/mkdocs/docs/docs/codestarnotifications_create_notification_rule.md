<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_create_notification_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a notification rule for a resource

### Description

Creates a notification rule for a resource. The rule specifies the
events you want notifications about and the targets (such as Chatbot
topics or Chatbot clients configured for Slack) where you want to
receive them.

### Usage

    codestarnotifications_create_notification_rule(Name, EventTypeIds,
      Resource, Targets, DetailType, ClientRequestToken, Tags, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_create_notification_rule_:_Name">Name</code></td>
<td><p>[required] The name for the notification rule. Notification rule
names must be unique in your Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_create_notification_rule_:_EventTypeIds">EventTypeIds</code></td>
<td><p>[required] A list of event types associated with this
notification rule. For a list of allowed events, see
EventTypeSummary.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_create_notification_rule_:_Resource">Resource</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
associate with the notification rule. Supported resources include
pipelines in CodePipeline, repositories in CodeCommit, and build
projects in CodeBuild.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_create_notification_rule_:_Targets">Targets</code></td>
<td><p>[required] A list of Amazon Resource Names (ARNs) of Amazon
Simple Notification Service topics and Chatbot clients to associate with
the notification rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_create_notification_rule_:_DetailType">DetailType</code></td>
<td><p>[required] The level of detail to include in the notifications
for this resource. <code>BASIC</code> will include only the contents of
the event as it would appear in Amazon CloudWatch. <code>FULL</code>
will include any supplemental information provided by AWS CodeStar
Notifications and/or the service for the resource for which the
notification is created.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_create_notification_rule_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique, client-generated idempotency token that, when provided
in a request, ensures the request cannot be repeated with a changed
parameter. If a request with the same parameters is received and a token
is included, the request returns information about the initial request
that used that token.</p>
<p>The Amazon Web Services SDKs prepopulate client request tokens. If
you are using an Amazon Web Services SDK, an idempotency token is
created for you.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestarnotifications_create_notification_rule_:_Tags">Tags</code></td>
<td><p>A list of tags to apply to this notification rule. Key names
cannot start with "<code>aws</code>".</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_create_notification_rule_:_Status">Status</code></td>
<td><p>The status of the notification rule. The default value is
<code>ENABLED</code>. If the status is set to <code>DISABLED</code>,
notifications aren't sent for the notification rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$create_notification_rule(
      Name = "string",
      EventTypeIds = list(
        "string"
      ),
      Resource = "string",
      Targets = list(
        list(
          TargetType = "string",
          TargetAddress = "string"
        )
      ),
      DetailType = "BASIC"|"FULL",
      ClientRequestToken = "string",
      Tags = list(
        "string"
      ),
      Status = "ENABLED"|"DISABLED"
    )
