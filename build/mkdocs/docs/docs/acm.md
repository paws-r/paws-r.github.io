<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Certificate Manager

### Description

Certificate Manager

You can use Certificate Manager (ACM) to manage SSL/TLS certificates for
your Amazon Web Services-based websites and applications. For more
information about using ACM, see the [Certificate Manager User
Guide](https://docs.aws.amazon.com/acm/latest/userguide/).

### Usage

    acm(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="acm_:_config">config</code></td>
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

    svc <- acm(
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
<td style="text-align: left;"><a href="../acm_add_tags_to_certificate/"> add_tags_to_certificate </a></td>
<td style="text-align: left;">Adds one or more tags to an ACM
certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acm_delete_certificate/"> delete_certificate </a></td>
<td style="text-align: left;">Deletes a certificate and its associated
private key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acm_describe_certificate/"> describe_certificate </a></td>
<td style="text-align: left;">Returns detailed metadata about the
specified ACM certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acm_export_certificate/"> export_certificate </a></td>
<td style="text-align: left;">Exports a private certificate issued by a
private certificate authority (CA) for use anywhere</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acm_get_account_configuration/"> get_account_configuration </a></td>
<td style="text-align: left;">Returns the account configuration options
associated with an Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acm_get_certificate/"> get_certificate </a></td>
<td style="text-align: left;">Retrieves an Amazon-issued certificate and
its certificate chain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acm_import_certificate/"> import_certificate </a></td>
<td style="text-align: left;">Imports a certificate into Certificate
Manager (ACM) to use with services that are integrated with ACM</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acm_list_certificates/"> list_certificates </a></td>
<td style="text-align: left;">Retrieves a list of certificate ARNs and
domain names</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acm_list_tags_for_certificate/"> list_tags_for_certificate </a></td>
<td style="text-align: left;">Lists the tags that have been applied to
the ACM certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acm_put_account_configuration/"> put_account_configuration </a></td>
<td style="text-align: left;">Adds or modifies account-level
configurations in ACM</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acm_remove_tags_from_certificate/"> remove_tags_from_certificate </a></td>
<td style="text-align: left;">Remove one or more tags from an ACM
certificate</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acm_renew_certificate/"> renew_certificate </a></td>
<td style="text-align: left;">Renews an eligible ACM certificate</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acm_request_certificate/"> request_certificate </a></td>
<td style="text-align: left;">Requests an ACM certificate for use with
other Amazon Web Services services</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../acm_resend_validation_email/"> resend_validation_email </a></td>
<td style="text-align: left;">Resends the email that requests domain
ownership validation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../acm_update_certificate_options/"> update_certificate_options </a></td>
<td style="text-align: left;">Updates a certificate</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- acm()
    svc$add_tags_to_certificate(
      Foo = 123
    )

    ## End(Not run)
