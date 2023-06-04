<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_get_account_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details about your account's limits and usage in an Amazon Web Services Region

### Description

Retrieves details about your account's
[limits](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html)
and usage in an Amazon Web Services Region.

### Usage

    lambda_get_account_settings()

### Value

A list with the following syntax:

    list(
      AccountLimit = list(
        TotalCodeSize = 123,
        CodeSizeUnzipped = 123,
        CodeSizeZipped = 123,
        ConcurrentExecutions = 123,
        UnreservedConcurrentExecutions = 123
      ),
      AccountUsage = list(
        TotalCodeSize = 123,
        FunctionCount = 123
      )
    )

### Request syntax

    svc$get_account_settings()
