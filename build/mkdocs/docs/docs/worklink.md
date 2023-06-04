<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon WorkLink

### Description

Amazon WorkLink is a cloud-based service that provides secure access to
internal websites and web apps from iOS and Android phones. In a single
step, your users, such as employees, can access internal websites as
efficiently as they access any other public website. They enter a URL in
their web browser, or choose a link to an internal website in an email.
Amazon WorkLink authenticates the user's access and securely renders
authorized internal web content in a secure rendering service in the AWS
cloud. Amazon WorkLink doesn't download or store any internal web
content on mobile devices.

### Usage

    worklink(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_:_config">config</code></td>
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

    svc <- worklink(
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
<td style="text-align: left;"><a href="../worklink_associate_domain/"> associate_domain </a></td>
<td style="text-align: left;">Specifies a domain to be associated to
Amazon WorkLink</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../worklink_associate_website_authorization_provider/"> associate_website_authorization_provider </a></td>
<td style="text-align: left;">Associates a website authorization
provider with a specified fleet</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../worklink_associate_website_certificate_authority/"> associate_website_certificate_authority </a></td>
<td style="text-align: left;">Imports the root certificate of a
certificate authority (CA) used to obtain TLS certificates used by
associated websites within the company network</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_create_fleet/"> create_fleet </a></td>
<td style="text-align: left;">Creates a fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_delete_fleet/"> delete_fleet </a></td>
<td style="text-align: left;">Deletes a fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_describe_audit_stream_configuration/"> describe_audit_stream_configuration </a></td>
<td style="text-align: left;">Describes the configuration for delivering
audit streams to the customer account</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../worklink_describe_company_network_configuration/"> describe_company_network_configuration </a></td>
<td style="text-align: left;">Describes the networking configuration to
access the internal websites associated with the specified fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_describe_device/"> describe_device </a></td>
<td style="text-align: left;">Provides information about a user's
device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_describe_device_policy_configuration/"> describe_device_policy_configuration </a></td>
<td style="text-align: left;">Describes the device policy configuration
for the specified fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_describe_domain/"> describe_domain </a></td>
<td style="text-align: left;">Provides information about the domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_describe_fleet_metadata/"> describe_fleet_metadata </a></td>
<td style="text-align: left;">Provides basic information for the
specified fleet, excluding identity provider, networking, and device
configuration details</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../worklink_describe_identity_provider_configuration/"> describe_identity_provider_configuration </a></td>
<td style="text-align: left;">Describes the identity provider
configuration of the specified fleet</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../worklink_describe_website_certificate_authority/"> describe_website_certificate_authority </a></td>
<td style="text-align: left;">Provides information about the certificate
authority</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_disassociate_domain/"> disassociate_domain </a></td>
<td style="text-align: left;">Disassociates a domain from Amazon
WorkLink</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../worklink_disassociate_website_authorization_provider/"> disassociate_website_authorization_provider </a></td>
<td style="text-align: left;">Disassociates a website authorization
provider from a specified fleet</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../worklink_disassociate_website_certificate_authority/"> disassociate_website_certificate_authority </a></td>
<td style="text-align: left;">Removes a certificate authority (CA)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_list_devices/"> list_devices </a></td>
<td style="text-align: left;">Retrieves a list of devices registered
with the specified fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_list_domains/"> list_domains </a></td>
<td style="text-align: left;">Retrieves a list of domains associated to
a specified fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_list_fleets/"> list_fleets </a></td>
<td style="text-align: left;">Retrieves a list of fleets for the current
account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves a list of tags for the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_list_website_authorization_providers/"> list_website_authorization_providers </a></td>
<td style="text-align: left;">Retrieves a list of website authorization
providers associated with a specified fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_list_website_certificate_authorities/"> list_website_certificate_authorities </a></td>
<td style="text-align: left;">Retrieves a list of certificate
authorities added for the current account and Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_restore_domain_access/"> restore_domain_access </a></td>
<td style="text-align: left;">Moves a domain to ACTIVE status if it was
in the INACTIVE status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_revoke_domain_access/"> revoke_domain_access </a></td>
<td style="text-align: left;">Moves a domain to INACTIVE status if it
was in the ACTIVE status</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_sign_out_user/"> sign_out_user </a></td>
<td style="text-align: left;">Signs the user out from all of their
devices</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or overwrites one or more tags for
the specified resource, such as a fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_update_audit_stream_configuration/"> update_audit_stream_configuration </a></td>
<td style="text-align: left;">Updates the audit stream configuration for
the fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_update_company_network_configuration/"> update_company_network_configuration </a></td>
<td style="text-align: left;">Updates the company network configuration
for the fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_update_device_policy_configuration/"> update_device_policy_configuration </a></td>
<td style="text-align: left;">Updates the device policy configuration
for the fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../worklink_update_domain_metadata/"> update_domain_metadata </a></td>
<td style="text-align: left;">Updates domain metadata, such as
DisplayName</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../worklink_update_fleet_metadata/"> update_fleet_metadata </a></td>
<td style="text-align: left;">Updates fleet metadata, such as
DisplayName</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../worklink_update_identity_provider_configuration/"> update_identity_provider_configuration </a></td>
<td style="text-align: left;">Updates the identity provider
configuration for the fleet</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- worklink()
    svc$associate_domain(
      Foo = 123
    )

    ## End(Not run)
