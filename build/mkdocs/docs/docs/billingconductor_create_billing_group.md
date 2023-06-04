<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_create_billing_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a billing group that resembles a consolidated billing family that Amazon Web Services charges, based off of the predefined pricing plan computation

### Description

Creates a billing group that resembles a consolidated billing family
that Amazon Web Services charges, based off of the predefined pricing
plan computation.

### Usage

    billingconductor_create_billing_group(ClientToken, Name,
      AccountGrouping, ComputationPreference, PrimaryAccountId, Description,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_create_billing_group_:_ClientToken">ClientToken</code></td>
<td><p>The token that is needed to support idempotency. Idempotency
isn't currently supported, but will be implemented in a future
update.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_billing_group_:_Name">Name</code></td>
<td><p>[required] The billing group name. The names must be
unique.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_billing_group_:_AccountGrouping">AccountGrouping</code></td>
<td><p>[required] The set of accounts that will be under the billing
group. The set of accounts resemble the linked accounts in a
consolidated family.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_billing_group_:_ComputationPreference">ComputationPreference</code></td>
<td><p>[required] The preferences and settings that will be used to
compute the Amazon Web Services charges for a billing group.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_billing_group_:_PrimaryAccountId">PrimaryAccountId</code></td>
<td><p>The account ID that serves as the main account in a billing
group.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_billing_group_:_Description">Description</code></td>
<td><p>The description of the billing group.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_billing_group_:_Tags">Tags</code></td>
<td><p>A map that contains tag keys and tag values that are attached to
a billing group. This feature isn't available during the beta.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$create_billing_group(
      ClientToken = "string",
      Name = "string",
      AccountGrouping = list(
        LinkedAccountIds = list(
          "string"
        )
      ),
      ComputationPreference = list(
        PricingPlanArn = "string"
      ),
      PrimaryAccountId = "string",
      Description = "string",
      Tags = list(
        "string"
      )
    )
