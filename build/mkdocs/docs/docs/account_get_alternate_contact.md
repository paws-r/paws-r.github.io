<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>account_get_alternate_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified alternate contact attached to an Amazon Web Services account

### Description

Retrieves the specified alternate contact attached to an Amazon Web
Services account.

For complete details about how to use the alternate contact operations,
see [Access or updating the alternate
contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

Before you can update the alternate contact information for an Amazon
Web Services account that is managed by Organizations, you must first
enable integration between Amazon Web Services Account Management and
Organizations. For more information, see [Enabling trusted access for
Amazon Web Services Account
Management](https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).

### Usage

    account_get_alternate_contact(AccountId, AlternateContactType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="account_get_alternate_contact_:_AccountId">AccountId</code></td>
<td><p>Specifies the 12 digit account ID number of the Amazon Web
Services account that you want to access or modify with this
operation.</p>
<p>If you do not specify this parameter, it defaults to the Amazon Web
Services account of the identity used to call the operation.</p>
<p>To use this parameter, the caller must be an identity in the <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">organization's
management account</a> or a delegated administrator account, and the
specified account ID must be a member account in the same organization.
The organization must have <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all
features enabled</a>, and the organization must have <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/">trusted
access</a> enabled for the Account Management service, and optionally a
<a
href="https://docs.aws.amazon.com/organizations/latest/userguide/">delegated
admin</a> account assigned.</p>
<p>The management account can't specify its own <code>AccountId</code>;
it must call the operation in standalone context by not including the
<code>AccountId</code> parameter.</p>
<p>To call this operation on an account that is not a member of an
organization, then don't specify this parameter, and call the operation
using an identity belonging to the account whose contacts you wish to
retrieve or modify.</p></td>
</tr>
<tr class="even">
<td><code
id="account_get_alternate_contact_:_AlternateContactType">AlternateContactType</code></td>
<td><p>[required] Specifies which alternate contact you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AlternateContact = list(
        AlternateContactType = "BILLING"|"OPERATIONS"|"SECURITY",
        EmailAddress = "string",
        Name = "string",
        PhoneNumber = "string",
        Title = "string"
      )
    )

### Request syntax

    svc$get_alternate_contact(
      AccountId = "string",
      AlternateContactType = "BILLING"|"OPERATIONS"|"SECURITY"
    )
