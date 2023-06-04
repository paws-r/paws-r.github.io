<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon EventBridge

### Description

Amazon EventBridge helps you to respond to state changes in your Amazon
Web Services resources. When your resources change state, they
automatically send events to an event stream. You can create rules that
match selected events in the stream and route them to targets to take
action. You can also use rules to take action on a predetermined
schedule. For example, you can configure rules to:

-   Automatically invoke an Lambda function to update DNS entries when
    an event notifies you that Amazon EC2 instance enters the running
    state.

-   Direct specific API records from CloudTrail to an Amazon Kinesis
    data stream for detailed analysis of potential security or
    availability risks.

-   Periodically invoke a built-in target to create a snapshot of an
    Amazon EBS volume.

For more information about the features of Amazon EventBridge, see the
[Amazon EventBridge User
Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/).

### Usage

    eventbridge(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_:_config">config</code></td>
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

    svc <- eventbridge(
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
<td style="text-align: left;"><a href="../eventbridge_activate_event_source/"> activate_event_source </a></td>
<td style="text-align: left;">Activates a partner event source that has
been deactivated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_cancel_replay/"> cancel_replay </a></td>
<td style="text-align: left;">Cancels the specified replay</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_create_api_destination/"> create_api_destination </a></td>
<td style="text-align: left;">Creates an API destination, which is an
HTTP invocation endpoint configured as a target for events</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_create_archive/"> create_archive </a></td>
<td style="text-align: left;">Creates an archive of events with the
specified settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_create_connection/"> create_connection </a></td>
<td style="text-align: left;">Creates a connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_create_endpoint/"> create_endpoint </a></td>
<td style="text-align: left;">Creates a global endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_create_event_bus/"> create_event_bus </a></td>
<td style="text-align: left;">Creates a new event bus within your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_create_partner_event_source/"> create_partner_event_source </a></td>
<td style="text-align: left;">Called by an SaaS partner to create a
partner event source</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_deactivate_event_source/"> deactivate_event_source </a></td>
<td style="text-align: left;">You can use this operation to temporarily
stop receiving events from the specified partner event source</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_deauthorize_connection/"> deauthorize_connection </a></td>
<td style="text-align: left;">Removes all authorization parameters from
the connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_delete_api_destination/"> delete_api_destination </a></td>
<td style="text-align: left;">Deletes the specified API destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_delete_archive/"> delete_archive </a></td>
<td style="text-align: left;">Deletes the specified archive</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_delete_connection/"> delete_connection </a></td>
<td style="text-align: left;">Deletes a connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_delete_endpoint/"> delete_endpoint </a></td>
<td style="text-align: left;">Delete an existing global endpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_delete_event_bus/"> delete_event_bus </a></td>
<td style="text-align: left;">Deletes the specified custom event bus or
partner event bus</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_delete_partner_event_source/"> delete_partner_event_source </a></td>
<td style="text-align: left;">This operation is used by SaaS partners to
delete a partner event source</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_delete_rule/"> delete_rule </a></td>
<td style="text-align: left;">Deletes the specified rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_describe_api_destination/"> describe_api_destination </a></td>
<td style="text-align: left;">Retrieves details about an API
destination</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_describe_archive/"> describe_archive </a></td>
<td style="text-align: left;">Retrieves details about an archive</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_describe_connection/"> describe_connection </a></td>
<td style="text-align: left;">Retrieves details about a connection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_describe_endpoint/"> describe_endpoint </a></td>
<td style="text-align: left;">Get the information about an existing
global endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_describe_event_bus/"> describe_event_bus </a></td>
<td style="text-align: left;">Displays details about an event bus in
your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_describe_event_source/"> describe_event_source </a></td>
<td style="text-align: left;">This operation lists details about a
partner event source that is shared with your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_describe_partner_event_source/"> describe_partner_event_source </a></td>
<td style="text-align: left;">An SaaS partner can use this operation to
list details about a partner event source that they have created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_describe_replay/"> describe_replay </a></td>
<td style="text-align: left;">Retrieves details about a replay</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_describe_rule/"> describe_rule </a></td>
<td style="text-align: left;">Describes the specified rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_disable_rule/"> disable_rule </a></td>
<td style="text-align: left;">Disables the specified rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_enable_rule/"> enable_rule </a></td>
<td style="text-align: left;">Enables the specified rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_list_api_destinations/"> list_api_destinations </a></td>
<td style="text-align: left;">Retrieves a list of API destination in the
account in the current Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_list_archives/"> list_archives </a></td>
<td style="text-align: left;">Lists your archives</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_list_connections/"> list_connections </a></td>
<td style="text-align: left;">Retrieves a list of connections from the
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_list_endpoints/"> list_endpoints </a></td>
<td style="text-align: left;">List the global endpoints associated with
this account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_list_event_buses/"> list_event_buses </a></td>
<td style="text-align: left;">Lists all the event buses in your account,
including the default event bus, custom event buses, and partner event
buses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_list_event_sources/"> list_event_sources </a></td>
<td style="text-align: left;">You can use this to see all the partner
event sources that have been shared with your Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_list_partner_event_source_accounts/"> list_partner_event_source_accounts </a></td>
<td style="text-align: left;">An SaaS partner can use this operation to
display the Amazon Web Services account ID that a particular partner
event source name is associated with</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_list_partner_event_sources/"> list_partner_event_sources </a></td>
<td style="text-align: left;">An SaaS partner can use this operation to
list all the partner event source names that they have created</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_list_replays/"> list_replays </a></td>
<td style="text-align: left;">Lists your replays</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_list_rule_names_by_target/"> list_rule_names_by_target </a></td>
<td style="text-align: left;">Lists the rules for the specified
target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_list_rules/"> list_rules </a></td>
<td style="text-align: left;">Lists your Amazon EventBridge rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Displays the tags associated with an
EventBridge resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_list_targets_by_rule/"> list_targets_by_rule </a></td>
<td style="text-align: left;">Lists the targets assigned to the
specified rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_put_events/"> put_events </a></td>
<td style="text-align: left;">Sends custom events to Amazon EventBridge
so that they can be matched to rules</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_put_partner_events/"> put_partner_events </a></td>
<td style="text-align: left;">This is used by SaaS partners to write
events to a customer's partner event bus</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_put_permission/"> put_permission </a></td>
<td style="text-align: left;">Running PutPermission permits the
specified Amazon Web Services account or Amazon Web Services
organization to put events to the specified event bus</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_put_rule/"> put_rule </a></td>
<td style="text-align: left;">Creates or updates the specified rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_put_targets/"> put_targets </a></td>
<td style="text-align: left;">Adds the specified targets to the
specified rule, or updates the targets if they are already associated
with the rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_remove_permission/"> remove_permission </a></td>
<td style="text-align: left;">Revokes the permission of another Amazon
Web Services account to be able to put events to the specified event
bus</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_remove_targets/"> remove_targets </a></td>
<td style="text-align: left;">Removes the specified targets from the
specified rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_start_replay/"> start_replay </a></td>
<td style="text-align: left;">Starts the specified replay</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified EventBridge resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_test_event_pattern/"> test_event_pattern </a></td>
<td style="text-align: left;">Tests whether the specified event pattern
matches the provided event</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified EventBridge resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_update_api_destination/"> update_api_destination </a></td>
<td style="text-align: left;">Updates an API destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_update_archive/"> update_archive </a></td>
<td style="text-align: left;">Updates the specified archive</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../eventbridge_update_connection/"> update_connection </a></td>
<td style="text-align: left;">Updates settings for a connection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../eventbridge_update_endpoint/"> update_endpoint </a></td>
<td style="text-align: left;">Update an existing endpoint</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- eventbridge()
    svc$activate_event_source(
      Foo = 123
    )

    ## End(Not run)
