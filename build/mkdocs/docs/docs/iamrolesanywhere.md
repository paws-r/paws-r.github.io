<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## IAM Roles Anywhere

### Description

Identity and Access Management Roles Anywhere provides a secure way for
your workloads such as servers, containers, and applications that run
outside of Amazon Web Services to obtain temporary Amazon Web Services
credentials. Your workloads can use the same IAM policies and roles you
have for native Amazon Web Services applications to access Amazon Web
Services resources. Using IAM Roles Anywhere eliminates the need to
manage long-term credentials for workloads running outside of Amazon Web
Services.

To use IAM Roles Anywhere, your workloads must use X.509 certificates
issued by their certificate authority (CA). You register the CA with IAM
Roles Anywhere as a trust anchor to establish trust between your public
key infrastructure (PKI) and IAM Roles Anywhere. If you don't manage
your own PKI system, you can use Private Certificate Authority to create
a CA and then use that to establish trust with IAM Roles Anywhere.

This guide describes the IAM Roles Anywhere operations that you can call
programmatically. For more information about IAM Roles Anywhere, see the
[IAM Roles Anywhere User
Guide](https://docs.aws.amazon.com/rolesanywhere/latest/userguide/introduction.html).

### Usage

    iamrolesanywhere(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iamrolesanywhere_:_config">config</code></td>
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

    svc <- iamrolesanywhere(
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
<td style="text-align: left;"><a href="../iamrolesanywhere_create_profile/"> create_profile </a></td>
<td style="text-align: left;">Creates a profile, a list of the roles
that Roles Anywhere service is trusted to assume</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_create_trust_anchor/"> create_trust_anchor </a></td>
<td style="text-align: left;">Creates a trust anchor to establish trust
between IAM Roles Anywhere and your certificate authority (CA)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_delete_crl/"> delete_crl </a></td>
<td style="text-align: left;">Deletes a certificate revocation list
(CRL)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_delete_profile/"> delete_profile </a></td>
<td style="text-align: left;">Deletes a profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_delete_trust_anchor/"> delete_trust_anchor </a></td>
<td style="text-align: left;">Deletes a trust anchor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_disable_crl/"> disable_crl </a></td>
<td style="text-align: left;">Disables a certificate revocation list
(CRL)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_disable_profile/"> disable_profile </a></td>
<td style="text-align: left;">Disables a profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_disable_trust_anchor/"> disable_trust_anchor </a></td>
<td style="text-align: left;">Disables a trust anchor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_enable_crl/"> enable_crl </a></td>
<td style="text-align: left;">Enables a certificate revocation list
(CRL)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_enable_profile/"> enable_profile </a></td>
<td style="text-align: left;">Enables temporary credential requests for
a profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_enable_trust_anchor/"> enable_trust_anchor </a></td>
<td style="text-align: left;">Enables a trust anchor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_get_crl/"> get_crl </a></td>
<td style="text-align: left;">Gets a certificate revocation list
(CRL)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_get_profile/"> get_profile </a></td>
<td style="text-align: left;">Gets a profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_get_subject/"> get_subject </a></td>
<td style="text-align: left;">Gets a subject, which associates a
certificate identity with authentication attempts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_get_trust_anchor/"> get_trust_anchor </a></td>
<td style="text-align: left;">Gets a trust anchor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_import_crl/"> import_crl </a></td>
<td style="text-align: left;">Imports the certificate revocation list
(CRL)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_list_crls/"> list_crls </a></td>
<td style="text-align: left;">Lists all certificate revocation lists
(CRL) in the authenticated account and Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_list_profiles/"> list_profiles </a></td>
<td style="text-align: left;">Lists all profiles in the authenticated
account and Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_list_subjects/"> list_subjects </a></td>
<td style="text-align: left;">Lists the subjects in the authenticated
account and Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags attached to the
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_list_trust_anchors/"> list_trust_anchors </a></td>
<td style="text-align: left;">Lists the trust anchors in the
authenticated account and Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_put_notification_settings/"> put_notification_settings </a></td>
<td style="text-align: left;">Attaches a list of notification settings
to a trust anchor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_reset_notification_settings/"> reset_notification_settings </a></td>
<td style="text-align: left;">Resets the custom notification setting to
IAM Roles Anywhere default setting</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Attaches tags to a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from the resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_update_crl/"> update_crl </a></td>
<td style="text-align: left;">Updates the certificate revocation list
(CRL)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../iamrolesanywhere_update_profile/"> update_profile </a></td>
<td style="text-align: left;">Updates a profile, a list of the roles
that IAM Roles Anywhere service is trusted to assume</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../iamrolesanywhere_update_trust_anchor/"> update_trust_anchor </a></td>
<td style="text-align: left;">Updates a trust anchor</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- iamrolesanywhere()
    svc$create_profile(
      Foo = 123
    )

    ## End(Not run)
