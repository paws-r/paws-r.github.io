<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Certificate Manager Private Certificate Authority

### Description

This is the *Amazon Web Services Private Certificate Authority API
Reference*. It provides descriptions, syntax, and usage examples for
each of the actions and data types involved in creating and managing a
private certificate authority (CA) for your organization.

The documentation for each action shows the API request parameters and
the JSON response. Alternatively, you can use one of the Amazon Web
Services SDKs to access an API that is tailored to the programming
language or platform that you prefer. For more information, see [Amazon
Web Services SDKs](https://aws.amazon.com/developer/tools/#SDKs).

Each Amazon Web Services Private CA API operation has a quota that
determines the number of times the operation can be called per second.
Amazon Web Services Private CA throttles API requests at different rates
depending on the operation. Throttling means that Amazon Web Services
Private CA rejects an otherwise valid request because the request
exceeds the operation's quota for the number of requests per second.
When a request is throttled, Amazon Web Services Private CA returns a
ThrottlingException error. Amazon Web Services Private CA does not
guarantee a minimum request rate for APIs.

To see an up-to-date list of your Amazon Web Services Private CA quotas,
or to request a quota increase, log into your Amazon Web Services
account and visit the Service Quotas console.

### Usage

    acmpca(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="acmpca_:_config">config</code></td>
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

    svc <- acmpca(
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
<td style="text-align: left;"><a href="../acmpca_create_certificate_authority/"> create_certificate_authority </a></td>
<td style="text-align: left;">Creates a root or subordinate private
certificate authority (CA)</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../acmpca_create_certificate_authority_audit_report/"> create_certificate_authority_audit_report </a></td>
<td style="text-align: left;">Creates an audit report that lists every
time that your CA private key is used</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_create_permission/"> create_permission </a></td>
<td style="text-align: left;">Grants one or more permissions on a
private CA to the Certificate Manager (ACM) service principal (acm</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_delete_certificate_authority/"> delete_certificate_authority </a></td>
<td style="text-align: left;">Deletes a private certificate authority
(CA)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_delete_permission/"> delete_permission </a></td>
<td style="text-align: left;">Revokes permissions on a private CA
granted to the Certificate Manager (ACM) service principal (acm</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_delete_policy/"> delete_policy </a></td>
<td style="text-align: left;">Deletes the resource-based policy attached
to a private CA</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_describe_certificate_authority/"> describe_certificate_authority </a></td>
<td style="text-align: left;">Lists information about your private
certificate authority (CA) or one that has been shared with you</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../acmpca_describe_certificate_authority_audit_report/"> describe_certificate_authority_audit_report </a></td>
<td style="text-align: left;">Lists information about a specific audit
report created by calling the CreateCertificateAuthorityAuditReport
action</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_get_certificate/"> get_certificate </a></td>
<td style="text-align: left;">Retrieves a certificate from your private
CA or one that has been shared with you</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_get_certificate_authority_certificate/"> get_certificate_authority_certificate </a></td>
<td style="text-align: left;">Retrieves the certificate and certificate
chain for your private certificate authority (CA) or one that has been
shared with you</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_get_certificate_authority_csr/"> get_certificate_authority_csr </a></td>
<td style="text-align: left;">Retrieves the certificate signing request
(CSR) for your private certificate authority (CA)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_get_policy/"> get_policy </a></td>
<td style="text-align: left;">Retrieves the resource-based policy
attached to a private CA</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../acmpca_import_certificate_authority_certificate/"> import_certificate_authority_certificate </a></td>
<td style="text-align: left;">Imports a signed private CA certificate
into Amazon Web Services Private CA</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_issue_certificate/"> issue_certificate </a></td>
<td style="text-align: left;">Uses your private certificate authority
(CA), or one that has been shared with you, to issue a client
certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_list_certificate_authorities/"> list_certificate_authorities </a></td>
<td style="text-align: left;">Lists the private certificate authorities
that you created by using the CreateCertificateAuthority action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_list_permissions/"> list_permissions </a></td>
<td style="text-align: left;">List all permissions on a private CA, if
any, granted to the Certificate Manager (ACM) service principal
(acm</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_list_tags/"> list_tags </a></td>
<td style="text-align: left;">Lists the tags, if any, that are
associated with your private CA or one that has been shared with
you</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_put_policy/"> put_policy </a></td>
<td style="text-align: left;">Attaches a resource-based policy to a
private CA</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_restore_certificate_authority/"> restore_certificate_authority </a></td>
<td style="text-align: left;">Restores a certificate authority (CA) that
is in the DELETED state</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_revoke_certificate/"> revoke_certificate </a></td>
<td style="text-align: left;">Revokes a certificate that was issued
inside Amazon Web Services Private CA</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_tag_certificate_authority/"> tag_certificate_authority </a></td>
<td style="text-align: left;">Adds one or more tags to your private
CA</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acmpca_untag_certificate_authority/"> untag_certificate_authority </a></td>
<td style="text-align: left;">Remove one or more tags from your private
CA</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acmpca_update_certificate_authority/"> update_certificate_authority </a></td>
<td style="text-align: left;">Updates the status or configuration of a
private certificate authority (CA)</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- acmpca()
    svc$create_certificate_authority(
      Foo = 123
    )

    ## End(Not run)
