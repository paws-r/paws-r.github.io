<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Systems Manager Incident Manager Contacts

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

    ssmcontacts(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmcontacts_:_config">config</code></td>
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

    svc <- ssmcontacts(
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
<td style="text-align: left;"><a href="../ssmcontacts_accept_page/"> accept_page </a></td>
<td style="text-align: left;">Used to acknowledge an engagement to a
contact channel during an incident</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_activate_contact_channel/"> activate_contact_channel </a></td>
<td style="text-align: left;">Activates a contact's contact channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_create_contact/"> create_contact </a></td>
<td style="text-align: left;">Contacts are either the contacts that
Incident Manager engages during an incident or the escalation plans that
Incident Manager uses to engage contacts in phases during an
incident</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_create_contact_channel/"> create_contact_channel </a></td>
<td style="text-align: left;">A contact channel is the method that
Incident Manager uses to engage your contact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_create_rotation/"> create_rotation </a></td>
<td style="text-align: left;">Creates a rotation in an on-call
schedule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_create_rotation_override/"> create_rotation_override </a></td>
<td style="text-align: left;">Creates an override for a rotation in an
on-call schedule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_deactivate_contact_channel/"> deactivate_contact_channel </a></td>
<td style="text-align: left;">To no longer receive Incident Manager
engagements to a contact channel, you can deactivate the channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_delete_contact/"> delete_contact </a></td>
<td style="text-align: left;">To remove a contact from Incident Manager,
you can delete the contact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_delete_contact_channel/"> delete_contact_channel </a></td>
<td style="text-align: left;">To no longer receive engagements on a
contact channel, you can delete the channel from a contact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_delete_rotation/"> delete_rotation </a></td>
<td style="text-align: left;">Deletes a rotation from the system</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_delete_rotation_override/"> delete_rotation_override </a></td>
<td style="text-align: left;">Deletes an existing override for an
on-call rotation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_describe_engagement/"> describe_engagement </a></td>
<td style="text-align: left;">Incident Manager uses engagements to
engage contacts and escalation plans during an incident</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_describe_page/"> describe_page </a></td>
<td style="text-align: left;">Lists details of the engagement to a
contact channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_get_contact/"> get_contact </a></td>
<td style="text-align: left;">Retrieves information about the specified
contact or escalation plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_get_contact_channel/"> get_contact_channel </a></td>
<td style="text-align: left;">List details about a specific contact
channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_get_contact_policy/"> get_contact_policy </a></td>
<td style="text-align: left;">Retrieves the resource policies attached
to the specified contact or escalation plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_get_rotation/"> get_rotation </a></td>
<td style="text-align: left;">Retrieves information about an on-call
rotation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_get_rotation_override/"> get_rotation_override </a></td>
<td style="text-align: left;">Retrieves information about an override to
an on-call rotation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_list_contact_channels/"> list_contact_channels </a></td>
<td style="text-align: left;">Lists all contact channels for the
specified contact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_list_contacts/"> list_contacts </a></td>
<td style="text-align: left;">Lists all contacts and escalation plans in
Incident Manager</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_list_engagements/"> list_engagements </a></td>
<td style="text-align: left;">Lists all engagements that have happened
in an incident</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_list_page_receipts/"> list_page_receipts </a></td>
<td style="text-align: left;">Lists all of the engagements to contact
channels that have been acknowledged</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_list_page_resolutions/"> list_page_resolutions </a></td>
<td style="text-align: left;">Returns the resolution path of an
engagement</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_list_pages_by_contact/"> list_pages_by_contact </a></td>
<td style="text-align: left;">Lists the engagements to a contact's
contact channels</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_list_pages_by_engagement/"> list_pages_by_engagement </a></td>
<td style="text-align: left;">Lists the engagements to contact channels
that occurred by engaging a contact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_list_preview_rotation_shifts/"> list_preview_rotation_shifts </a></td>
<td style="text-align: left;">Returns a list of shifts based on rotation
configuration parameters</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_list_rotation_overrides/"> list_rotation_overrides </a></td>
<td style="text-align: left;">Retrieves a list of overrides currently
specified for an on-call rotation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_list_rotations/"> list_rotations </a></td>
<td style="text-align: left;">Retrieves a list of on-call rotations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_list_rotation_shifts/"> list_rotation_shifts </a></td>
<td style="text-align: left;">Returns a list of shifts generated by an
existing rotation in the system</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags of an escalation plan or
contact</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_put_contact_policy/"> put_contact_policy </a></td>
<td style="text-align: left;">Adds a resource policy to the specified
contact or escalation plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_send_activation_code/"> send_activation_code </a></td>
<td style="text-align: left;">Sends an activation code to a contact
channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_start_engagement/"> start_engagement </a></td>
<td style="text-align: left;">Starts an engagement to a contact or
escalation plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_stop_engagement/"> stop_engagement </a></td>
<td style="text-align: left;">Stops an engagement before it finishes the
final stage of the escalation plan or engagement plan</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Tags a contact or escalation plan</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_update_contact/"> update_contact </a></td>
<td style="text-align: left;">Updates the contact or escalation plan
specified</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ssmcontacts_update_contact_channel/"> update_contact_channel </a></td>
<td style="text-align: left;">Updates a contact's contact channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ssmcontacts_update_rotation/"> update_rotation </a></td>
<td style="text-align: left;">Updates the information specified for an
on-call rotation</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ssmcontacts()
    svc$accept_page(
      Foo = 123
    )

    ## End(Not run)
