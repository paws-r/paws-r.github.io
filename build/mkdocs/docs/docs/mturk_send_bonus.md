<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_send_bonus</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The SendBonus operation issues a payment of money from your account to a Worker

### Description

The `send_bonus` operation issues a payment of money from your account
to a Worker. This payment happens separately from the reward you pay to
the Worker when you approve the Worker's assignment. The SendBonus
operation requires the Worker's ID and the assignment ID as parameters
to initiate payment of the bonus. You must include a message that
explains the reason for the bonus payment, as the Worker may not be
expecting the payment. Amazon Mechanical Turk collects a fee for bonus
payments, similar to the HIT listing fee. This operation fails if your
account does not have enough funds to pay for both the bonus and the
fees.

### Usage

    mturk_send_bonus(WorkerId, BonusAmount, AssignmentId, Reason,
      UniqueRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_send_bonus_:_WorkerId">WorkerId</code></td>
<td><p>[required] The ID of the Worker being paid the bonus.</p></td>
</tr>
<tr class="even">
<td><code id="mturk_send_bonus_:_BonusAmount">BonusAmount</code></td>
<td><p>[required] The Bonus amount is a US Dollar amount specified using
a string (for example, "5" represents $5.00 USD and "101.42" represents
$101.42 USD). Do not include currency symbols or currency
codes.</p></td>
</tr>
<tr class="odd">
<td><code id="mturk_send_bonus_:_AssignmentId">AssignmentId</code></td>
<td><p>[required] The ID of the assignment for which this bonus is
paid.</p></td>
</tr>
<tr class="even">
<td><code id="mturk_send_bonus_:_Reason">Reason</code></td>
<td><p>[required] A message that explains the reason for the bonus
payment. The Worker receiving the bonus can see this message.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_send_bonus_:_UniqueRequestToken">UniqueRequestToken</code></td>
<td><p>A unique identifier for this request, which allows you to retry
the call on error without granting multiple bonuses. This is useful in
cases such as network timeouts where it is unclear whether or not the
call succeeded on the server. If the bonus already exists in the system
from a previous call using the same UniqueRequestToken, subsequent calls
will return an error with a message containing the request ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$send_bonus(
      WorkerId = "string",
      BonusAmount = "string",
      AssignmentId = "string",
      Reason = "string",
      UniqueRequestToken = "string"
    )
