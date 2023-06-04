<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CodeStar Notifications

### Description

This AWS CodeStar Notifications API Reference provides descriptions and
usage examples of the operations and data types for the AWS CodeStar
Notifications API. You can use the AWS CodeStar Notifications API to
work with the following objects:

Notification rules, by calling the following:

-   `create_notification_rule`, which creates a notification rule for a
    resource in your account.

-   `delete_notification_rule`, which deletes a notification rule.

-   `describe_notification_rule`, which provides information about a
    notification rule.

-   `list_notification_rules`, which lists the notification rules
    associated with your account.

-   `update_notification_rule`, which changes the name, events, or
    targets associated with a notification rule.

-   `subscribe`, which subscribes a target to a notification rule.

-   `unsubscribe`, which removes a target from a notification rule.

Targets, by calling the following:

-   `delete_target`, which removes a notification rule target from a
    notification rule.

-   `list_targets`, which lists the targets associated with a
    notification rule.

Events, by calling the following:

-   `list_event_types`, which lists the event types you can include in a
    notification rule.

Tags, by calling the following:

-   `list_tags_for_resource`, which lists the tags already associated
    with a notification rule in your account.

-   `tag_resource`, which associates a tag you provide with a
    notification rule in your account.

-   `untag_resource`, which removes a tag from a notification rule in
    your account.

For information about how to use AWS CodeStar Notifications, see the
[Amazon Web Services Developer Tools Console User
Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/what-is-dtconsole.html).

### Usage

    codestarnotifications(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestarnotifications_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- codestarnotifications(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarnotifications_create_notification_rule/"> create_notification_rule </a></td>
<td style="text-align: left;">Creates a notification rule for a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarnotifications_delete_notification_rule/"> delete_notification_rule </a></td>
<td style="text-align: left;">Deletes a notification rule for a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarnotifications_delete_target/"> delete_target </a></td>
<td style="text-align: left;">Deletes a specified target for
notifications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarnotifications_describe_notification_rule/"> describe_notification_rule </a></td>
<td style="text-align: left;">Returns information about a specified
notification rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarnotifications_list_event_types/"> list_event_types </a></td>
<td style="text-align: left;">Returns information about the event types
available for configuring notifications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarnotifications_list_notification_rules/"> list_notification_rules </a></td>
<td style="text-align: left;">Returns a list of the notification rules
for an Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarnotifications_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of the tags associated with
a notification rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarnotifications_list_targets/"> list_targets </a></td>
<td style="text-align: left;">Returns a list of the notification rule
targets for an Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarnotifications_subscribe/"> subscribe </a></td>
<td style="text-align: left;">Creates an association between a
notification rule and an Chatbot topic or Chatbot client so that the
associated target can receive notifications when the events described in
the rule are triggered</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarnotifications_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associates a set of provided tags with a
notification rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarnotifications_unsubscribe/"> unsubscribe </a></td>
<td style="text-align: left;">Removes an association between a
notification rule and an Chatbot topic so that subscribers to that topic
stop receiving notifications when the events described in the rule are
triggered</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestarnotifications_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the association between one or
more provided tags and a notification rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestarnotifications_update_notification_rule/"> update_notification_rule </a></td>
<td style="text-align: left;">Updates a notification rule for a
resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codestarnotifications()
    svc$create_notification_rule(
      Foo = 123
    )

    ## End(Not run)
