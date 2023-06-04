<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_create_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## CreateMembers is used to send invitations to accounts

### Description

`create_members` is used to send invitations to accounts. For the
organization behavior graph, the Detective administrator account uses
`create_members` to enable organization accounts as member accounts.

For invited accounts, `create_members` sends a request to invite the
specified Amazon Web Services accounts to be member accounts in the
behavior graph. This operation can only be called by the administrator
account for a behavior graph.

`create_members` verifies the accounts and then invites the verified
accounts. The administrator can optionally specify to not send
invitation emails to the member accounts. This would be used when the
administrator manages their member accounts centrally.

For organization accounts in the organization behavior graph,
`create_members` attempts to enable the accounts. The organization
accounts do not receive invitations.

The request provides the behavior graph ARN and the list of accounts to
invite or to enable.

The response separates the requested accounts into two lists:

-   The accounts that `create_members` was able to process. For invited
    accounts, includes member accounts that are being verified, that
    have passed verification and are to be invited, and that have failed
    verification. For organization accounts in the organization behavior
    graph, includes accounts that can be enabled and that cannot be
    enabled.

-   The accounts that `create_members` was unable to process. This list
    includes accounts that were already invited to be member accounts in
    the behavior graph.

### Usage

    detective_create_members(GraphArn, Message, DisableEmailNotification,
      Accounts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="detective_create_members_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph.</p></td>
</tr>
<tr class="even">
<td><code id="detective_create_members_:_Message">Message</code></td>
<td><p>Customized message text to include in the invitation email
message to the invited member accounts.</p></td>
</tr>
<tr class="odd">
<td><code
id="detective_create_members_:_DisableEmailNotification">DisableEmailNotification</code></td>
<td><p>if set to <code>true</code>, then the invited accounts do not
receive email notifications. By default, this is set to
<code>false</code>, and the invited accounts receive email
notifications.</p>
<p>Organization accounts in the organization behavior graph do not
receive email notifications.</p></td>
</tr>
<tr class="even">
<td><code id="detective_create_members_:_Accounts">Accounts</code></td>
<td><p>[required] The list of Amazon Web Services accounts to invite or
to enable. You can invite or enable up to 50 accounts at a time. For
each invited account, the account list contains the account identifier
and the Amazon Web Services account root user email address. For
organization accounts in the organization behavior graph, the email
address is not required.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Members = list(
        list(
          AccountId = "string",
          EmailAddress = "string",
          GraphArn = "string",
          MasterId = "string",
          AdministratorId = "string",
          Status = "INVITED"|"VERIFICATION_IN_PROGRESS"|"VERIFICATION_FAILED"|"ENABLED"|"ACCEPTED_BUT_DISABLED",
          DisabledReason = "VOLUME_TOO_HIGH"|"VOLUME_UNKNOWN",
          InvitedTime = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          VolumeUsageInBytes = 123,
          VolumeUsageUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          PercentOfGraphUtilization = 123.0,
          PercentOfGraphUtilizationUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          InvitationType = "INVITATION"|"ORGANIZATION",
          VolumeUsageByDatasourcePackage = list(
            list(
              VolumeUsageInBytes = 123,
              VolumeUsageUpdateTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          DatasourcePackageIngestStates = list(
            "STARTED"|"STOPPED"|"DISABLED"
          )
        )
      ),
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Reason = "string"
        )
      )
    )

### Request syntax

    svc$create_members(
      GraphArn = "string",
      Message = "string",
      DisableEmailNotification = TRUE|FALSE,
      Accounts = list(
        list(
          AccountId = "string",
          EmailAddress = "string"
        )
      )
    )
