<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_get_data_retrieval_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns the current data retrieval policy for the account and region specified in the GET request

### Description

This operation returns the current data retrieval policy for the account
and region specified in the GET request. For more information about data
retrieval policies, see [Amazon Glacier Data Retrieval
Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).

### Usage

    glacier_get_data_retrieval_policy(accountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glacier_get_data_retrieval_policy_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account
ID. This value must match the AWS account ID associated with the
credentials used to sign the request. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you specify your account ID, do
not include any hyphens ('-') in the ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = list(
        Rules = list(
          list(
            Strategy = "string",
            BytesPerHour = 123
          )
        )
      )
    )

### Request syntax

    svc$get_data_retrieval_policy(
      accountId = "string"
    )

### Examples

    ## Not run: 
    # The example returns the current data retrieval policy for the account.
    svc$get_data_retrieval_policy(
      accountId = "-"
    )

    ## End(Not run)
