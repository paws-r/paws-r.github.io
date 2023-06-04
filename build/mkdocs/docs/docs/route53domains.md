<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Route 53 Domains

### Description

Amazon Route 53 API actions let you register domain names and perform
related operations.

### Usage

    route53domains(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53domains_:_config">config</code></td>
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

    svc <- route53domains(
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
<td
style="text-align: left;"><a href="../route53domains_accept_domain_transfer_from_another_aws_account/"> accept_domain_transfer_from_another_aws_account </a></td>
<td style="text-align: left;">Accepts the transfer of a domain from
another Amazon Web Services account to the currentAmazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_associate_delegation_signer_to_domain/"> associate_delegation_signer_to_domain </a></td>
<td style="text-align: left;">Creates a delegation signer (DS) record in
the registry zone for this domain name</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../route53domains_cancel_domain_transfer_to_another_aws_account/"> cancel_domain_transfer_to_another_aws_account </a></td>
<td style="text-align: left;">Cancels the transfer of a domain from the
current Amazon Web Services account to another Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_check_domain_availability/"> check_domain_availability </a></td>
<td style="text-align: left;">This operation checks the availability of
one domain name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_check_domain_transferability/"> check_domain_transferability </a></td>
<td style="text-align: left;">Checks whether a domain name can be
transferred to Amazon Route 53</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_delete_domain/"> delete_domain </a></td>
<td style="text-align: left;">This operation deletes the specified
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_delete_tags_for_domain/"> delete_tags_for_domain </a></td>
<td style="text-align: left;">This operation deletes the specified tags
for a domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_disable_domain_auto_renew/"> disable_domain_auto_renew </a></td>
<td style="text-align: left;">This operation disables automatic renewal
of domain registration for the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_disable_domain_transfer_lock/"> disable_domain_transfer_lock </a></td>
<td style="text-align: left;">This operation removes the transfer lock
on the domain (specifically the clientTransferProhibited status) to
allow domain transfers</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../route53domains_disassociate_delegation_signer_from_domain/"> disassociate_delegation_signer_from_domain </a></td>
<td style="text-align: left;">Deletes a delegation signer (DS) record in
the registry zone for this domain name</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_enable_domain_auto_renew/"> enable_domain_auto_renew </a></td>
<td style="text-align: left;">This operation configures Amazon Route 53
to automatically renew the specified domain before the domain
registration expires</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_enable_domain_transfer_lock/"> enable_domain_transfer_lock </a></td>
<td style="text-align: left;">This operation sets the transfer lock on
the domain (specifically the clientTransferProhibited status) to prevent
domain transfers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_get_contact_reachability_status/"> get_contact_reachability_status </a></td>
<td style="text-align: left;">For operations that require confirmation
that the email address for the registrant contact is valid, such as
registering a new domain, this operation returns information about
whether the registrant contact has responded</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_get_domain_detail/"> get_domain_detail </a></td>
<td style="text-align: left;">This operation returns detailed
information about a specified domain that is associated with the current
Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_get_domain_suggestions/"> get_domain_suggestions </a></td>
<td style="text-align: left;">The GetDomainSuggestions operation returns
a list of suggested domain names</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_get_operation_detail/"> get_operation_detail </a></td>
<td style="text-align: left;">This operation returns the current status
of an operation that is not completed</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_list_domains/"> list_domains </a></td>
<td style="text-align: left;">This operation returns all the domain
names registered with Amazon Route 53 for the current Amazon Web
Services account if no filtering conditions are used</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_list_operations/"> list_operations </a></td>
<td style="text-align: left;">Returns information about all of the
operations that return an operation ID and that have ever been performed
on domains that were registered by the current account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_list_prices/"> list_prices </a></td>
<td style="text-align: left;">Lists the following prices for either all
the TLDs supported by Route 53, or the specified TLD:</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_list_tags_for_domain/"> list_tags_for_domain </a></td>
<td style="text-align: left;">This operation returns all of the tags
that are associated with the specified domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_push_domain/"> push_domain </a></td>
<td style="text-align: left;">Moves a domain from Amazon Web Services to
another registrar</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_register_domain/"> register_domain </a></td>
<td style="text-align: left;">This operation registers a domain</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../route53domains_reject_domain_transfer_from_another_aws_account/"> reject_domain_transfer_from_another_aws_account </a></td>
<td style="text-align: left;">Rejects the transfer of a domain from
another Amazon Web Services account to the current Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_renew_domain/"> renew_domain </a></td>
<td style="text-align: left;">This operation renews a domain for the
specified number of years</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_resend_contact_reachability_email/"> resend_contact_reachability_email </a></td>
<td style="text-align: left;">For operations that require confirmation
that the email address for the registrant contact is valid, such as
registering a new domain, this operation resends the confirmation email
to the current email address for the registrant contact</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_resend_operation_authorization/"> resend_operation_authorization </a></td>
<td style="text-align: left;">Resend the form of authorization email for
this operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_retrieve_domain_auth_code/"> retrieve_domain_auth_code </a></td>
<td style="text-align: left;">This operation returns the authorization
code for the domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_transfer_domain/"> transfer_domain </a></td>
<td style="text-align: left;">Transfers a domain from another registrar
to Amazon Route 53</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../route53domains_transfer_domain_to_another_aws_account/"> transfer_domain_to_another_aws_account </a></td>
<td style="text-align: left;">Transfers a domain from the current Amazon
Web Services account to another Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_update_domain_contact/"> update_domain_contact </a></td>
<td style="text-align: left;">This operation updates the contact
information for a particular domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_update_domain_contact_privacy/"> update_domain_contact_privacy </a></td>
<td style="text-align: left;">This operation updates the specified
domain contact's privacy setting</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_update_domain_nameservers/"> update_domain_nameservers </a></td>
<td style="text-align: left;">This operation replaces the current set of
name servers for the domain with the specified set of name servers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../route53domains_update_tags_for_domain/"> update_tags_for_domain </a></td>
<td style="text-align: left;">This operation adds or updates tags for a
specified domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../route53domains_view_billing/"> view_billing </a></td>
<td style="text-align: left;">Returns all the domain-related billing
records for the current Amazon Web Services account for a specified
period</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- route53domains()
    svc$accept_domain_transfer_from_another_aws_account(
      Foo = 123
    )

    ## End(Not run)
