<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_batch_get_free_trial_info</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets free trial status for multiple Amazon Web Services accounts

### Description

Gets free trial status for multiple Amazon Web Services accounts.

### Usage

    inspector2_batch_get_free_trial_info(accountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_batch_get_free_trial_info_:_accountIds">accountIds</code></td>
<td><p>[required] The account IDs to get free trial status for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accounts = list(
        list(
          accountId = "string",
          freeTrialInfo = list(
            list(
              end = as.POSIXct(
                "2015-01-01"
              ),
              start = as.POSIXct(
                "2015-01-01"
              ),
              status = "ACTIVE"|"INACTIVE",
              type = "EC2"|"ECR"|"LAMBDA"
            )
          )
        )
      ),
      failedAccounts = list(
        list(
          accountId = "string",
          code = "ACCESS_DENIED"|"INTERNAL_ERROR",
          message = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_free_trial_info(
      accountIds = list(
        "string"
      )
    )
