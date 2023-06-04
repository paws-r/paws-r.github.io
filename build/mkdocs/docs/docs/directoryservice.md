<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Directory Service

### Description

Directory Service

Directory Service is a web service that makes it easy for you to setup
and run directories in the Amazon Web Services cloud, or connect your
Amazon Web Services resources with an existing self-managed Microsoft
Active Directory. This guide provides detailed information about
Directory Service operations, data types, parameters, and errors. For
information about Directory Services features, see [Directory
Service](https://aws.amazon.com/directoryservice/) and the [Directory
Service Administration
Guide](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).

Amazon Web Services provides SDKs that consist of libraries and sample
code for various programming languages and platforms (Java, Ruby, .Net,
iOS, Android, etc.). The SDKs provide a convenient way to create
programmatic access to Directory Service and other Amazon Web Services
services. For more information about the Amazon Web Services SDKs,
including how to download and install them, see [Tools for Amazon Web
Services](https://aws.amazon.com/developer/tools/).

### Usage

    directoryservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="directoryservice_:_config">config</code></td>
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

    svc <- directoryservice(
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
<td style="text-align: left;"><a href="../directoryservice_accept_shared_directory/"> accept_shared_directory </a></td>
<td style="text-align: left;">Accepts a directory sharing request that
was sent from the directory owner account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_add_ip_routes/"> add_ip_routes </a></td>
<td style="text-align: left;">If the DNS server for your self-managed
domain uses a publicly addressable IP address, you must add a CIDR
address block to correctly route traffic to and from your Microsoft AD
on Amazon Web Services</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_add_region/"> add_region </a></td>
<td style="text-align: left;">Adds two domain controllers in the
specified Region for the specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_add_tags_to_resource/"> add_tags_to_resource </a></td>
<td style="text-align: left;">Adds or overwrites one or more tags for
the specified directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_cancel_schema_extension/"> cancel_schema_extension </a></td>
<td style="text-align: left;">Cancels an in-progress schema extension to
a Microsoft AD directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_connect_directory/"> connect_directory </a></td>
<td style="text-align: left;">Creates an AD Connector to connect to a
self-managed directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_create_alias/"> create_alias </a></td>
<td style="text-align: left;">Creates an alias for a directory and
assigns the alias to the directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_create_computer/"> create_computer </a></td>
<td style="text-align: left;">Creates an Active Directory computer
object in the specified directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_create_conditional_forwarder/"> create_conditional_forwarder </a></td>
<td style="text-align: left;">Creates a conditional forwarder associated
with your Amazon Web Services directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_create_directory/"> create_directory </a></td>
<td style="text-align: left;">Creates a Simple AD directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_create_log_subscription/"> create_log_subscription </a></td>
<td style="text-align: left;">Creates a subscription to forward
real-time Directory Service domain controller security logs to the
specified Amazon CloudWatch log group in your Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_create_microsoft_ad/"> create_microsoft_ad </a></td>
<td style="text-align: left;">Creates a Microsoft AD directory in the
Amazon Web Services Cloud</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_create_snapshot/"> create_snapshot </a></td>
<td style="text-align: left;">Creates a snapshot of a Simple AD or
Microsoft AD directory in the Amazon Web Services cloud</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_create_trust/"> create_trust </a></td>
<td style="text-align: left;">Directory Service for Microsoft Active
Directory allows you to configure trust relationships</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_delete_conditional_forwarder/"> delete_conditional_forwarder </a></td>
<td style="text-align: left;">Deletes a conditional forwarder that has
been set up for your Amazon Web Services directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_delete_directory/"> delete_directory </a></td>
<td style="text-align: left;">Deletes an Directory Service
directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_delete_log_subscription/"> delete_log_subscription </a></td>
<td style="text-align: left;">Deletes the specified log
subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_delete_snapshot/"> delete_snapshot </a></td>
<td style="text-align: left;">Deletes a directory snapshot</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_delete_trust/"> delete_trust </a></td>
<td style="text-align: left;">Deletes an existing trust relationship
between your Managed Microsoft AD directory and an external domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_deregister_certificate/"> deregister_certificate </a></td>
<td style="text-align: left;">Deletes from the system the certificate
that was registered for secure LDAP or client certificate
authentication</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_deregister_event_topic/"> deregister_event_topic </a></td>
<td style="text-align: left;">Removes the specified directory as a
publisher to the specified Amazon SNS topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_describe_certificate/"> describe_certificate </a></td>
<td style="text-align: left;">Displays information about the certificate
registered for secure LDAP or client certificate authentication</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../directoryservice_describe_client_authentication_settings/"> describe_client_authentication_settings </a></td>
<td style="text-align: left;">Retrieves information about the type of
client authentication for the specified directory, if the type is
specified</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_describe_conditional_forwarders/"> describe_conditional_forwarders </a></td>
<td style="text-align: left;">Obtains information about the conditional
forwarders for this account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_describe_directories/"> describe_directories </a></td>
<td style="text-align: left;">Obtains information about the directories
that belong to this account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_describe_domain_controllers/"> describe_domain_controllers </a></td>
<td style="text-align: left;">Provides information about any domain
controllers in your directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_describe_event_topics/"> describe_event_topics </a></td>
<td style="text-align: left;">Obtains information about which Amazon SNS
topics receive status messages from the specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_describe_ldaps_settings/"> describe_ldaps_settings </a></td>
<td style="text-align: left;">Describes the status of LDAP security for
the specified directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_describe_regions/"> describe_regions </a></td>
<td style="text-align: left;">Provides information about the Regions
that are configured for multi-Region replication</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_describe_settings/"> describe_settings </a></td>
<td style="text-align: left;">Retrieves information about the
configurable settings for the specified directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_describe_shared_directories/"> describe_shared_directories </a></td>
<td style="text-align: left;">Returns the shared directories in your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_describe_snapshots/"> describe_snapshots </a></td>
<td style="text-align: left;">Obtains information about the directory
snapshots that belong to this account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_describe_trusts/"> describe_trusts </a></td>
<td style="text-align: left;">Obtains information about the trust
relationships for this account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_describe_update_directory/"> describe_update_directory </a></td>
<td style="text-align: left;">Describes the updates of a directory for a
particular update type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_disable_client_authentication/"> disable_client_authentication </a></td>
<td style="text-align: left;">Disables alternative client authentication
methods for the specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_disable_ldaps/"> disable_ldaps </a></td>
<td style="text-align: left;">Deactivates LDAP secure calls for the
specified directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_disable_radius/"> disable_radius </a></td>
<td style="text-align: left;">Disables multi-factor authentication (MFA)
with the Remote Authentication Dial In User Service (RADIUS) server for
an AD Connector or Microsoft AD directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_disable_sso/"> disable_sso </a></td>
<td style="text-align: left;">Disables single-sign on for a
directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_enable_client_authentication/"> enable_client_authentication </a></td>
<td style="text-align: left;">Enables alternative client authentication
methods for the specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_enable_ldaps/"> enable_ldaps </a></td>
<td style="text-align: left;">Activates the switch for the specific
directory to always use LDAP secure calls</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_enable_radius/"> enable_radius </a></td>
<td style="text-align: left;">Enables multi-factor authentication (MFA)
with the Remote Authentication Dial In User Service (RADIUS) server for
an AD Connector or Microsoft AD directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_enable_sso/"> enable_sso </a></td>
<td style="text-align: left;">Enables single sign-on for a
directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_get_directory_limits/"> get_directory_limits </a></td>
<td style="text-align: left;">Obtains directory limit information for
the current Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_get_snapshot_limits/"> get_snapshot_limits </a></td>
<td style="text-align: left;">Obtains the manual snapshot limits for a
directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_list_certificates/"> list_certificates </a></td>
<td style="text-align: left;">For the specified directory, lists all the
certificates registered for a secure LDAP or client certificate
authentication</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_list_ip_routes/"> list_ip_routes </a></td>
<td style="text-align: left;">Lists the address blocks that you have
added to a directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_list_log_subscriptions/"> list_log_subscriptions </a></td>
<td style="text-align: left;">Lists the active log subscriptions for the
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_list_schema_extensions/"> list_schema_extensions </a></td>
<td style="text-align: left;">Lists all schema extensions applied to a
Microsoft AD Directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists all tags on a directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_register_certificate/"> register_certificate </a></td>
<td style="text-align: left;">Registers a certificate for a secure LDAP
or client certificate authentication</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_register_event_topic/"> register_event_topic </a></td>
<td style="text-align: left;">Associates a directory with an Amazon SNS
topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_reject_shared_directory/"> reject_shared_directory </a></td>
<td style="text-align: left;">Rejects a directory sharing request that
was sent from the directory owner account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_remove_ip_routes/"> remove_ip_routes </a></td>
<td style="text-align: left;">Removes IP address blocks from a
directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_remove_region/"> remove_region </a></td>
<td style="text-align: left;">Stops all replication and removes the
domain controllers from the specified Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_remove_tags_from_resource/"> remove_tags_from_resource </a></td>
<td style="text-align: left;">Removes tags from a directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_reset_user_password/"> reset_user_password </a></td>
<td style="text-align: left;">Resets the password for any user in your
Managed Microsoft AD or Simple AD directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_restore_from_snapshot/"> restore_from_snapshot </a></td>
<td style="text-align: left;">Restores a directory using an existing
directory snapshot</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_share_directory/"> share_directory </a></td>
<td style="text-align: left;">Shares a specified directory (DirectoryId)
in your Amazon Web Services account (directory owner) with another
Amazon Web Services account (directory consumer)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_start_schema_extension/"> start_schema_extension </a></td>
<td style="text-align: left;">Applies a schema extension to a Microsoft
AD directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_unshare_directory/"> unshare_directory </a></td>
<td style="text-align: left;">Stops the directory sharing between the
directory owner and consumer accounts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_update_conditional_forwarder/"> update_conditional_forwarder </a></td>
<td style="text-align: left;">Updates a conditional forwarder that has
been set up for your Amazon Web Services directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_update_directory_setup/"> update_directory_setup </a></td>
<td style="text-align: left;">Updates the directory for a particular
update type</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_update_number_of_domain_controllers/"> update_number_of_domain_controllers </a></td>
<td style="text-align: left;">Adds or removes domain controllers to or
from the directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_update_radius/"> update_radius </a></td>
<td style="text-align: left;">Updates the Remote Authentication Dial In
User Service (RADIUS) server information for an AD Connector or
Microsoft AD directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_update_settings/"> update_settings </a></td>
<td style="text-align: left;">Updates the configurable settings for the
specified directory</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../directoryservice_update_trust/"> update_trust </a></td>
<td style="text-align: left;">Updates the trust that has been set up
between your Managed Microsoft AD directory and an self-managed Active
Directory</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../directoryservice_verify_trust/"> verify_trust </a></td>
<td style="text-align: left;">Directory Service for Microsoft Active
Directory allows you to configure and verify trust relationships</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- directoryservice()
    svc$accept_shared_directory(
      Foo = 123
    )

    ## End(Not run)
