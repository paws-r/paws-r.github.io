<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_send_quota</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the sending limits for the Amazon SES account

### Description

Provides the sending limits for the Amazon SES account.

You can execute this operation no more than once per second.

### Usage

    ses_get_send_quota()

### Value

A list with the following syntax:

    list(
      Max24HourSend = 123.0,
      MaxSendRate = 123.0,
      SentLast24Hours = 123.0
    )

### Examples

    ## Not run: 
    # The following example returns the Amazon SES sending limits for an AWS
    # account:
    svc$get_send_quota()

    ## End(Not run)
