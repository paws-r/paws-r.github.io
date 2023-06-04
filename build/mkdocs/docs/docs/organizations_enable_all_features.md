<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_enable_all_features</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables all features in an organization

### Description

Enables all features in an organization. This enables the use of
organization policies that can restrict the services and actions that
can be called in each account. Until you enable all features, you have
access only to consolidated billing, and you can't use any of the
advanced account administration features that Organizations supports.
For more information, see [Enabling All Features in Your
Organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
in the *Organizations User Guide.*

This operation is required only for organizations that were created
explicitly with only the consolidated billing features enabled. Calling
this operation sends a handshake to every invited account in the
organization. The feature set change can be finalized and the additional
features enabled only after all administrators in the invited accounts
approve the change by accepting the handshake.

After you enable all features, you can separately enable or disable
individual policy types in a root using `enable_policy_type` and
`disable_policy_type`. To see the status of policy types in a root, use
`list_roots`.

After all invited member accounts accept the handshake, you finalize the
feature set change by accepting the handshake that contains
`"Action": "ENABLE_ALL_FEATURES"`. This completes the change.

After you enable all features in your organization, the management
account in the organization can apply policies on all member accounts.
These policies can restrict what users and even administrators in those
accounts can do. The management account can apply policies that prevent
accounts from leaving the organization. Ensure that your account
administrators are aware of this.

This operation can be called only from the organization's management
account.

### Usage

    organizations_enable_all_features()

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

    svc$enable_all_features()

### Examples

    ## Not run: 
    # This example shows the administrator asking all the invited accounts in
    # the organization to approve enabling all features in the organization.
    # AWS Organizations sends an email to the address that is registered with
    # every invited member account asking the owner to approve the change by
    # accepting the handshake that is sent. After all invited member accounts
    # accept the handshake, the organization administrator can finalize the
    # change to enable all features, and those with appropriate permissions
    # can create policies and apply them to roots, OUs, and accounts:/n/n
    svc$enable_all_features()

    ## End(Not run)
