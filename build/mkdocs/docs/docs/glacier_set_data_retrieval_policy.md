<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_set_data_retrieval_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation sets and then enacts a data retrieval policy in the region specified in the PUT request

### Description

This operation sets and then enacts a data retrieval policy in the
region specified in the PUT request. You can set one policy per region
for an AWS account. The policy is enacted within a few minutes of a
successful PUT operation.

The set policy operation does not affect retrieval jobs that were in
progress before the policy was enacted. For more information about data
retrieval policies, see [Amazon Glacier Data Retrieval
Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).

### Usage

    glacier_set_data_retrieval_policy(accountId, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_set_data_retrieval_policy_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account
ID. This value must match the AWS account ID associated with the
credentials used to sign the request. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you specify your account ID, do
not include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code
id="glacier_set_data_retrieval_policy_:_Policy">Policy</code></td>
<td><p>The data retrieval policy in JSON format.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_data_retrieval_policy(
      accountId = "string",
      Policy = list(
        Rules = list(
          list(
            Strategy = "string",
            BytesPerHour = 123
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The example sets and then enacts a data retrieval policy.
    svc$set_data_retrieval_policy(
      Policy = list(
        Rules = list(
          list(
            BytesPerHour = 10737418240,
            Strategy = "BytesPerHour"
          )
        )
      ),
      accountId = "-"
    )

    ## End(Not run)
