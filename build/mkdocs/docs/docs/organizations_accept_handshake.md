<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_accept_handshake</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request

### Description

Sends a response to the originator of a handshake agreeing to the action
proposed by the handshake request.

You can only call this operation by the following principals when they
also have the relevant IAM permissions:

-   **Invitation to join** or **Approve all features request**
    handshakes: only a principal from the member account.

    The user who calls the API for an invitation to join must have the
    `organizations:AcceptHandshake` permission. If you enabled all
    features in the organization, the user must also have the
    `iam:CreateServiceLinkedRole` permission so that Organizations can
    create the required service-linked role named
    `AWSServiceRoleForOrganizations`. For more information, see
    [Organizations and Service-Linked
    Roles](https://docs.aws.amazon.com/organizations/latest/userguide/#orgs_integration_service-linked-roles)
    in the *Organizations User Guide*.

-   **Enable all features final confirmation** handshake: only a
    principal from the management account.

    For more information about invitations, see [Inviting an Amazon Web
    Services account to join your
    organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html)
    in the *Organizations User Guide.* For more information about
    requests to enable all features in the organization, see [Enabling
    all features in your
    organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html)
    in the *Organizations User Guide.*

After you accept a handshake, it continues to appear in the results of
relevant APIs for only 30 days. After that, it's deleted.

### Usage

    organizations_accept_handshake(HandshakeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_accept_handshake_:_HandshakeId">HandshakeId</code></td>
<td><p>[required] The unique identifier (ID) of the handshake that you
want to accept.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for handshake ID string requires "h-" followed by from 8 to 32 lowercase
letters or digits.</p></td>
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

    svc$accept_handshake(
      HandshakeId = "string"
    )

### Examples

    ## Not run: 
    # Bill is the owner of an organization, and he invites Juan's account
    # (222222222222) to join his organization. The following example shows
    # Juan's account accepting the handshake and thus agreeing to the
    # invitation.
    svc$accept_handshake(
      HandshakeId = "h-examplehandshakeid111"
    )

    ## End(Not run)
