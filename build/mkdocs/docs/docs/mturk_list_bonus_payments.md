<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_bonus_payments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListBonusPayments operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment

### Description

The `list_bonus_payments` operation retrieves the amounts of bonuses you
have paid to Workers for a given HIT or assignment.

### Usage

    mturk_list_bonus_payments(HITId, AssignmentId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_list_bonus_payments_:_HITId">HITId</code></td>
<td><p>The ID of the HIT associated with the bonus payments to retrieve.
If not specified, all bonus payments for all assignments for the given
HIT are returned. Either the HITId parameter or the AssignmentId
parameter must be specified</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_bonus_payments_:_AssignmentId">AssignmentId</code></td>
<td><p>The ID of the assignment associated with the bonus payments to
retrieve. If specified, only bonus payments for the given assignment are
returned. Either the HITId parameter or the AssignmentId parameter must
be specified</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_bonus_payments_:_NextToken">NextToken</code></td>
<td><p>Pagination token</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_bonus_payments_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NumResults = 123,
      NextToken = "string",
      BonusPayments = list(
        list(
          WorkerId = "string",
          BonusAmount = "string",
          AssignmentId = "string",
          Reason = "string",
          GrantTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_bonus_payments(
      HITId = "string",
      AssignmentId = "string",
      NextToken = "string",
      MaxResults = 123
    )
