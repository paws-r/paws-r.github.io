<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_update_domain_contact_privacy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation updates the specified domain contact's privacy setting

### Description

This operation updates the specified domain contact's privacy setting.
When privacy protection is enabled, contact information such as email
address is replaced either with contact information for Amazon Registrar
(for .com, .net, and .org domains) or with contact information for our
registrar associate, Gandi.

You must specify the same privacy setting for the administrative,
registrant, and technical contacts.

This operation affects only the contact information for the specified
contact type (administrative, registrant, or technical). If the request
succeeds, Amazon Route 53 returns an operation ID that you can use with
`get_operation_detail` to track the progress and completion of the
action. If the request doesn't complete successfully, the domain
registrant will be notified by email.

By disabling the privacy service via API, you consent to the publication
of the contact information provided for this domain via the public WHOIS
database. You certify that you are the registrant of this domain name
and have the authority to make this decision. You may withdraw your
consent at any time by enabling privacy protection using either
`update_domain_contact_privacy` or the Route 53 console. Enabling
privacy protection removes the contact information provided for this
domain from the WHOIS database. For more information on our privacy
practices, see <https://aws.amazon.com/privacy/>.

### Usage

    route53domains_update_domain_contact_privacy(DomainName, AdminPrivacy,
      RegistrantPrivacy, TechPrivacy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_update_domain_contact_privacy_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to update the
privacy setting for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_update_domain_contact_privacy_:_AdminPrivacy">AdminPrivacy</code></td>
<td><p>Whether you want to conceal contact information from WHOIS
queries. If you specify <code>true</code>, WHOIS ("who is") queries
return contact information either for Amazon Registrar (for .com, .net,
and .org domains) or for our registrar associate, Gandi (for all other
TLDs). If you specify <code>false</code>, WHOIS queries return the
information that you entered for the admin contact.</p>
<p>You must specify the same privacy setting for the administrative,
registrant, and technical contacts.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_update_domain_contact_privacy_:_RegistrantPrivacy">RegistrantPrivacy</code></td>
<td><p>Whether you want to conceal contact information from WHOIS
queries. If you specify <code>true</code>, WHOIS ("who is") queries
return contact information either for Amazon Registrar (for .com, .net,
and .org domains) or for our registrar associate, Gandi (for all other
TLDs). If you specify <code>false</code>, WHOIS queries return the
information that you entered for the registrant contact (domain
owner).</p>
<p>You must specify the same privacy setting for the administrative,
registrant, and technical contacts.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_update_domain_contact_privacy_:_TechPrivacy">TechPrivacy</code></td>
<td><p>Whether you want to conceal contact information from WHOIS
queries. If you specify <code>true</code>, WHOIS ("who is") queries
return contact information either for Amazon Registrar (for .com, .net,
and .org domains) or for our registrar associate, Gandi (for all other
TLDs). If you specify <code>false</code>, WHOIS queries return the
information that you entered for the technical contact.</p>
<p>You must specify the same privacy setting for the administrative,
registrant, and technical contacts.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$update_domain_contact_privacy(
      DomainName = "string",
      AdminPrivacy = TRUE|FALSE,
      RegistrantPrivacy = TRUE|FALSE,
      TechPrivacy = TRUE|FALSE
    )
