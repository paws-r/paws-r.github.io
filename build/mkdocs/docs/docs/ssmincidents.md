<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Systems Manager Incident Manager

### Description

Systems Manager Incident Manager is an incident management console
designed to help users mitigate and recover from incidents affecting
their Amazon Web Services-hosted applications. An incident is any
unplanned interruption or reduction in quality of services.

Incident Manager increases incident resolution by notifying responders
of impact, highlighting relevant troubleshooting data, and providing
collaboration tools to get services back up and running. To achieve the
primary goal of reducing the time-to-resolution of critical incidents,
Incident Manager automates response plans and enables responder team
escalation.

### Usage

    ssmincidents(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmincidents_:_config">config</code></td>
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

    svc <- ssmincidents(
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
<td style="text-align: left;"><a href="../ssmincidents_create_replication_set/"> create_replication_set </a></td>
<td style="text-align: left;">A replication set replicates and encrypts
your data to the provided Regions with the provided KMS key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_create_response_plan/"> create_response_plan </a></td>
<td style="text-align: left;">Creates a response plan that automates the
initial response to incidents</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_create_timeline_event/"> create_timeline_event </a></td>
<td style="text-align: left;">Creates a custom timeline event on the
incident details page of an incident record</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_delete_incident_record/"> delete_incident_record </a></td>
<td style="text-align: left;">Delete an incident record from Incident
Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_delete_replication_set/"> delete_replication_set </a></td>
<td style="text-align: left;">Deletes all Regions in your replication
set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes the resource policy that Resource
Access Manager uses to share your Incident Manager resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_delete_response_plan/"> delete_response_plan </a></td>
<td style="text-align: left;">Deletes the specified response plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_delete_timeline_event/"> delete_timeline_event </a></td>
<td style="text-align: left;">Deletes a timeline event from an
incident</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_get_incident_record/"> get_incident_record </a></td>
<td style="text-align: left;">Returns the details for the specified
incident record</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_get_replication_set/"> get_replication_set </a></td>
<td style="text-align: left;">Retrieve your Incident Manager replication
set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_get_resource_policies/"> get_resource_policies </a></td>
<td style="text-align: left;">Retrieves the resource policies attached
to the specified response plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_get_response_plan/"> get_response_plan </a></td>
<td style="text-align: left;">Retrieves the details of the specified
response plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_get_timeline_event/"> get_timeline_event </a></td>
<td style="text-align: left;">Retrieves a timeline event based on its ID
and incident record</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_list_incident_records/"> list_incident_records </a></td>
<td style="text-align: left;">Lists all incident records in your
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_list_related_items/"> list_related_items </a></td>
<td style="text-align: left;">List all related items for an incident
record</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_list_replication_sets/"> list_replication_sets </a></td>
<td style="text-align: left;">Lists details about the replication set
configured in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_list_response_plans/"> list_response_plans </a></td>
<td style="text-align: left;">Lists all response plans in your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags that are attached to the
specified response plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_list_timeline_events/"> list_timeline_events </a></td>
<td style="text-align: left;">Lists timeline events for the specified
incident record</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Adds a resource policy to the specified
response plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_start_incident/"> start_incident </a></td>
<td style="text-align: left;">Used to start an incident from CloudWatch
alarms, EventBridge events, or manually</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds a tag to a response plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from a resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_update_deletion_protection/"> update_deletion_protection </a></td>
<td style="text-align: left;">Update deletion protection to either allow
or deny deletion of the final Region in a replication set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_update_incident_record/"> update_incident_record </a></td>
<td style="text-align: left;">Update the details of an incident
record</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_update_related_items/"> update_related_items </a></td>
<td style="text-align: left;">Add or remove related items from the
related items tab of an incident record</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_update_replication_set/"> update_replication_set </a></td>
<td style="text-align: left;">Add or delete Regions from your
replication set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmincidents_update_response_plan/"> update_response_plan </a></td>
<td style="text-align: left;">Updates the specified response plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmincidents_update_timeline_event/"> update_timeline_event </a></td>
<td style="text-align: left;">Updates a timeline event</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ssmincidents()
    svc$create_replication_set(
      Foo = 123
    )

    ## End(Not run)
