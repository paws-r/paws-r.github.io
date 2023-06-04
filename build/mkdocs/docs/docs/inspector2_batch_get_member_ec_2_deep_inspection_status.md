<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_batch_get_member_ec_2_deep_inspection_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves Amazon Inspector deep inspection activation status of multiple member accounts within your organization

### Description

Retrieves Amazon Inspector deep inspection activation status of multiple
member accounts within your organization. You must be the delegated
administrator of an organization in Amazon Inspector to use this API.

### Usage

    inspector2_batch_get_member_ec_2_deep_inspection_status(accountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_batch_get_member_ec_2_deep_inspection_status_:_accountIds">accountIds</code></td>
<td><p>The unique identifiers for the Amazon Web Services accounts to
retrieve Amazon Inspector deep inspection activation status for.</p>
<div class="sourceCode">
<pre><code> &lt;/p&gt;</code></pre>
</div></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accountIds = list(
        list(
          accountId = "string",
          errorMessage = "string",
          status = "ACTIVATED"|"DEACTIVATED"|"PENDING"|"FAILED"
        )
      ),
      failedAccountIds = list(
        list(
          accountId = "string",
          ec2ScanStatus = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"SUSPENDING"|"SUSPENDED",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_member_ec_2_deep_inspection_status(
      accountIds = list(
        "string"
      )
    )
