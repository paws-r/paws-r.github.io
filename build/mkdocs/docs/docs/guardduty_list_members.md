<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_list_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists details about all member accounts for the current GuardDuty administrator account

### Description

Lists details about all member accounts for the current GuardDuty
administrator account.

### Usage

    guardduty_list_members(DetectorId, MaxResults, NextToken,
      OnlyAssociated)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_list_members_:_DetectorId">DetectorId</code></td>
<td><p>[required] The unique ID of the detector the member is associated
with.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_members_:_MaxResults">MaxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items you want in the response. The default value is 50. The maximum
value is 50.</p></td>
</tr>
<tr class="odd">
<td><code id="guardduty_list_members_:_NextToken">NextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the list action. For
subsequent calls to the action, fill nextToken in the request with the
value of NextToken from the previous response to continue listing
data.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_members_:_OnlyAssociated">OnlyAssociated</code></td>
<td><p>Specifies whether to only return associated members or to return
all members (including members who haven't been invited yet or have been
disassociated). Member accounts must have been previously associated
with the GuardDuty administrator account using <a
href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html"><code
style="white-space: pre;">⁠Create Members⁠</code></a> .</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Members = list(
        list(
          AccountId = "string",
          DetectorId = "string",
          MasterId = "string",
          Email = "string",
          RelationshipStatus = "string",
          InvitedAt = "string",
          UpdatedAt = "string",
          AdministratorId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_members(
      DetectorId = "string",
      MaxResults = 123,
      NextToken = "string",
      OnlyAssociated = "string"
    )
