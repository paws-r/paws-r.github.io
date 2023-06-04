<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_invite_account_to_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends an invitation to another account to join your organization as a member account

### Description

Sends an invitation to another account to join your organization as a
member account. Organizations sends email on your behalf to the email
address that is associated with the other account's owner. The
invitation is implemented as a Handshake whose details are in the
response.

-   You can invite Amazon Web Services accounts only from the same
    seller as the management account. For example, if your
    organization's management account was created by Amazon Internet
    Services Pvt. Ltd (AISPL), an Amazon Web Services seller in India,
    you can invite only other AISPL accounts to your organization. You
    can't combine accounts from AISPL and Amazon Web Services or from
    any other Amazon Web Services seller. For more information, see
    [Consolidated Billing in
    India](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/).

-   If you receive an exception that indicates that you exceeded your
    account limits for the organization or that the operation failed
    because your organization is still initializing, wait one hour and
    then try again. If the error persists after an hour, contact Amazon
    Web Services Support.

If the request includes tags, then the requester must have the
`organizations:TagResource` permission.

This operation can be called only from the organization's management
account.

### Usage

    organizations_invite_account_to_organization(Target, Notes, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_invite_account_to_organization_:_Target">Target</code></td>
<td><p>[required] The identifier (ID) of the Amazon Web Services account
that you want to invite to join your organization. This is a JSON object
that contains the following elements:</p>
<p><code
style="white-space: pre;">⁠{ "Type": "ACCOUNT", "Id": "&lt; account id number &gt;" }⁠</code></p>
<p>If you use the CLI, you can submit this as a single string, similar
to the following example:</p>
<p><code
style="white-space: pre;">⁠--target Id=123456789012,Type=ACCOUNT⁠</code></p>
<p>If you specify <code>"Type": "ACCOUNT"</code>, you must provide the
Amazon Web Services account ID number as the <code>Id</code>. If you
specify <code>"Type": "EMAIL"</code>, you must specify the email address
that is associated with the account.</p>
<p><code
style="white-space: pre;">⁠--target Id=diego@example.com,Type=EMAIL⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="organizations_invite_account_to_organization_:_Notes">Notes</code></td>
<td><p>Additional information that you want to include in the generated
email to the recipient account owner.</p></td>
</tr>
<tr class="odd">
<td><code
id="organizations_invite_account_to_organization_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the account when it
becomes a member of the organization. For each tag in the list, you must
specify both a tag key and a value. You can set the value to an empty
string, but you can't set it to <code>null</code>. For more information
about tagging, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging
Organizations resources</a> in the Organizations User Guide.</p>
<p>Any tags in the request are checked for compliance with any
applicable tag policies when the request is made. The request is
rejected if the tags in the request don't match the requirements of the
policy at that time. Tag policy compliance is <em>not</em> checked again
when the invitation is accepted and the tags are actually attached to
the account. That means that if the tag policy changes between the
invitation and the acceptance, then that tags could potentially be
non-compliant.</p>
<p>If any one of the tags is not valid or if you exceed the allowed
number of tags for an account, then the entire request fails and
invitations are not sent.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Handshake = list(
        Id = "string",
        Arn = "string",
        Parties = list(
          list(
            Id = "string",
            Type = "ACCOUNT"|"ORGANIZATION"|"EMAIL"
          )
        ),
        State = "REQUESTED"|"OPEN"|"CANCELED"|"ACCEPTED"|"DECLINED"|"EXPIRED",
        RequestedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ExpirationTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        Action = "INVITE"|"ENABLE_ALL_FEATURES"|"APPROVE_ALL_FEATURES"|"ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE",
        Resources = list(
          list(
            Value = "string",
            Type = "ACCOUNT"|"ORGANIZATION"|"ORGANIZATION_FEATURE_SET"|"EMAIL"|"MASTER_EMAIL"|"MASTER_NAME"|"NOTES"|"PARENT_HANDSHAKE",
            Resources = list()
          )
        )
      )
    )

### Request syntax

    svc$invite_account_to_organization(
      Target = list(
        Id = "string",
        Type = "ACCOUNT"|"ORGANIZATION"|"EMAIL"
      ),
      Notes = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example shows the admin of the master account owned by
    # bill@example.com inviting the account owned by juan@example.com to join
    # an organization.
    svc$invite_account_to_organization(
      Notes = "This is a request for Juan's account to join Bill's organization",
      Target = list(
        Id = "juan@example.com",
        Type = "EMAIL"
      )
    )

    ## End(Not run)
